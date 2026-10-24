# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27b649ddef251ce03ab54ab568fb035cd8e60eb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27b649ddef251ce03ab54ab568fb035cd8e60eb`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeOfKerLeRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/declarations/fintypeofkerlerange--6689252ca598059e9eaf642d.md) | 31 | `declaration-track:6689252ca598059e9eaf642dd73ae6c078209d972bb075e67a85092cb72c94a9` |
| 2 | `def` | [fintypeOfKerEqRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/declarations/fintypeofkereqrange--e774d1ff9ab9c39927c4fcb4.md) | 39 | `declaration-track:e774d1ff9ab9c39927c4fcb403a04124807c9bc47f92b4c3aa88b36ea97a130b` |
| 3 | `def` | [fintypeOfKerOfCodom](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/declarations/fintypeofkerofcodom--938d5be7f7cbefa6fa0149be.md) | 44 | `declaration-track:938d5be7f7cbefa6fa0149befa4d8aed7ef76613c33f49d03c889e67f6f6d360` |
| 4 | `def` | [fintypeOfDomOfCoker](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/declarations/fintypeofdomofcoker--9d4361d4d8d8d3125e5a2b58.md) | 50 | `declaration-track:9d4361d4d8d8d3125e5a2b583e183494d0b286922d9896c053d30fb6b251807c` |
| 5 | `lemma` | [_root_.Finite.of_finite_quot_finite_subgroup](../../../../../mathematics/Algebra/GroupTheory/Finite/Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.lean/declarations/root-finite-of-finite-quot-finite-subgroup--beab6114d175c313699d98f1.md) | 54 | `result-track:beab6114d175c313699d98f1cea79008fa9c6dfd8bf4b004ccd7be0f804ca5d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
