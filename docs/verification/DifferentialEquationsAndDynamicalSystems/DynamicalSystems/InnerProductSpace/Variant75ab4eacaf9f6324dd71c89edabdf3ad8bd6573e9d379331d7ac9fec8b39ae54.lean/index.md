# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.InnerProductSpace.Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66230d46bd9b33503d173121651457cd59c87137",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66230d46bd9b33503d173121651457cd59c87137`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/tomeasurableequiv--90429efcf8fd94bf36b7e8ca.md) | 40 | `declaration-track:90429efcf8fd94bf36b7e8ca6262cb6ec56aacadebcbd7706093fffd0800fd69` |
| 2 | `theorem` | [coe_toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/coe-tomeasurableequiv--f5800d7de3b60bb7297e4af3.md) | 47 | `result-track:f5800d7de3b60bb7297e4af3bbefae90873da8f0f821f4dce5fcaca2e0da5485` |
| 3 | `theorem` | [toMeasurableEquiv_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/tomeasurableequiv-symm--986801f4fe452b80a743e898.md) | 51 | `result-track:986801f4fe452b80a743e898b5697bbc3ac7cd8f61f80a35232a28d436cc8ce2` |
| 4 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orientation-measure-orthonormalbasis--a7e106e481ed6f5d8a995fc7.md) | 66 | `result-track:a7e106e481ed6f5d8a995fc79522366b80c33577d8fcf34ab3bc94c979a8c6cd` |
| 5 | `theorem` | [Orientation.measure_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orientation-measure-eq-volume--3b81e40ac64868a540465ece.md) | 79 | `result-track:3b81e40ac64868a540465ececd0612979e135e5cd1eb015d1e94acb88a12b6a8` |
| 6 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-volume-parallelepiped--4bb39efec08a25d9de1230bf.md) | 91 | `result-track:4bb39efec08a25d9de1230bf1cc41d0201229d8556c40d6430a20edd678c8e4b` |
| 7 | `theorem` | [OrthonormalBasis.addHaar_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-addhaar-eq-volume--ee10c5099d4aaa90ddb254b2.md) | 100 | `result-track:ee10c5099d4aaa90ddb254b2a55077cba9123722092b19019c90599bffaab6da` |
| 8 | `def` | [OrthonormalBasis.measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-measurableequiv--7fc32e4004a0aa0146f8cee5.md) | 109 | `declaration-track:7fc32e4004a0aa0146f8cee5005525cab38078a79f382900ca22a23ad532ca4b` |
| 9 | `theorem` | [OrthonormalBasis.measurePreserving_measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-measurepreserving-measurableequiv--52c658fd8f4ccbeb44177d30.md) | 113 | `result-track:52c658fd8f4ccbeb44177d30b4c27d2d0cb89b480f0276cfdc2d4bb2038cbd32` |
| 10 | `theorem` | [OrthonormalBasis.measurePreserving_repr](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-measurepreserving-repr--266626b91e241fb1cb3bbbd2.md) | 120 | `result-track:266626b91e241fb1cb3bbbd27340d41b6b25dd8ff4bdce532a50ff919e997c02` |
| 11 | `theorem` | [OrthonormalBasis.measurePreserving_repr_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/orthonormalbasis-measurepreserving-repr-symm--50f1a447cca51bdb169a5743.md) | 123 | `result-track:50f1a447cca51bdb169a5743abd17ec6e95e7651ea157b14912447d73f236f3f` |
| 12 | `theorem` | [EuclideanSpace.volume_preserving_measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/euclideanspace-volume-preserving-measurableequiv--dd8b32bccab4a6421ea47d74.md) | 131 | `result-track:dd8b32bccab4a6421ea47d74f593b68109a213bcea7e00fab080976ed4ddd809` |
| 13 | `theorem` | [PiLp.volume_preserving_equiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/pilp-volume-preserving-equiv--f15d6b932f797609d791a0a1.md) | 141 | `result-track:f15d6b932f797609d791a0a1bf8e6527b26b93b806de960a280b65f63edf07da` |
| 14 | `theorem` | [PiLp.volume_preserving_equiv_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/pilp-volume-preserving-equiv-symm--1208817fb431e27f994a81c1.md) | 146 | `result-track:1208817fb431e27f994a81c148b177f5a3b35cea05c3157e385fc224d78abcae` |
| 15 | `lemma` | [volume_euclideanSpace_eq_dirac](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/volume-euclideanspace-eq-dirac--08ddd287768416182693fd37.md) | 149 | `result-track:08ddd287768416182693fd3761f26f8872dea194744b2acba5fc9c18f06cb7f6` |
| 16 | `theorem` | [measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/declarations/measurepreserving--65a016af1a7166557dff951d.md) | 160 | `result-track:65a016af1a7166557dff951d88770bd4556a9def323e1210a998d06fd022307a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
