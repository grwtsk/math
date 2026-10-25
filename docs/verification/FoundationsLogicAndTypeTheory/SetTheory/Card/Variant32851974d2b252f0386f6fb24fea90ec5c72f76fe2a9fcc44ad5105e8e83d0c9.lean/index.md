# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d4fa315bc4c5c8deeb1ed5ec101ed8d148eee9b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d4fa315bc4c5c8deeb1ed5ec101ed8d148eee9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkMulLe.Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.Cardinal.mk_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-rootcardinalmkmulle--b008ea06fc9b240a3b4bf252.md) | 33 | `result-track:b008ea06fc9b240a3b4bf25253d3cbceddb14c57a0a8abe5aba4bb6c785a2170` |
| 2 | `lemma` | [natCard_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/natcard-mul-le--cdbbfe2f33c4cc81b42e677f.md) | 39 | `result-track:cdbbfe2f33c4cc81b42e677f78014a8ec41179d3b96366b9e5976a3244105efe` |
| 3 | `lemma` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkMulLe.Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.Cardinal.mk_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-rootcardinalmkmulle--0b4682354696ebe64665f7ea.md) | 52 | `result-track:0b4682354696ebe64665f7ea5b0aa6867a65ce626a5e73681085c1e1d46659a1` |
| 4 | `lemma` | [natCard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/natcard-inv--534f109c1084f4d032d190fc.md) | 56 | `result-track:534f109c1084f4d032d190fcfde355b167dbd30634863f85185dab9793a41a4a` |
| 5 | `lemma` | [encard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/encard-inv--4ae3f00b1a9920696c5c1ecd.md) | 60 | `result-track:4ae3f00b1a9920696c5c1ecd6f1c70ddf4589b58e142a9aaabaf4072f15e0399` |
| 6 | `lemma` | [ncard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/ncard-inv--3c9ce5ccbcbbd41215600e76.md) | 64 | `result-track:3c9ce5ccbcbbd41215600e7605560783145904dee3356e2b5ca0b7bb951ab7d9` |
| 7 | `lemma` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkMulLe.Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.Cardinal.mk_div_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-rootcardinalmkmulle--19ca95950f5d89651f894379.md) | 72 | `result-track:19ca95950f5d89651f89437991198d4decb25cba0d18784f7ee6cb52497b4bbe` |
| 8 | `lemma` | [natCard_div_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/natcard-div-le--2d9c3785d434df49769a34b2.md) | 81 | `result-track:2d9c3785d434df49769a34b2e4bb3d09ffcd915a2a3212862a4e7f5ba005ba62` |
| 9 | `lemma` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkMulLe.Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.Cardinal.mk_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-rootcardinalmkmulle--d15b4f1683b72ae470ab3ea5.md) | 87 | `result-track:d15b4f1683b72ae470ab3ea58d16561fc2e1b728639ec2573c6757b607141078` |
| 10 | `lemma` | [natCard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/natcard-smul-set--ae51cb5bb01324f2d2b8754d.md) | 91 | `result-track:ae51cb5bb01324f2d2b8754dd0ed90a5bcf0cd6363910618cd71a810e0a0b008` |
| 11 | `lemma` | [encard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/encard-smul-set--afe65952227a44690bf41ede.md) | 95 | `result-track:afe65952227a44690bf41ede769512dc748871d0b3d522445bd832a109a14649` |
| 12 | `lemma` | [ncard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant32851974d2b252f0386f6fb24fea90ec5c72f76fe2a9fcc44ad5105e8e83d0c9.lean/declarations/ncard-smul-set--7c86f6827cbce5ab9725b800.md) | 99 | `result-track:7c86f6827cbce5ab9725b800cd966cc2f78b7bc9b93f190e66a58f97db5b602e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
