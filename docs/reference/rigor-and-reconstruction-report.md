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

The observed checkout is local `main` at
`e4f1e4d63ea8532f1e0e58abc34fbbdc45a5a9b5`, not the instruction's inspected
commit `0029a80f5a86418cb62c658f3bbdaa3aad6c6285`. At observation time,
`origin/main` resolved to `17a7dd72d926abb0ea0925a355894bd25e219893`, and
Git reported local `main` behind it by 60 commits. The newer actual checkout was
not reset to the inspected commit. The working tree contains intentional
concurrent, staged, modified, renamed and untracked work; it was preserved in
place, with no new branch or worktree, no reset or cleanup, and no push or
remote-setting change. This report binds exact files where evidence is
available; any later byte change requires a new observation rather than
reinterpretation of this report.

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
| `docs/math-layout.json` | `aea887d2247e0f60a90cc8cb93c104bdf819655c68382cca9f68b3244678c048` |
| `docs/reference/math-source-catalog.json` | `ad6cc594f994884663e33406733adc9c5d5f92731e6f614131417eb5865981a1` |
| `GRWTSK.lean` | `4c0c7141aba7a199d35404ac9e1d33e79a0ae7ad55a560e07080483178a1a798` |
| `scripts/check_math_layout.py` | `c47ba4e547ea032236d1fc195418ed856970d6bd8458fe4fe5be203240c9a432` |
| `scripts/check_math_trust.py` | `042839d31b7eb0c5bd1b5b316596ecd4012f8a0005cca956eb8946672eedf008` |
| `scripts/check_ordered_product_gauge.py` | `f1351cdd9a617ce835c119437fff1218b1834ca2fd8fea1fc7339d06e1b21979` |
| `scripts/update_math_source_inventory.py` | `9b0688943db792f6bf402914380fcf980375b69fb7226291cf2cdcfdfd6e08bc` |
| `GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean` | `2ef82eba00df6982ba9f693896d77eff68d9cf39e9def13a29cc9c2eb4e26c74` |
| `evidence/lean-consolidation-rigor-2026-10-14.json` | `96a91a248f47b762fab5dae84f8741e3cda8b455538b224f6cc2238f453d90cc` |

The current layout and source catalog contain a per-source SHA-256 for every
one of the 475 active Lean sources. The full replay receipt identified below
independently freezes the 292-source public library replay set plus its
configuration and checker inputs. `evidence/source-manifest.json` remains a
selective older family manifest; its current SHA-256 is
`8028a72c2e44a30bdfda57fd6e2cde94421e25ac6ac3f05ce607dc4c6a602257`,
but it is not the current all-source authority.

The current [source-bound migration record](../../evidence/lean-consolidation-rigor-2026-10-14.json)
binds the canonical path/hash digests for all 475 active sources and the 292
library sources. Before the inventory updater applies its replay status, it
rechecks the cited raw receipt hash, exact source inventory and bytes, all 292
successful module outcomes, the failed audit outcome, the audit-log hash and
the exact 18 findings. The raw receipt remains ignored local execution
evidence; the durable record copies its bounded outcome without claiming a
passing audit.

## Mathematical organization and source roles

The current authoritative Lean inventory contains 475 active sources:

| Source role | Count |
|---|---:|
| Library, including the root entry point | 292 |
| Positive check | 57 |
| Negative control | 93 |
| Audit driver | 33 |

The subject counts are Algebra 11, Analysis 193, Combinatorics 8, Data 1,
DynamicalSystems 12, GroupTheory 4, LinearAlgebra 49, Logic 42, MeasureTheory
5, NumberTheory 121, Order 3 and Spectral 25, plus the single root library
entry point. The current old-to-new map records 292 `keep` relationships and
183 `move` relationships, with no split, merge or retirement. `keep` is a path
relationship, not a claim that every such source existed at the inspected
historical commit.

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

The 183 organizational moves were intended to preserve library statements,
hypotheses, proof bodies, public names, notation, attributes and instances.
The earlier consolidation also records import-syntax repairs in 19 validation
sources; those sources do not define public library declarations. No split,
merge or declaration retirement is recorded.

Relative to the retained 472-source/289-library migration snapshot, the current
public source set adds three generic Logic modules:

- `GRWTSK.Logic.Inference.RuleSoundness`
- `GRWTSK.Logic.Certificates.ArtifactDerivation`
- `GRWTSK.Logic.ProofChecking.RepositoryConformance`

These additions introduce public formal interfaces and theorems; they are not
described as byte-preserving relocations. The maintained headings in
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

After this report was registered, the observer captured every then-missing
literal basis object and rendered an exact 3,971-artifact catalog. The fresh
prior-snapshot observation is
`evidence/repository-conformance-20261014T022832Z-d5418b43c675.json`, SHA-256
`5fb7f1de5cc714a8fafa086be92ce6aedb25e0d4d076720d0b3661068cc868a2`.
It reports no missing content basis and byte-freshness acceptance for all three
registered generated views, while establishing none of the four cumulative
profiles. Final integration recatalogs that receipt and this report as new
immutable/literal inputs; the receipt remains explicitly scoped to the
immediately prior snapshot and never inventories its own bytes.

## Formal correctness evidence and gaps

The pinned foundation is Lean 4.33.0, compiler commit
`d8b18978322de05a8f3dba51ef03cf5461676c17`, and Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. Existing pinned dependency
objects were reused and kernel checked. Mathlib and the other pinned
dependencies were **not** rebuilt from source, and the replay does not prove
that cached object bytes were produced from their pinned source trees.

The current full replay receipt is
`.local/math-trust/20261014T015019Z-61a88691fc/failure.json`, with SHA-256
`1c2f3d5ac77b21d5709218d7c2426d26b4b7cee3c45394522cd52735659e8821`.
At an 8192 MiB Lean limit it records 293 commands: all 292 public library
sources passed fresh trust-zero elaboration with fatal warnings, including
`GRWTSK.lean` as the final library member, and the subsequent
`AllProjectAudit` command failed. Thus the denominator is 291 subject modules
plus the root entry point, not “292 plus the umbrella.” The audit enumerated
7,409 owned declarations across 292 modules before rejecting these 18
compiler-generated declarations, each reported by Lean as partial rather than
unsafe:

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
not rewritten to satisfy the checker, and the failure is retained. The current
native self-test receipt is
`.local/math-trust/20261014T015003Z-2df4345cb5/receipt.json`, with SHA-256
`09b16c2462dafe8d069ff4f43ff82abded2538d15dd7d3ebeea0ab0ca88a44d0`;
its nine fixture commands passed, but that fixture result is not a project
theorem verdict.

The exact default command `python3 -B scripts/check_math_trust.py` was also
run. Its 4,096 MiB limit stopped after 175 successful source results when
`GRWTSK.NumberTheory.Moebius.LogarithmicResponse` exited with Lean's
`memory_exception` in the interpreter. The failure receipt is
`.local/math-trust/20261014T022855Z-aa15101451/failure.json`, SHA-256
`ee11469fb8d3dce60dc59598ba97f5f3a7bd59d33301ce1de775ca99ef589188`.
This operational resource failure is neither a mathematical rejection nor a
completed replay and does not replace the completed 8,192 MiB result.

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
| Organized | **False / not established** | The 475-source layout and current documentation gates pass, but current source-bound role and coverage observations are not wired to the profile admission predicate. |
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
| `python3 -B scripts/check_math_layout.py` | Passed: 292 library modules, 0 findings. The retained log is `.local/math-trust/20261014T015019Z-61a88691fc/math-layout.log`, SHA-256 `1a0dea5ff15108001c9e40825e6bfc1f8951848dd9a7f6498b0a0167a0f67fe1`. |
| `lake build GRWTSK` | Passed, 8,998 jobs. No separate durable build receipt is claimed here. |
| `python3 -B scripts/check_math_trust.py --self-test` | Passed 25 Python hostile/boundary fixtures. |
| `python3 -B scripts/check_math_trust.py --lean-self-test` | Passed nine native fixture commands; receipt identified above. |
| `python3 -B scripts/check_math_trust.py` | Failed operationally after 175 successful source results at `GRWTSK.NumberTheory.Moebius.LogarithmicResponse`: the 4,096 MiB interpreter limit was exceeded. This is not an acceptance result. |
| `python3 -B scripts/check_math_trust.py --memory-mib 8192` | Failed overall after 292 successful library elaborations because `AllProjectAudit` rejected the 18 declarations listed above; failure receipt identified above. |
| `python3 -B scripts/check_ordered_product_gauge.py` | Passed the audit and positive contract; all three hostile controls were rejected for their intended missing-closed-path, shifted-endpoint and stronger-group diagnostics. The runner now binds current subject-local sources and roles through `docs/math-layout.json`, not the retained stale 591-file family manifest. |
| `python3 -B scripts/check_inputs.py` | Passed eight intended-reason controls: source drift, toolchain drift, lockfile drift and a symlink source, each in normal and optimized Python. Receipt: `.local/input-controls/20261014T022148Z-efec511003e9/receipt.json`. |
| `python3 -B scripts/check_repository_conformance.py --self-test` and optimized equivalent | Passed the hostile/boundary controls. |
| `python3 -B scripts/check_repository_conformance.py --capture-basis --render` | Completed; 3,971 artifacts excluding catalog self, zero missing content-basis blockers, and all three generated views byte-fresh under the explicitly limited in-process scope. |

The required documentation commands were rerun after this report and its
navigation entries were added. All five passed against 51 registered pages;
the main checker also passed its 11 hostile controls and the layout checker its
five hostile controls, in both normal and optimized Python modes:

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
rewritten to cover the three later Logic modules, and its old successful,
failed and stale outcomes remain historical evidence. The current 475/292
observations supplement that ledger; they do not make the old receipt current.

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
