# Rigor and reconstruction status

This is a current working-tree report, not a completion certificate. It keeps
two guarantees separate:

1. **Reconstruction:** an artifact can be recovered exactly from declared,
   available inputs under a declared environment and rule set.
2. **Formal correctness:** a claimed formal conclusion has a checked derivation
   from its exact premises under the stated trust policy.

Neither guarantee establishes the other. Exact restoration does not prove a
theorem, and successful Lean elaboration does not reconstruct every repository
artifact. All four cumulative conformance profiles remain **not established**
for the snapshot described here.

## Snapshot and policy identities

The source inventory, full library replay and current conformance observation
are anchored at local `main` commit
`854e04dc182c36b00479b642e6301f47acc81e5f`. That commit descends through:

- `80a2a617dc458cb5f320dbbb423022116b1b8343`, the normal merge of local work
  with upstream `37d612b93d0680bebf3d3513e32a7352cbdcc056`;
- `20c9033283edf5b9f6824396b47e468a5ae1d311`, which bound the reconciled
  source inventory and Finite Euler checks; and
- `854e04dc182c36b00479b642e6301f47acc81e5f`, which closed candidate-source
  omissions in hostile replay fixtures without admitting those candidates.

This lineage is newer than the instruction's inspected commit
`0029a80f5a86418cb62c658f3bbdaa3aad6c6285` and was not reset. Concurrent work
was preserved on `main`; no migration branch or worktree, destructive cleanup,
reset or force operation was used. The inventories name `854e04d` because they
were generated before this report update and before any later publication
commit. They do not claim to hash a future commit containing themselves.

The upstream merge has no unresolved conflict. The selective
`evidence/source-manifest.json` retained the exact local-parent bytes from
`88e95e6` (SHA-256
`2c6ab93c6075b54422945d34d695d9f9044b90c6700f9dacd1ace40cfa186250`).
The competing upstream parent bytes were not silently discarded: Git blob
`f4fd5eefa69d38abda52116b32582d453b190061`, SHA-256
`b4cb81f456040cbe89db53572ae7d712e71cfa4b0df1ad253bbf42b0529d35e1`,
are recorded as historical, non-current evidence in the merge-reconciliation
record. The v3 mathematical layout and merged documentation remain the current
authorities.

The governing policy version is `rigor-and-reconstruction-addendum-1.0.0`.
Its retained instruction inputs are:

| Policy input | SHA-256 |
|---|---|
| `evidence/policy-inputs/GRWTSK_Lean_Migration_With_Rigor_Addendum.md` | `783251016b84155f64ed8dc0c0a17efad8c27cfd8566591348144293b47071a0` |
| `evidence/policy-inputs/GRWTSK_Rigor_and_Reconstruction_Addendum.md` | `866e5a1c8e97cade8647a4147ff885d47c0ccc55328f2ac68cc0a73ff46367a4` |

The [rule registry](rules/registry.json) treats those documents as policy
inputs, not as evidence that their requested implementation, the cited BB5
development or any mathematical conclusion has been verified locally.

Current source, policy and evidence bindings relevant to this report are:

| Artifact | SHA-256 |
|---|---|
| `docs/math-layout.json` | `c54843d92414c327db98c7baad0d0161065a9bfb710cbebc36127968592a1c8a` |
| `docs/reference/math-source-catalog.json` | `b647c7f27b7453736ad0c6edf675f73ac8306e0abeb6b1756588a93d8d65cc11` |
| `docs/reference/reconstruction-recipes.json` | `ef51184d4e7da906dc4cd2ccdb33460652ad5a952f161edabe561829e3be7740` |
| `docs/reference/rules/registry.json` | `1980ac3b76ba8088a04647fb4bfaf0a102611eee9c4a1542d36af36a3b841295` |
| `docs/reference/rules/registry-schema.json` | `8f5db8490fde780c2621e75a7320df0ee1a786b2a9447f2ead83e105db8ff314` |
| `GRWTSK.lean` | `68e16b00f3026df81c5ee4d7ee9cce256db09082ff0e9913f3f7342078e0dde8` |
| `scripts/check_math_layout.py` | `c85828291fb711063f4de33af982c395c69bd10ff50a001bee4bfbde04d500fb` |
| `scripts/check_math_trust.py` | `069ca265038960243890b1c4e028637723ddc440854864a61648eb2b2fd99c9d` |
| `scripts/update_math_source_inventory.py` | `4c6ec80128c8991a95f4afa85a400aebebcda4673eaa13aeb64f81436c41c419` |
| `scripts/check_repository_conformance.py` | `c875e06f49b55c073436038ef74181ac72d1726c7570eb37bea64a76928ed923` |
| `scripts/check_inputs.py` | `2615c8e3dd5da97e2d3aa5958ad0db1afff29ea6953990a0e732fb0ad397ac26` |
| `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/Checks/OwnedDeclarationAudit.lean` | `2ef82eba00df6982ba9f693896d77eff68d9cf39e9def13a29cc9c2eb4e26c74` |
| `evidence/source-intake.json` | `975160460f769a46027efb78359df82b1f366e12b4c2346f070abfce8a667755` |
| `evidence/source-manifest.json` | `2c6ab93c6075b54422945d34d695d9f9044b90c6700f9dacd1ace40cfa186250` |
| `evidence/source-manifest-merge-reconciliation-2026-10-14.json` | `faebce690e9b5afe638eef1f10e5b745c17cae2c6bbe2fea855f28fedc633688` |
| `evidence/lean-consolidation-rigor-post-merge-2026-10-14.json` | `29d9f8fef273f7956d304b0442df75a1369909646bff781666478c4f3db2d549` |
| `evidence/repository-conformance-20261014T053244Z-60d5be5d21cc.json` | `8684f4f35f509061021a9499c8249ce7b1ee4721ba1b9cd3857235f71b9b5aa7` |
| `evidence/NumberTheory/Moebius/finite-euler-product-checks-current-2026-10-14.json` | `0c6067fd56aa7b23a0b5fa789bbc1a45f3575426b8596d14e40aa6e6d90f03ce` |

These hashes bind the stated observations. A later byte change requires a new
observation; updating a path or digest cannot turn an old run into a current
proof.

## Mathematical organization and source roles

Git-visible discovery found **605 present Lean files**. The
authoritative classification separates them as follows:

| Population / source role | Count |
|---|---:|
| Active library, including root `GRWTSK.lean` | 334 |
| Active positive check | 78 |
| Active negative control | 95 |
| Active audit driver | 35 |
| **All active sources** | **542** |
| Retained `CANDIDATE_SOURCE_ONLY` evidence | 63 |
| **All present Lean files** | **605** |

The 542 active-source subject totals are Algebra 11, Analysis 195,
Combinatorics 8, Data 1, DynamicalSystems 16, GroupTheory 4, Library 1,
LinearAlgebra 49, Logic 42, MeasureTheory 5, NumberTheory 182, Order 3 and
Spectral 25. The 63 candidates are separately classified as Algebra 1,
Analysis 39, LinearAlgebra 3, MeasureTheory 1 and NumberTheory 19.

The current byte-map digests are:

| Source set | Count | Canonical SHA-256 |
|---|---:|---|
| Active sources | 542 | `b9be2fd7841e0b949fbf68115b0ef345bdda1df7174f3fbc51bacf0fbf4d0ab6` |
| Active library replay set | 334 | `51b36f8a821a4d2d5807b4db75daff6855dc3938acb7ed22fc0263398dcd87b0` |
| `CANDIDATE_SOURCE_ONLY` evidence | 63 | `bbd63c68bfab5d1e9362bf19ee3b4bc5ddac4a533236ed2764e6072e6379ad59` |

Candidate files have exact intake paths, byte hashes and subject projections,
but they are not assigned an active source role. They are excluded from
`GRWTSK.lean`, the public-library closure and the trust replay. No candidate
was Lean-verified, mathematically admitted or made release-eligible by this
migration. Candidate byte accountability therefore must not be reported as
formal correctness.

For the 542 active entries, the current per-source operation view records 336
`keep` and 206 `move` operations. The exact role/operation matrix is 334
library keeps, two positive-check keeps, 76 positive-check moves, 95
negative-control moves and 35 audit-driver moves. Separately, the append-only
historical migration ledger contains 342 relationships: 336 moves, two
declaration-boundary splits, four declaration-free umbrella retirements and
zero merges. The current and historical ledgers cover different relations and
must not be added together.

No destination, module-identity, case-folding or Unicode-normalization
collision is recorded. At inventory time there was no tracked deletion,
conflict, unsafe filesystem entry or submodule. The only active Lean file
outside `GRWTSK/` is the conventional public entry point `GRWTSK.lean`.
Historical evidence, dependency sources, `.lake/`, `.olean` files and ignored
execution products are not promoted into the active mathematical source set.

## Proof and API change statement

The 206 active moves are role-preserving validation-source relocations; all
334 active library sources have operation `keep`. Their relocation records do
not authorize theorem changes. The historical ledger preserves declaration
correspondence for the earlier library moves and splits and records no merge.

Relative to the retained 289-library historical migration snapshot, admitted
library growth was explicit rather than mislabeled as relocation: three
general Logic modules were added; a later integration added 39 library modules;
commit `a13f942bbecf1a47ba2c289a6aee579998b9463f` added
`ExponentialVolterraL2` and conditional `LogarithmicMertensBoundary`; and the
upstream lineage ending at `37d612b` added
`GRWTSK.NumberTheory.Moebius.FiniteEulerProduct`. Those additions account for
the present 334-module library set.

The Finite Euler module has four public theorems and six complete owned
declarations. Its source, positive check and two negative controls are bound by
the durable selected receipt above. The receipt records trust-zero,
fatal-warning replay of the library source and positive check, and rejection of
`MissingDebt` and `OpenCutoff` for their intended statement defects. A later
current-HEAD local observation at `854e04d` reproduced those two positive and
two intended-negative outcomes. This selected-family evidence is not a full
repository audit, dependency-source rebuild or independent human proof review.

The 63 candidates add no admitted API. They contain explicit conditional and
open mathematical interfaces; their intake status does not discharge those
premises. In particular, neither the candidates, the conditional Mertens work,
nor the Finite Euler result establishes the Riemann hypothesis or another
unstated unconditional conclusion.

No independent elaborated trusted-statement comparison has been run. The
migration therefore does not claim a complete API-equivalence proof beyond the
source/declaration correspondence, fresh elaborations and scoped checks that
are actually recorded.

## Reconstruction evidence and gaps

The repository now has a Git-visible artifact catalog, reconstruction recipes,
a versioned rule registry, a content-addressed byte basis and exact source
intake records. These are reconstruction components, not proof evidence.
The recipes bind the 2,770-object historical archive closure and disclose the
Vaughan Type-II tools whose fresh destinations remain caller-selectable. Their
runtime and subprocess read sets are not fully traced, so those registrations
do not establish repository-wide deterministic regeneration.

The current conformance receipt records a completed observation at `854e04d`
over **4,212 artifacts excluding the catalog itself**. Its SHA-256 is
`8684f4f35f509061021a9499c8249ce7b1ee4721ba1b9cd3857235f71b9b5aa7`.
At that observation, all three declared generated views matched their expected
bytes:

- `docs/reference/math-source-catalog.json` —
  `b647c7f27b7453736ad0c6edf675f73ac8306e0abeb6b1756588a93d8d65cc11`;
- `docs/reference/repository-artifact-catalog.json` —
  `969876a82effde31f6167c1207319dccf17d213102ea9626822aec33ee141537`;
- `docs/reference/results.md` —
  `25496ebc439c86245fcfbe8043da175781c70c5b096bbaa088103e4af1df498e`.

Each `ACCEPT` is limited to in-process byte freshness. It does not establish
that a declared command ran under an independently enforced environment,
sandbox and complete read set. The receipt was written only after closing its
observation, so it intentionally does not inventory or hash its own bytes; this
report edit is later still. The catalog is therefore a bounded observation,
not a self-authenticating post-commit reconstruction certificate.

Subsequent non-receipted final captures, after integrating that receipt and
this report, expanded and refreshed the catalog beyond the receipt's 4,212-path
scope as the new receipt, report and content-addressed basis objects entered
discovery. No receipt-of-receipt was created; the committed catalog remains an
explicit pre-commit observation rather than a claim to describe its own commit.

The input-control run produced a 698-file fixture from 542 active sources, 63
candidate sources and the reconciled retained-manifest inputs after
deduplication. Receipt
`.local/input-controls/20261014T051031Z-a8fde17667d0/receipt.json`, SHA-256
`40ea097c4304865602147e05d5b73cc9bc1432aad12045feeb27ecbd52dc7658`,
records all eight normal/optimized drift and symlink controls passing for their
intended reason. Its fixture digest is
`c19883b62a7b01a6eef410c9a39186e09eef05bfb6aa8bb5c577f0b8e8c4d0f1`.
This tests source/environment rejection behavior; it does not reconstruct the
whole repository.

Repository-wide **Reconstructible** status remains false because:

- the generator census and complete executed read-set census are incomplete;
- the two inventory views still lack genuinely independent discovery;
- there is no complete fresh-destination restorer for every cataloged path,
  file mode and metadata requirement;
- candidate generators, builds and checkers have not been exercised under a
  repository-wide least-privilege sandbox contract; and
- concrete filesystem, JSON, process and Python adapters are not proved to
  refine the generic Lean reconstruction model.

An immutable historical restore and a successful current regeneration remain
distinct. Historical receipts and the retained CausalRealization archive keep
their original source identities and outcomes; none is relabeled as a fresh
observation.

## Formal correctness evidence and gaps

The pinned foundation is Lean 4.33.0, compiler commit
`d8b18978322de05a8f3dba51ef03cf5461676c17`, and Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. Existing pinned dependency
objects were reused and kernel checked. Dependency sources were **not** rebuilt,
so this is not a full dependency-source reconstruction or proof that cached
objects were produced from the pinned source trees.

The final full replay command was:

```text
python3 -B scripts/check_math_trust.py --memory-mib 8192
```

Its raw receipt is
`.local/math-trust/20261014T051042Z-549da78cbe/failure.json`, SHA-256
`369e82cf300826167c51bfa03def6f9596e2c87e83fb3e455e44fe07390c227a`.
All **334** admitted library sources passed fresh `--trust=0` elaboration with
fatal warnings. The subsequent owned-declaration audit enumerated **8,978**
owned declarations, then failed on the following exact 18 compiler-generated
declarations, each reported as partial rather than unsafe:

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

The audit log is
`.local/math-trust/20261014T051042Z-549da78cbe/AllProjectAudit.log`, SHA-256
`9bba47b137964e5357d28344a003ba89a93e3a144b8dcfce380699af50d89206`.
The durable bounded record is
[`lean-consolidation-rigor-post-merge-2026-10-14.json`](../../evidence/lean-consolidation-rigor-post-merge-2026-10-14.json),
SHA-256
`29d9f8fef273f7956d304b0442df75a1369909646bff781666478c4f3db2d549`.
It explicitly records source replay success followed by audit failure; it does
not convert that sequence into overall acceptance.

The audit policy was not weakened, the generated-runtime exception was not
broadened, and public definitions were not rewritten to silence the findings.
The latest native audit self-test separately passed nine fixture commands; its
receipt is `.local/math-trust/20261014T053317Z-de7cb18dd4/receipt.json`,
SHA-256
`d8c6a72210b0aff80b4b017537094c5e4f903f8e2f33f98f25c1a3a5d196bad2`.
That fixture result is not a project theorem verdict.

Repository-wide **Formally checked** status remains false even apart from the
18 audit findings. The 63 candidates were not elaborated by the library replay.
A complete semantic occurrence map is unavailable for resolved constants and
binders, universes, implicit arguments, instance and coercion selection,
notation and macro expansion, relevant options and generated origins. There is
no independent trusted-statement comparator, and the generic Lean rule and
reconstruction theorems do not prove the concrete Python, JSON, filesystem or
process adapters sound.

No external independent proof checker was run. No cold dependency-source
reconstruction or independently repeated whole-repository reconstruction was
performed. **Independently validated** status is therefore also false.

## Cumulative profile status

The current conformance receipt records these exact status boundaries:

| Profile | Current status | Receipt-bound blockers |
|---|---|---|
| Organized | **False / not established** | No independently admitted observations for `COVERAGE.001`, `DOCUMENTATION.001`, `LAYOUT.001` or `ROLE.001`. |
| Reconstructible | **False / not established** | Organized blockers; incomplete generation census; and `BYTES.001`, `FRESHNESS.001`, `GENERATION.001` and `ORIGIN.001` are not receipt-bound. |
| Formally checked | **False / not established** | Reconstructible blockers; `BINDING.001`, `CONTRACT.001`, `CONTROL.001`, `DOCUMENTATION.001`, `GROUNDING.001`, `PROOF.001`, `RELEASE.001` and `RULE.001` are not receipt-bound; the owned-declaration audit also failed. |
| Independently validated | **False / not established** | Formally checked blockers; `INDEPENDENCE.001` is not receipt-bound; no independent proof checker or repeated cold reconstruction exists. |

The four structural checks can pass operationally while the registry still
lacks independently admitted observations for its gates. That distinction is
intentional. `UNKNOWN`, `NOT_RUN`, `BUSY`, `TIMEOUT`, `ERROR` and
`INTERRUPTED` cannot satisfy a mandatory acceptance gate.

## Commands and outcomes

| Command or suite | Current result |
|---|---|
| `python3 -B scripts/check_math_layout.py --self-test` | Passed 47 hostile/boundary fixtures. |
| `python3 -B scripts/check_math_layout.py` | Passed: 334 library modules, 0 findings. Replay-retained log SHA-256: `1b5f11fa99f9ed7af5f237eefc82bae40d3bb843ea9b24607af97d641d3c25b7`. |
| `lake build GRWTSK` | Passed, 9,040 jobs. This is build evidence, not the owned-declaration audit. |
| `python3 -B scripts/check_math_trust.py --self-test` | Passed 27 Python hostile/boundary fixtures. |
| `python3 -B scripts/check_math_trust.py --lean-self-test` | Passed nine native fixture commands; receipt and hash identified above. |
| `python3 -B scripts/check_math_trust.py` | Reached 178 successful source results, then stopped at `GRWTSK.NumberTheory.Moebius.LogarithmicResponse` when Lean exited `-6` with `lean::memory_exception` at the 4,096 MiB interpreter limit. Receipt `.local/math-trust/20261014T053342Z-174ace47cf/failure.json`, SHA-256 `66a732c929a71080d168fc1b07fc588ce278878a5927bf416068b14e99a985ee`. This is an operational resource failure, not a mathematical rejection or completed replay. |
| `python3 -B scripts/check_math_trust.py --memory-mib 8192` | Overall failed after all 334 source elaborations passed because the audit rejected the 18 exact partial declarations listed above. |
| Finite Euler selected runner | Passed the source and positive contract and rejected both hostile controls for their intended missing-debt and open-cutoff reasons. Durable receipt SHA-256: `0c6067fd56aa7b23a0b5fa789bbc1a45f3575426b8596d14e40aa6e6d90f03ce`. |
| `python3 -B scripts/check_ordered_product_gauge.py` | Passed the audit and positive contract; all three hostile controls were rejected for their intended missing-closed-path, shifted-endpoint and stronger-group diagnostics. |
| `python3 -B scripts/check_inputs.py` | Passed eight normal/optimized controls over a 698-file fixture; receipt SHA-256: `40ea097c4304865602147e05d5b73cc9bc1432aad12045feeb27ecbd52dc7658`. |
| Repository conformance self-tests | Normal and optimized hostile/boundary self-tests passed. The source-bound receipt still establishes no profile. |
| `python3 -B scripts/check_repository_conformance.py --write-receipt` | Completed a 4,212-artifact observation; all generated views were byte-fresh, all cumulative profiles remained false, and the receipt hash is `8684f4f35f509061021a9499c8249ce7b1ee4721ba1b9cd3857235f71b9b5aa7`. |

The required documentation suite also passed in normal and optimized Python
modes:

```text
python3 -B scripts/check_documentation.py --render
python3 -B scripts/check_documentation.py
python3 -O -B scripts/check_documentation.py
python3 -B scripts/test_documentation_layout.py
python3 -O -B scripts/test_documentation_layout.py
```

The rendered inventory has 100 maintained pages and 608 dispositions. The main
checker passed five hostile record controls, and the independent layout suite
passed 82 tests in each Python mode. Its 604 Lean module paths comprise the 604
files below `GRWTSK/`; the separate root entry point brings repository-wide
present Lean discovery to 605. Documentation checks establish structural
consistency only, not theorem admission.

Earlier scoped density-arithmetic, Vaughan Type-II, Volterra and Mertens
receipts remain evidence only for their bound families and bytes. They are not
substitutes for the current 334-source replay or a repository-wide profile.

## Historical evidence and final disposition

The retained consolidation ledger
[`lean-consolidation-2026-10-14.json`](../../evidence/lean-consolidation-2026-10-14.json),
SHA-256
`ccbdb7362a8832d4bc8feb21558218eee03d590855a3acec64e93f529ab0a393`,
still describes its exact historical 472-source/289-library snapshot. The
retained rigor record
`evidence/lean-consolidation-rigor-2026-10-14.json`, SHA-256
`96a91a248f47b762fab5dae84f8741e3cda8b455538b224f6cc2238f453d90cc`,
binds a later 475/292 snapshot. The pre-Volterra and pre-intake records bind
their own 534/331 and 538/333 snapshots. None was rewritten or rehashed to look
current, and their successful, failed or interrupted outcomes remain attached
to their original bytes and environments.

The current state establishes structural containment, subject/role
classification, exact active/candidate byte inventories and a fresh successful
elaboration of every admitted library source. It does **not** establish any
cumulative profile: candidate mathematical admission remains pending, the
owned-declaration audit fails on 18 generated partial declarations,
repository-wide reconstruction is incomplete, dependency sources were not
rebuilt, trusted-statement comparison is absent, and no independent proof
checker was run.

Accordingly, this report does not say “all migrated,” “all reconstructible,”
“all formally checked” or “independently validated.” It reports separately
where sources are classified, which source set each file participates in, what
bytes can be accounted for, and which current formal checks actually ran.
