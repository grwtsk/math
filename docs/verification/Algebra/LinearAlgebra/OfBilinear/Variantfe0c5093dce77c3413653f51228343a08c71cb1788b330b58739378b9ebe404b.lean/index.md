# Verification target: GRWTSK.Algebra.LinearAlgebra.OfBilinear.Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsReflective](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/isreflective--e50a4f049ede4c9fbb60ca43.md) | 36 | `declaration-track:e50a4f049ede4c9fbb60ca43572dda7da73b752e1efc61b5445b74933e6be2d8` |
| 2 | `lemma` | [of_dvd_two](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/of-dvd-two--6e913631dc3168263e7079d7.md) | 44 | `result-track:6e913631dc3168263e7079d7e6f69117d286fb3c45df06c86d459bc237527a9e` |
| 3 | `def` | [coroot](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/coroot--210889c8796d55a35b75a631.md) | 52 | `declaration-track:210889c8796d55a35b75a63190a15dcd64ecd5bf3657784ef51deef4b4d5ecab` |
| 4 | `lemma` | [apply_self_mul_coroot_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/apply-self-mul-coroot-apply--8c4314c09f99147001674f5a.md) | 66 | `result-track:8c4314c09f99147001674f5af7300bc60aa9ee0741982042b1c78159634118eb` |
| 5 | `lemma` | [smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/smul-coroot--0b2652556bcd7553eb71d3ab.md) | 70 | `result-track:0b2652556bcd7553eb71d3ab85fa1b5f5fa26a38e3c4573b5d68bac03c12a174` |
| 6 | `lemma` | [coroot_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/coroot-apply-self--8bc1f1ac9c59d5ba70b9d9e9.md) | 75 | `result-track:8bc1f1ac9c59d5ba70b9d9e9113a169f069b3021080e90f0be6b643ff61cf95f` |
| 7 | `lemma` | [isOrthogonal_reflection](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/isorthogonal-reflection--559f0347580caf6fef444d0d.md) | 78 | `result-track:559f0347580caf6fef444d0d1231e422f980dec8f79f4570367fd900d017f787` |
| 8 | `lemma` | [reflective_reflection](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/reflective-reflection--b2ea47b136f7c2e65ed68a05.md) | 89 | `result-track:b2ea47b136f7c2e65ed68a0574db87ac0016afa4cb94947227b234088b0f0c25` |
| 9 | `def` | [ofBilinear](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/declarations/ofbilinear--68b8383656c6595bcbadb713.md) | 112 | `declaration-track:68b8383656c6595bcbadb71356089dee8802df132c64d9c0e0e54ac6651b08cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
