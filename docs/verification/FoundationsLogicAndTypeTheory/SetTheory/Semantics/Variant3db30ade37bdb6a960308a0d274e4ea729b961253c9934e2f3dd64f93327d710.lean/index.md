# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Semantics.Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59d74a499cac7e36a8cbd5e59b297229126971f4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59d74a499cac7e36a8cbd5e59b297229126971f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Exponential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Veblen` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Syntax` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LimitSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/limitsemantics--36347d59931de2252370a328.md) | 16 | `declaration-track:36347d59931de2252370a328a22df5c9f26f65abe69d1b18dccd6b880b2a5a7e` |
| 2 | `def` | [evalExecutable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/evalexecutable--98f63489485b7872ccf1b5d6.md) | 19 | `declaration-track:98f63489485b7872ccf1b5d6022776ab868f489d7cf2220c11b7689a792cb880` |
| 3 | `def` | [evalRaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/evalraw--74211ebc310d84985c1c1259.md) | 27 | `declaration-track:74211ebc310d84985c1c1259fe6ec3f87a8dd76676ec4367f48ccb7d79993888` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval--0e2cdea489429edab691cc39.md) | 37 | `declaration-track:0e2cdea489429edab691cc39d6ae760c6ba3aa0d1f038b0dbd27a2106cd21b4d` |
| 5 | `def` | [leadingScale](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/leadingscale--dcaaa2452c4d9de99e02d002.md) | 42 | `declaration-track:dcaaa2452c4d9de99e02d002cfbf1e744c4dd67fda747b9a6f444048792304f0` |
| 6 | `def` | [RemainderBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/remainderbelow--3668e2eaeb117ef259aba866.md) | 47 | `declaration-track:3668e2eaeb117ef259aba866c736bef262fb9de9e02a0fcd295b42cab837c0e6` |
| 7 | `def` | [ExecutableRemainderBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/executableremainderbelow--73debe29cf5b236425879c1f.md) | 53 | `declaration-track:73debe29cf5b236425879c1f085a2bcd191bfcdc6cbe669709f2274aea1b1f66` |
| 8 | `def` | [SemanticallyEqual](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/semanticallyequal--6d2a62a19de7a04bc7ab1f98.md) | 59 | `declaration-track:6d2a62a19de7a04bc7ab1f983c1a7a4a1dc4cbd9ca61042219b2f91107439298` |
| 9 | `structure` | [ExecutableOrdinalDomainCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/executableordinaldomaincertificate--a72f9fedea9a4d97e19c6846.md) | 64 | `declaration-track:a72f9fedea9a4d97e19c68466a81c2461b797fce3418fdf813d8878bad3ada2a` |
| 10 | `theorem` | [eval_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-zero--98f88b03bac581e39bac9e6f.md) | 70 | `result-track:98f88b03bac581e39bac9e6f2cf08ab42510b9df4be5b39427814dd8937610bf` |
| 11 | `theorem` | [eval_tall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-tall--894d9118bd8a5a4e6d1c43e4.md) | 75 | `result-track:894d9118bd8a5a4e6d1c43e413a980ccf9d394f1bd895c147ff5db898898a1a7` |
| 12 | `theorem` | [eval_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-succ--4974428050a3152bce7f1492.md) | 81 | `result-track:4974428050a3152bce7f1492a9ec48435720515b9f49ecce1f219a3eba5811df` |
| 13 | `theorem` | [eval_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-block--916905753eb26a6785303484.md) | 88 | `result-track:916905753eb26a6785303484b783b249394e300771abe50cd6c527d665fcbffb` |
| 14 | `theorem` | [evalExecutable_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/evalexecutable-zero--c3fcd0ec9704f76aad2aa650.md) | 99 | `result-track:c3fcd0ec9704f76aad2aa65059e7882c273f8cea5f045eec6d025bfce533af01` |
| 15 | `theorem` | [evalExecutable_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/evalexecutable-block--a5102ff80bdd3330de9f4c29.md) | 103 | `result-track:a5102ff80bdd3330de9f4c29822c5bb486a686923bc40a5be7ecbd6c3529f2b6` |
| 16 | `theorem` | [eval_reify](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-reify--0884d21df42756aa74c59c03.md) | 114 | `result-track:0884d21df42756aa74c59c033d8895d7929d265550bfdfd0eed6cc0bb6ea5b85` |
| 17 | `theorem` | [eval_appendTall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710.lean/declarations/eval-appendtall--4fec143b1295ded16416d14a.md) | 126 | `result-track:4fec143b1295ded16416d14ac219974059d215d483ea893e685be5bb02b7d5ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
