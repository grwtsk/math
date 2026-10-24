# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineAnd.Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5250e2e2a0289c97882a8956b7d5606cce0aa99f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5250e2e2a0289c97882a8956b7d5606cce0aa99f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand--6d688f72856659932817b42d.md) | 45 | `declaration-track:6d688f72856659932817b42df722c98927f229e4a6b9702456e1d5f8e54b9d61` |
| 2 | `lemma` | [affineAnd_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand-apply--2ae2176783e0c998f9791c58.md) | 49 | `result-track:2ae2176783e0c998f9791c587359c34a0d76397e64e3658e0791506f1175a7f5` |
| 3 | `lemma` | [affineAnd_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand-respectsiso--080187a05a329557bd13f9dc.md) | 58 | `result-track:080187a05a329557bd13f9dc6ebe7c6f1a51c5a6518f73ccd3afeb476a2b36d8` |
| 4 | `lemma` | [affineAnd_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand-islocal--3ca025ec879238602b8da7c2.md) | 67 | `result-track:3ca025ec879238602b8da7c23f64bea8d6a4a0625de50a7f883fc1629a43b37d` |
| 5 | `lemma` | [affineAnd_isLocal_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand-islocal-of-propertyislocal--018aeaecf08b4b4d04135662.md) | 107 | `result-track:018aeaecf08b4b4d041356624844a370ce9ca9ae703ed293f4a5c3d75bbad4b0` |
| 6 | `lemma` | [affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/affineand-isstableunderbasechange--204d5c25c800d59e92d887ea.md) | 112 | `result-track:204d5c25c800d59e92d887eae2789acd8e61a1accb3226008ff6c978d2716e4d` |
| 7 | `lemma` | [targetAffineLocally_affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/targetaffinelocally-affineand-iff--102984f8f289cb04c9552692.md) | 120 | `result-track:102984f8f289cb04c9552692e98bfc2979b2f21a5e6cf09581cad1f3f3e557f1` |
| 8 | `lemma` | [targetAffineLocally_affineAnd_iff'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/targetaffinelocally-affineand-iff--98fc7400545fce82a2ff938a.md) | 137 | `result-track:98fc7400545fce82a2ff938a6f71642a80a0251eed80b92e0e0624bcf17e06d7` |
| 9 | `lemma` | [targetAffineLocally_affineAnd_iff_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/targetaffinelocally-affineand-iff-affinelocally--d57fe778e5b0cbab845b9b40.md) | 144 | `result-track:d57fe778e5b0cbab845b9b40a8fa2309ae7c590bd128c3de4ff01bd7fcac98c3` |
| 10 | `lemma` | [targetAffineLocally_affineAnd_eq_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/targetaffinelocally-affineand-eq-affinelocally--800d31131ec3ef9223e4d929.md) | 172 | `result-track:800d31131ec3ef9223e4d92933ae240841334aa3a0a16a353c8c6b8ec4175964` |
| 11 | `lemma` | [targetAffineLocally_affineAnd_le](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/targetaffinelocally-affineand-le--bb1bc8ec8ff8bed5191c337b.md) | 180 | `result-track:bb1bc8ec8ff8bed5191c337bdd61683caa5066963fc21eb214077a952200be32` |
| 12 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-isstableundercomposition--5b0018f22af55917b921d6f9.md) | 194 | `result-track:5b0018f22af55917b921d6f9e5b3fdfeb5658bc6b41a75e4913b5804482bf40a` |
| 13 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-isstableunderbasechange--e911c2c361f4c6cbedd759e3.md) | 213 | `result-track:e911c2c361f4c6cbedd759e3b8f2c508a44839924f4f3255f535d937ff08207f` |
| 14 | `lemma` | [HasAffineProperty.affineAnd_containsIdentities](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-containsidentities--c892062a1ffa45921127375b.md) | 222 | `result-track:c892062a1ffa45921127375be5d45be1998f686f25ab78f0fe9c43dc023dd367` |
| 15 | `lemma` | [HasAffineProperty.affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-iff--4b46b04e3c1c0785aaa6fb40.md) | 233 | `result-track:4b46b04e3c1c0785aaa6fb40e011329329a5e28fd364c2f13469e8b4568a1083` |
| 16 | `lemma` | [HasAffineProperty.affineAnd_le_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-le-isaffinehom--3e6801da3345f625f23e4d24.md) | 247 | `result-track:3e6801da3345f625f23e4d24acd45610271806a73830178fd6dad2a4cb8f26c5` |
| 17 | `lemma` | [HasAffineProperty.affineAnd_eq_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-eq-of-propertyislocal--a9ba6b39f63d13962724369f.md) | 258 | `result-track:a9ba6b39f63d13962724369fc76377f488d6900e1d0b6294cb5889451dac924e` |
| 18 | `lemma` | [HasAffineProperty.affineAnd_le_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/declarations/hasaffineproperty-affineand-le-affineand--c14204fa9a4f35d0a009fee4.md) | 268 | `result-track:c14204fa9a4f35d0a009fee466a587f00e4773bd08809068f3874c7da061acb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
