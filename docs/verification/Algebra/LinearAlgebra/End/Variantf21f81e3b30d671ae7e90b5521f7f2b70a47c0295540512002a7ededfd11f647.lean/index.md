# Verification target: GRWTSK.Algebra.LinearAlgebra.End.Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5da3786ad0a398b04416906143c24581d4d66f95",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5da3786ad0a398b04416906143c24581d4d66f95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddMonoid.End.natCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/addmonoid-end-natcast-def--0ee6034dcaf64078d12ef495.md) | 36 | `result-track:0ee6034dcaf64078d12ef495732845f6cb91e453fc71b722ea1a27ed6541094d` |
| 2 | `def` | [Module.toAddMonoidEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/module-toaddmonoidend--1657227db9d116f9babdc5de.md) | 46 | `declaration-track:1657227db9d116f9babdc5deff682d131ef62eabb2f2d8fc3db751341f31c846` |
| 3 | `def` | [smulAddHom](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/smuladdhom--f3a23397622672f0042b0f0d.md) | 54 | `declaration-track:f3a23397622672f0042b0f0d7efd99c660b578e2ae6f76cedca30898996e3b9b` |
| 4 | `theorem` | [smulAddHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/smuladdhom-apply--51375ce5b2e977ba5de42646.md) | 60 | `result-track:51375ce5b2e977ba5de42646842f4dda979203c88640ad7edefaaec10cc1563a` |
| 5 | `lemma` | [IsAddUnit.smul_left](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/isaddunit-smul-left--06bf12490fe411f365f727c4.md) | 65 | `result-track:06bf12490fe411f365f727c42c267adde30c91944c896526f125ba5c961f1468` |
| 6 | `lemma` | [IsAddUnit.smul_right](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/isaddunit-smul-right--7cb59dc16b6c170ae7abbed1.md) | 71 | `result-track:7cb59dc16b6c170ae7abbed1e24d74e56d330596bcab1f1d9c312ece8c452ff4` |
| 7 | `theorem` | [AddMonoid.End.intCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/addmonoid-end-intcast-def--be1bc71cac7e79f8319e7d03.md) | 80 | `result-track:be1bc71cac7e79f8319e7d03427e1e1a405d7c34d5ab9fe6aebaabd70234b0f6` |
| 8 | `lemma` | [Int.cast_smul_eq_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/int-cast-smul-eq-zsmul--714f75b663cc3ea513cfdcd6.md) | 96 | `result-track:714f75b663cc3ea513cfdcd652538a611297337508b8979b70202891c9cf8916` |
| 9 | `theorem` | [int_smul_eq_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/int-smul-eq-zsmul--65e8814a36d3cf86a275618d.md) | 106 | `result-track:65e8814a36d3cf86a275618dc16018afb9413f240ac05a041e9282f61a0f40ca` |
| 10 | `def` | [AddCommGroup.uniqueIntModule](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/addcommgroup-uniqueintmodule--b86d2e7afda4858597aca45a.md) | 111 | `declaration-track:b86d2e7afda4858597aca45a0c89d43392c799fc9ee0784f11a2f7358c5e9c09` |
| 11 | `theorem` | [map_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/map-intcast-smul--cdf9444f60baf718e1dde35b.md) | 117 | `result-track:cdf9444f60baf718e1dde35b425ae04be31509954177977284a524464d38ef7f` |
| 12 | `instance` | [AddCommGroup.intIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantf21f81e3b30d671ae7e90b5521f7f2b70a47c0295540512002a7ededfd11f647.lean/declarations/addcommgroup-intisscalartower--34c9c6c5c30959d0b4ad2c94.md) | 122 | `declaration-track:34c9c6c5c30959d0b4ad2c94b76e3223963ed7087860178e47890c542b55fc2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
