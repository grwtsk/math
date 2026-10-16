# Source verification

These interfaces and inherited check descriptions are reference material. Commands below are reproducible entry points, not a claim that this documentation migration ran them. Historical module counts and receipts retain their recorded source scope.

Run a local inventory with Python's standard library:

```sh
python3 .noeaaeue/scripts/monitor_math.py snapshot
python3 .noeaaeue/scripts/monitor_math.py self-check
```

The snapshot inventories every Git tracked path and every untracked, nonignored
path. It records source byte hashes, file modes, missing paths, symlinks, branch,
HEAD, and structured Git status. Remote identities omit credentials and private
local paths. It performs no remote network calls. It leaves the Git checkout,
index, manifests, evidence, and Lean outputs unchanged.

Receipts live in the already ignored `.noeaaeue/.local/math-monitor/` directory. Each run
has a unique `runs/<run-id>/snapshot.json`; `latest.json` is an atomically
published copy of the last completed snapshot. Self-check fixtures and their
receipts stay under the same ignored directory. The monitor refuses an output
location that Git does not ignore or that traverses a symlink.
Every receipt directory component, including `runs` and self-check directories,
is opened with no-follow directory descriptors. Receipt reads, temporary writes,
and atomic publication use those anchored descriptors. An existing symlink at
`latest.json` is rejected without reading or replacing its target.

The snapshot compares two byte observations and multiple Git observations. It
reports concurrent changes explicitly, including changes against its previous
receipt. Its dependency and evidence analysis refers to the first observation.
If drift is observed, that analysis cannot describe a coherent build input.
Changes that occur and are reverted between observations, or changes after the
last observation, are outside this guarantee.

The Lean inventory reports local imports, missing project imports, exact import
cycles, a dependency-first source order, and library modules outside the
`GRWTSK` umbrella's import closure. Control directories contain both positive
contracts and expected failures; their directory membership does not determine
the expected Lean result. Tokens such as `sorry`, `admit`, `axiom`, and `unsafe`
are review candidates, with control fixtures distinguished from library source.
Comments and ordinary string literals are masked. This static parser cannot
replace Lean's parser, elaborator, kernel, declaration checks, or axiom audit.

The evidence inventory checks recognized source and manifest digest bindings
against the observed bytes and dependency revisions against the lockfile. It
also reports missing evidence references and paths absent from the source
manifest. Matching hashes establish only static freshness of recognized fields;
they do not establish that an evidence record is complete, successful, authentic,
or sufficient to support a mathematical claim. Unrecognized records are reported
as unbound rather than accepted.
It also compares explicitly recorded expected and actual success, exit codes,
and error-fragment matches. An expected rejection can be a successful control;
contradictory recorded outcomes are flagged independently of digest freshness.
A recorded `passed: true` can describe a successful rejection control and does
not imply acceptance of that control's source. Missing or unrecognized outcome
data stays unrecognized; it is never promoted to a successful proof audit.
Each recognized check lists its recognized and missing fields. An expectation
pair alone is incomplete until an integer exit code is present; a requested
error fragment also requires a recorded match boolean. Completeness refers only
to those receipt fields, and does not establish completeness of a Lean audit.

Transfer nodes with `destination_module` and `destination_source_sha256` bind to
the observed Git-visible destination `.lean` bytes. Module conversion recognizes
the trust runner's conventional identifier subset: Unicode word segments with
a nondigit initial character and optional apostrophes, separated by dots.
Escaped or other unsupported Lean name forms are reported as unavailable to this
static parser; this is not a claim that Lean rejects them. Malformed names,
missing destinations, and invalid digests remain stale or unavailable. The
`source_inputs` digest map covers relative source paths, including root config
files. These bindings do not verify `original_module` metadata, original-source
comparison, source-to-object provenance, or native acceptance.

The CCC registry at `.noeaaeue/evidence/ccc-control-soundness-source-manifest.json` uses the
exact root schema `ccc-control-soundness-source-registry-v1`. That schema is
recognized; malformed content at the known registry path remains unavailable.
Its integer `source_inputs` declares the number of `sources` records rather than
a digest map. This count excludes the separate audit destination. The count
must be nonnegative, exclude booleans, and match the record count. Every
`destination` / `destination_sha256` pair and the separate `audit_destination` /
`audit_destination_sha256` pair binds to observed Git-visible bytes.
Missing or malformed records, invalid digests, unsafe or noncanonical paths,
duplicate source destinations, and an audit destination overlapping a source
make the registry stale or unavailable. Completeness covers these count and
path checks only; it does not verify the order list, axiom-report metadata,
original-source comparison, proof premises, source-to-object provenance, or
native acceptance. Matching hashes establish only static byte freshness.

The receipt contains follow-up commands for the existing checkers. Those
commands are suggestions and are never executed by this script. Existing
checkers may run Lean, build objects, and replace public evidence receipts, so
orchestration must respect their source gates, expected negative controls, output
locations, and concurrent edits. Review source changes before adjusting manifest
digests. Use the pinned Lean toolchain for actual validation.

Assess each checker's verification scope separately. A hash-only
`source-freeze.json` with checks before and after live compilation records
bytes observed at those checks; compiling retained frozen copies ties compiler
inputs to the captured bytes. A complete census needs an exact module owner set
and per-owner declaration totals; global or selected counts establish only the
reported census scope. Negative controls need intended error diagnostics without
mixed unrelated errors. Declared lockfile pins and observed dependency checkout
or object identities are separate evidence.

The Python fixture check is `python3 -B .noeaaeue/scripts/check_math_trust.py --self-test`.
Before relying on the new native audit, run
`python3 -B .noeaaeue/scripts/check_math_trust.py --lean-self-test`. This separate mode
compiles small frozen sources with the pinned Lean compiler and exercises public,
private, and generated declaration coverage. It checks strict `sorry` rejection,
then deliberately compiles a warning-disabled `sorry` object to exercise the
independent transitive `sorryAx` gate. Custom axioms and unsafe definitions must
fail for their intended audit diagnostics with a complete declaration census;
import, macro, and other infrastructure failures do not pass a negative control.
The fixture receipt does not certify any project theorem or rebuild Mathlib.

The full native trust audit is `python3 -B .noeaaeue/scripts/check_math_trust.py`. It
discovers all Git-visible `GRWTSK` modules, including those outside the umbrella,
freezes their source bytes, replays them in dependency order, and audits owned
declarations. The census reader requires every declaration to have a reported
module owner and reconciles each module's count with the complete declaration
total, including modules with no owned declarations. The census enumerates
serialized kernel declarations, including exported private declarations and
materialized generated families. The census does not enumerate IR-only helpers
or force creation of lazy equation theorems. The positive fixture retains two
equation theorems through named theorem proofs and checks their serialized
records plus the generated matcher. A `#check` alone uses a temporary
environment and does not retain realized equation declarations. The fixture
also checks that the configured owner source hash reaches the audit. Both native modes retain
unique outputs under `.noeaaeue/.local/math-trust/`
and share a project lock and active-verifier guard. The guard includes project
Python `verify_*.py` drivers, so those drivers remain busy between Lean children.
A busy result defers work until existing conflicting verification finishes; it
starts no Lean job and provides no successful verification. Python fixtures and
an inventory snapshot do not turn queued native validation into proof acceptance.
Project source pins and imported dependency artifact hashes are separate receipt
fields. Hashing imported artifacts after the audit does not establish that those
artifacts were built from the pinned dependency sources or freeze their identity
at earlier import times. The project replay does not rebuild Mathlib from source.
