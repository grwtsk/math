# Rigor and reconstruction status

This is a current working-tree report, not a completion certificate. It keeps
two guarantees separate:

1. **Reconstruction:** an artifact can be recovered exactly from declared,
   available inputs under a declared environment and rule set.
2. **Formal correctness:** a claimed formal conclusion has a checked derivation
   from its exact premises under the stated trust policy.

Neither guarantee establishes the other. Exact restoration does not prove a
theorem, and successful Lean elaboration does not reconstruct every repository
artifact. The cumulative conformance profiles are therefore all **not
established** for this snapshot.

## Snapshot and policy identities

The reconciled checkout is local `main`. The tracked Lean inventory was
committed at `9367026ca66eb720af9cc76a25a0ac19aba46a7b`; three later commits,
through `ddc6c1f58c3f7a6635922584d2ff6f5a6f8028d8`, added a source-bound finite
Vaughan Type-II computation, documentation and evidence but no Lean source.
Commit `a13f942bbecf1a47ba2c289a6aee579998b9463f` then added two library modules
and two positive checks. This is newer than the instruction's inspected commit
`0029a80f5a86418cb62c658f3bbdaa3aad6c6285` and was not reset. Concurrent work
was preserved in place on `main`; no branch or worktree was created for this
migration, and no reset, destructive cleanup or force operation was used. The
exact remote identity and final publication commit are reported only after the
mandatory final fetch and normal push. This report binds exact files where
evidence is available; a later byte change requires a new observation rather
than reinterpretation of this report.

The governing policy version is `rigor-and-reconstruction-addendum-1.0.0`.
Its retained instruction inputs are:

| Policy input | SHA-256 |
|---|---|
| `evidence/policy-inputs/GRWTSK_Lean_Migration_With_Rigor_Addendum.md` | `783251016b84155f64ed8dc0c0a17efad8c27cfd8566591348144293b47071a0` |
| `evidence/policy-inputs/GRWTSK_Rigor_and_Reconstruction_Addendum.md` | `866e5a1c8e97cade8647a4147ff885d47c0ccc55328f2ac68cc0a73ff46367a4` |

The [rule registry](rules/registry.json) treats these documents as policy
inputs, not as evidence that their requested implementation or any external
formalization has been verified locally.

Current source and checker bindings relevant to this report are:

| Artifact | SHA-256 |
|---|---|
| `docs/math-layout.json` | `998bf4c11f67f7373152a68f17bc500c6a089b2144a2c4d0bd5be78fcf38651a` |
| `docs/reference/math-source-catalog.json` | `d5939a9451e70bb11dbee8680be2a395d45dec641a5e0b67e7dbddd49a3ee5f1` |
| `docs/reference/reconstruction-recipes.json` | `59368da1de06eb6314a23d64f6635b83fc0f9d5382b39d365082e08ea892f627` |
| `GRWTSK.lean` | `3e8fe36000518fe166af8ef419854593f4887060a0fe2b314424b2c4323b7d4e` |
| `scripts/check_math_layout.py` | `c47ba4e547ea032236d1fc195418ed856970d6bd8458fe4fe5be203240c9a432` |
| `scripts/check_math_trust.py` | `042839d31b7eb0c5bd1b5b316596ecd4012f8a0005cca956eb8946672eedf008` |
| `scripts/check_ordered_product_gauge.py` | `f1351cdd9a617ce835c119437fff1218b1834ca2fd8fea1fc7339d06e1b21979` |
| `scripts/update_math_source_inventory.py` | `d16b51ebae1c78ae93585be64aaca99c2ffdef2bcb49df9c0801d098c2df47ab` |
| `scripts/check_density_arithmetic.py` | `588292f1c78594bf9bd74d5578340d16b75a1ac244c4dce1c197fdb9ffcf4552` |
| `scripts/check_inputs.py` | `cdecff5bc14d784177ac05a544005d90c4936ffd7266e9325349f460d57f0a48` |
| `GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean` | `2ef82eba00df6982ba9f693896d77eff68d9cf39e9def13a29cc9c2eb4e26c74` |
| `evidence/lean-consolidation-rigor-2026-10-14.json` | `96a91a248f47b762fab5dae84f8741e3cda8b455538b224f6cc2238f453d90cc` |
| `evidence/lean-consolidation-rigor-pre-volterra-2026-10-14.json` | `6124e721f7377e4b9aeaf24939b88fb73768957bcb9351259807c763ced5b340` |
| `evidence/lean-consolidation-rigor-pre-intake-2026-10-14.json` | `5b0437dbcceca9d69474003098fc230dfb96490506a4a0173bf06467d138b964` |

The current layout and source catalog contain a per-source SHA-256 for every
one of the 538 active Lean sources. The current bounded replay record identified
below freezes the 333-source public library replay set plus its configuration
and checker inputs. `evidence/source-manifest.json` remains a
selective older family manifest; its current SHA-256 is
`2c6ab93c6075b54422945d34d695d9f9044b90c6700f9dacd1ace40cfa186250`,
but it is not the current all-source authority.

The retained
[`lean-consolidation-rigor-2026-10-14.json`](../../evidence/lean-consolidation-rigor-2026-10-14.json)
record is explicitly historical and pre-merge: it binds 475 active sources and
292 library sources and must not be read as current. The pre-Volterra record
binds the later 534/331 snapshot and is also historical. The pre-intake record
below was created only after a fresh run proved all 333 source results before
the owned-declaration audit failed for its recorded reason. Raw `.local` receipts
remain ignored execution evidence; a durable record copies only their bounded
outcome and never converts a failed audit into acceptance.

## Mathematical organization and source roles

The current authoritative Lean inventory contains 538 active sources:

| Source role | Count |
|---|---:|
| Library, including the root entry point | 333 |
| Positive check | 77 |
| Negative control | 93 |
| Audit driver | 35 |

The subject counts are Algebra 11, Analysis 195, Combinatorics 8, Data 1,
DynamicalSystems 16, GroupTheory 4, Library 1, LinearAlgebra 49, Logic 42,
MeasureTheory 5, NumberTheory 178, Order 3 and Spectral 25. The canonical
active-source digest is
`ab6d86d2559c16d1de8e875ffc8d0c7960bf7e862bd0f336bada1782eecb6ea8`;
the 333-source library digest is
`bea715342bcbf5860000d55f912efc6dd922a48c446eae24849cb7bc7f07263a`.

Of the current active sources, 335 have operation `keep` and 203 have operation
`move`. Separately, the append-only historical migration ledger records 333
moves, two declaration-boundary splits, four declaration-free umbrella
retirements and no merges. These ledgers cover different populations and must
not be added together. `keep` is a path relationship, not a claim that every
such source existed at the inspected historical commit.

No destination, case-folding or Unicode-normalization collision is recorded.
The current inventories report no tracked deletion, conflict, unsafe entry or
submodule. The only active Lean source outside `GRWTSK/` is the conventional
root entry point `GRWTSK.lean`.

Historical evidence is not active library source. In particular, the retained
`evidence/Analysis/InnerProductSpace/CausalRealization/2026-10-11/` archive has
an exact data-restoration contract but no new Lean acceptance, while ignored
`.local/` receipts and migration archives remain local evidence unless their
bytes and identities are explicitly retained by a public record. Dependency
sources, `.lake/`, `.olean` and other generated build products are not promoted
into the mathematical library.

## Proof and API change statement

The 203 current organizational moves are validation-source relocations that
preserve fixture content, source roles and intended outcomes; all 333 current
library entries have operation `keep`. The historical migration ledger records
the library relocations for which statements, hypotheses, proof bodies, public
names, notation, attributes and instances were preserved. The earlier
consolidation also records import-syntax repairs in 19 validation sources;
those sources do not define public library declarations. Two
FinitePhraseProcess validation probes were later rebound to the current
declaration names without changing any library declaration or proof. The
historical ledger separately records two declaration-boundary splits and four
declaration-free umbrella retirements, and records no merge.

Relative to the retained 472-source/289-library migration snapshot, the current
public source set adds three generic Logic modules:

- `GRWTSK.Logic.Inference.RuleSoundness`
- `GRWTSK.Logic.Certificates.ArtifactDerivation`
- `GRWTSK.Logic.ProofChecking.RepositoryConformance`

The subsequent merge adds 39 more library modules: one FinitePhraseProcess
module, 19 ArithmeticFunctions modules, two LSeries modules and 17 Möbius
modules. It also adds 20 validation sources, comprising 18 positive checks and
two audit drivers. These additions introduce public formal interfaces and
theorems; they are not described as byte-preserving relocations. Commit
`a13f942bbecf1a47ba2c289a6aee579998b9463f` additionally introduces
`GRWTSK.Analysis.Integration.ExponentialVolterraL2` (four source declarations)
and `GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary` (twenty source
declarations), together with two positive checks. Their selected replay
receipts have SHA-256 values
`7aff421a2b2ec4e8cb26546a020995db0178180be69682346321ba8bce880257`
and `0e7a2b6ef68e954e37b4605ae0656f778668e4ec6dacea637412c771af72bf7c`.
The Mertens development remains conditional on its stated pointwise damped-source
envelope, real- and natural-cutoff power bounds and `MertensLogSquareBound`; it
does not establish an unconditional boundary theorem or the Riemann hypothesis.
`PrimeShellEnergyGrowth.lean` changed only by removal of trailing whitespace.
The maintained headings in
`FiniteRuleSystems.lean` and `FiniteRuleExamples.lean` were changed from
campaign language to mathematical-object language without changing their
declarations. No claim of complete API equivalence is made because an
independent elaborated trusted-statement comparison has not yet been run.

## Reconstruction evidence and gaps

The current repository has a Git-visible artifact catalog, reconstruction
recipes, a versioned rule registry and a content-addressed byte basis. The
[reconstruction reference](reconstruction.md) describes exact in-place byte
comparison and the separate historical CausalRealization restorer. These are
substantive reconstruction components, not mathematical proof evidence.
The inventory refresher now excludes all three registered generated views from
its consumer corpus, removing the previously documented layout/catalog input
cycle. Recipe validation pins the reviewed generator/command associations and
the 2,770-member historical archive-object closure; generated-view `ACCEPT`
still means in-process byte freshness, not traced execution of those commands.
The reconstruction registry now also discloses every writable Vaughan Type-II
CLI added concurrently. Its top-level reports are rerun observations rather
than tracked generated views: timings, absolute command paths and ambient PATH
probes make the wrapper report host-sensitive even though the normal and
optimized numeric payloads are byte-comparable. The registry accurately records
that those CLIs currently accept caller-selected output paths and that complete
runtime reads are not execution-traced.

Repository-wide **Reconstructible** status remains false because all of the
following are still open:

- the generator census and complete executed read-set census are incomplete;
- both inventory scans currently share one implementation, so independent
  discovery has not been established;
- there is no complete fresh-destination restorer that materializes and checks
  every cataloged path and mode;
- candidate generators, checkers and builds have not been executed under a
  repository-wide least-privilege sandbox contract;
- concrete filesystem, JSON, process and Python adapters are not proved to
  refine the generic Lean reconstruction model.

The retained conformance receipt
`evidence/repository-conformance-20261014T022832Z-d5418b43c675.json` covers
3,971 artifacts, and
`evidence/repository-conformance-20261014T025230Z-31c12537e8d6.json` covers
3,980 artifacts. Both are pre-merge observations of
`e4f1e4d63ea8532f1e0e58abc34fbbdc45a5a9b5` and are historical, not current.
A pre-final observation at
`ddc6c1f58c3f7a6635922584d2ff6f5a6f8028d8` discovered 4,095 artifacts
excluding catalog self and correctly rejected the old catalog as stale. The
final capture/render result and its pre-commit scope are recorded in the command
table after execution. The schema embeds HEAD and volatile Git state, including
the catalog's own tracked status, so no finite render/stage/commit sequence can
make a committed catalog describe the commit that contains itself. That
self-state limitation remains explicit rather than being mislabeled as a
post-commit freshness guarantee.

## Formal correctness evidence and gaps

The pinned foundation is Lean 4.33.0, compiler commit
`d8b18978322de05a8f3dba51ef03cf5461676c17`, and Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. Existing pinned dependency
objects were reused and kernel checked. Mathlib and the other pinned
dependencies were **not** rebuilt from source, and the replay does not prove
that cached object bytes were produced from their pinned source trees.

The current pre-intake full replay receipt is
`.local/math-trust/20261014T043008Z-2adb9059a1/failure.json`, with SHA-256
`0f81257e05881c6f4f22265406acdb234a9371cb311649cbe7edb2799498020c`.
At an 8192 MiB Lean limit it records 334 commands: all 333 public library
sources passed fresh trust-zero elaboration with fatal warnings, including
`GRWTSK.lean` as the final library member, and the subsequent
`AllProjectAudit` command failed. Thus the denominator is 332 subject modules
plus the root entry point, not “333 plus the umbrella.” The audit log is
`.local/math-trust/20261014T043008Z-2adb9059a1/AllProjectAudit.log`, SHA-256
`c08ae268cf5b1483638c3cb3219981933f8b5131159c05acbc24375938dd5712`.
It enumerated 8,972 owned declarations across 333 modules before rejecting
these 18 compiler-generated declarations, each reported by Lean as partial
rather than unsafe:

- `GRWTSK.Algebra.orderedProduct._unsafe_rec`
- `GRWTSK.Analysis.Waveform.workClock._unsafe_rec`
- `GRWTSK.Analysis.Waveform.Scheduling.count._unsafe_rec`
- `GRWTSK.Analysis.Waveform.Scheduling.clock._unsafe_rec`
- `GRWTSK.Analysis.Waveform.Scheduling.debt._unsafe_rec`
- `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec`
- `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec`
- `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec`
- `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock._unsafe_rec`
- `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec`
- `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec`
- `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost._unsafe_rec`
- `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun._unsafe_rec`
- `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._unsafe_rec`
- `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail._unsafe_rec`
- `PPNCP04.Cost.prefixSum._unsafe_rec`
- `ASBNP04.mass._unsafe_rec`
- `HSSCP04.SignedCharts.SignedBudgetDerivation.depth._unsafe_rec`

Lean 4.33 deliberately emits such `_unsafe_rec` runtime helpers for computable
recursive definitions. Isolated review found no supported suppression that
preserves the exact public definitions, kernel values and executable behavior:
making a definition noncomputable removes execution, while rewriting it through
an explicit recursor changes its kernel definition and generated declaration
family. The existing singleton runtime-helper exception does not match Lean
4.33's `partial=true, unsafe=false` metadata; changing or extending that
exception would alter the audit policy and would still leave the other 17
failures. The audit policy was therefore not weakened, public definitions were
not rewritten to satisfy the checker, and the failure is retained. The bounded
durable record is
[`lean-consolidation-rigor-pre-intake-2026-10-14.json`](../../evidence/lean-consolidation-rigor-pre-intake-2026-10-14.json);
it binds the current 538/333 source digests, all raw
source outcomes, receipt and log hashes and exact finding sequence. The current
native self-test receipt is
`.local/math-trust/20261014T042644Z-fdb9189086/receipt.json`, with SHA-256
`d0c58dcf6ca1596ec043df0f98383ea5d121caf00a2cc2088040cf95cc3472ab`;
its nine fixture commands passed, but that fixture result is not a project
theorem verdict.

The exact default command `python3 -B scripts/check_math_trust.py` was not rerun
to completion after the merge. Its retained pre-merge 4,096 MiB observation
stopped after 175 successful source results when
`GRWTSK.NumberTheory.Moebius.LogarithmicResponse` exited with Lean's
`memory_exception` in the interpreter. The historical failure receipt is
`.local/math-trust/20261014T022855Z-aa15101451/failure.json`, SHA-256
`ee11469fb8d3dce60dc59598ba97f5f3a7bd59d33301ce1de775ca99ef589188`.
This operational resource failure is neither a mathematical rejection nor a
current completed replay and does not replace the completed 8,192 MiB result.
An earlier attempted 8,192 MiB replay at this stage was also interrupted after
36 source results when concurrent work changed `HEAD`; its failure receipt is
`.local/math-trust/20261014T042653Z-98dee7ab64/failure.json`, SHA-256
`3fe176c0fa18c4a37475f7a5502a8bf4ded20903bd555bcae1a3cab785d4cae1`.
That operational drift detection is not an acceptance result.

Repository-wide **Formally checked** status remains false even apart from the
18 audit failures. A complete semantic occurrence map is not available for
resolved constants and binders, universes, implicit arguments, instance and
coercion selection, notation and macro expansion, relevant options and
generated origins. Trusted-statement comparison outside candidate influence is
also unimplemented. The generic Lean rule and reconstruction theorems do not
prove that the Python, JSON, filesystem or process adapters implement their
formal interfaces.

## Cumulative profile status

| Profile | Current status | Exact remaining boundary |
|---|---|---|
| Organized | **False / not established** | The 538-source layout and current documentation checks pass, but `COVERAGE.001`, `DOCUMENTATION.001`, `LAYOUT.001` and `ROLE.001` do not yet have current independently admitted observations. |
| Reconstructible | **False / not established** | Organized plus a complete generator/read-set census, genuinely independent discovery, a complete path/mode restorer and least-privilege sandbox evidence are missing. |
| Formally checked | **False / not established** | Reconstructible plus the semantic occurrence map and independent trusted-statement comparison are missing, and the owned-declaration audit rejects 18 Lean-generated partial runtime helpers. |
| Independently validated | **False / not established** | Formally checked plus an independent proof checker, independently repeated reconstruction and a cold pinned dependency-source reconstruction/rebuild have not been completed. |

`UNKNOWN`, `NOT_RUN`, `BUSY`, `TIMEOUT`, `ERROR` and `INTERRUPTED` do not
satisfy any mandatory acceptance gate.

## Commands and outcomes

The current command record is:

| Command | Current result |
|---|---|
| `python3 -B scripts/check_math_layout.py --self-test` | Passed the current structural hostile controls. |
| `python3 -B scripts/check_math_layout.py` | Passed: 333 library modules, 0 findings. The replay-retained log is `.local/math-trust/20261014T043008Z-2adb9059a1/math-layout.log`, SHA-256 `b394f81f26906147e34e901d4ba457a69aae2a9fb5e1719d1ad0d9ae7a94c6a0`. |
| `lake build GRWTSK` | Passed, 9,039 jobs. No separate durable build receipt is claimed here. |
| `python3 -B scripts/check_math_trust.py --self-test` | Passed 25 Python hostile/boundary fixtures. |
| `python3 -B scripts/check_math_trust.py --lean-self-test` | Passed nine native fixture commands; receipt identified above. |
| `python3 -B scripts/check_math_trust.py` | Not rerun to completion after the merge; the retained 4,096 MiB pre-merge resource failure is historical and is not an acceptance result. |
| `python3 -B scripts/check_math_trust.py --memory-mib 8192` | Failed overall after all 333 library elaborations passed because `AllProjectAudit` rejected the 18 declarations listed above; current pre-intake receipt identified above. |
| Seventeen relocated Möbius positive checks | Passed separately through the role-aware Lean validation runner. |
| FinitePhraseProcess Audit, Evidence and Positive/Types checks | Passed separately through their subject-local runner interfaces. |
| `python3 -B scripts/check_density_arithmetic.py` | Passed: 21 modules, 124 theorems, 21 definitions, 124 contracts and 183 body/axiom records. Receipt `.local/density-arithmetic-checks/20261014T031159297899Z/receipt.json`, SHA-256 `5979c1aa78fa3f4b8e977a34f64fcfc6e82d8d26782adbfa5da1db6ff3acec28`; independent human acceptance and full repository build are false. |
| Vaughan Type-II finite runners | Max-10 and max-12 sampled payloads matched their declared hashes; normal/optimized complete-packet reports were byte-identical at SHA-256 `2aeaf979b5ac4e3bcbfdc2c883ac520a97cd48cf9502317769f23d5c087b2ed2`. These were Python finite checks, not Lean or all-scale acceptance. |
| `python3 -B scripts/check_ordered_product_gauge.py` | Passed the audit and positive contract; all three hostile controls were rejected for their intended missing-closed-path, shifted-endpoint and stronger-group diagnostics. The runner now binds current subject-local sources and roles through `docs/math-layout.json`, not the retained stale 591-file family manifest. |
| `python3 -B scripts/check_inputs.py` | The last completed eight-control receipt predates the two new library modules and checks. The updated checker derives a 630-file fixture for this snapshot, but its new receipt is intentionally pending the final integrated snapshot rather than being mislabeled current here. |
| `python3 -B scripts/check_repository_conformance.py --self-test` and optimized equivalent | Passed the hostile/boundary controls. |
| `python3 -B scripts/check_repository_conformance.py --capture-basis --render` | The 3,971-artifact result is historical. Final capture/render is pending the integrated snapshot; no cumulative profile is inferred from an ordinary checker exit code. |

The required documentation commands were rerun after this report and its
navigation entries were added. All five passed against 86 registered pages;
the main checker also passed its five hostile record controls and the independent
layout suite its 61 tests, in both normal and optimized Python modes:

```text
python3 -B scripts/check_documentation.py --render
python3 -B scripts/check_documentation.py
python3 -O -B scripts/check_documentation.py
python3 -B scripts/test_documentation_layout.py
python3 -O -B scripts/test_documentation_layout.py
```

No dependency-source rebuild or external independent proof checker was run.

## Historical evidence and final disposition

The retained [2026-10-14 consolidation ledger](../../evidence/lean-consolidation-2026-10-14.json),
SHA-256 `ccbdb7362a8832d4bc8feb21558218eee03d590855a3acec64e93f529ab0a393`,
still describes its exact historical 472-source/289-library snapshot. It is not
rewritten to cover the three later Logic modules or the 39 library modules from
the subsequent merge, and its old successful, failed and stale outcomes remain
historical evidence. The current 538/333 observations supplement that ledger;
they do not make the old receipt current. The retained 475/292 rigor record and
its receipts are likewise pre-merge evidence rather than current acceptance.

This migration is **not complete**. Mathematical containment and structural
classification are current, and the public source set freshly elaborates, but
repository-wide reconstruction, the ownership/partiality audit, semantic and
trusted-statement comparison and independent validation remain blocked or
pending exactly as stated above.

During the preceding audit, two commands advertised as preflight or
validate-only nevertheless created ignored failure receipts:
`.local/ccc-control-soundness/public-ccc-check-20261014T010013Z/receipt.json`
and
`.local/checks/moebius-response-20261014T010118Z-bbe2b1b735cd/receipt.json`.
They changed no tracked or nonignored source and provide no acceptance result;
they are disclosed here as evidence that writer/read-set classification still
needs tightening.
