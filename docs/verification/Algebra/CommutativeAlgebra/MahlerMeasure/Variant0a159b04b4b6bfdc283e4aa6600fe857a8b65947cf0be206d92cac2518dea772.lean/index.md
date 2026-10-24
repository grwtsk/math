# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MahlerMeasure.Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f2f35613260f858c7a6a03b66337b2b6156dec3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f2f35613260f858c7a6a03b66337b2b6156dec3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_mahlerMeasure_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/one-le-mahlermeasure-of-ne-zero--ca665fb192d762138b850db4.md) | 50 | `result-track:ca665fb192d762138b850db4ad858d3218e1caa234493cb376537c6564cd8a18` |
| 2 | `def` | [boxPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/boxpoly--28e0da763030ed12aa15fe26.md) | 63 | `declaration-track:28e0da763030ed12aa15fe267c9b4f2788048a719f1f29761bdf3b330f5af247` |
| 3 | `theorem` | [ncard_boxPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/ncard-boxpoly--cdd4bcc24da7ab141ef7f3f3.md) | 65 | `result-track:cdd4bcc24da7ab141ef7f3f33cfbbaaa6f3d4823cc32884959df5a459afc846c` |
| 4 | `lemma` | [card_mahlerMeasure](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/card-mahlermeasure--fa098b2c8be4425181f6c9ee.md) | 81 | `result-track:fa098b2c8be4425181f6c9eed553ca8d48e4b1a5c29dd2a2177e5b2bd085e5fc` |
| 5 | `theorem` | [finite_mahlerMeasure_le](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/finite-mahlermeasure-le--6b8fd7933670d6a86e82110a.md) | 115 | `result-track:6b8fd7933670d6a86e82110a824d35ada33b47da295665667fc9f8cdc0c7c913` |
| 6 | `theorem` | [card_mahlerMeasure_le_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/card-mahlermeasure-le-prod--c9935d2bb8c5b233408878e9.md) | 121 | `result-track:c9935d2bb8c5b233408878e95a483445e6609286a6a56499b7d28e2adbabcf80` |
| 7 | `theorem` | [cyclotomic_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/cyclotomic-mahlermeasure-eq-one--f0d02cec4e11d56056c54d51.md) | 130 | `result-track:f0d02cec4e11d56056c54d51f408a930a80eff403428706ad89e77533cf4d09c` |
| 8 | `lemma` | [norm_leadingCoeff_eq_one_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/norm-leadingcoeff-eq-one-of-mahlermeasure-eq-one--64afbb7a2d0a48792900d0cd.md) | 145 | `result-track:64afbb7a2d0a48792900d0cd9adadf9fa634d15ee7735f5c588b6ff378d5abf2` |
| 9 | `lemma` | [abs_leadingCoeff_eq_one_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/abs-leadingcoeff-eq-one-of-mahlermeasure-eq-one--907754816b3ae398e4142790.md) | 155 | `result-track:907754816b3ae398e4142790dc24628b5df6da4669f47138f3bc920a3b953665` |
| 10 | `theorem` | [isIntegral_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/isintegral-of-mahlermeasure-eq-one--9daa4406584c675a66f5c116.md) | 165 | `result-track:9daa4406584c675a66f5c1163ac1fe88f05aedb166a5005f7cab8e787791f134` |
| 11 | `lemma` | [norm_root_le_one_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/norm-root-le-one-of-mahlermeasure-eq-one--88b6035c40803e4332a71ea1.md) | 176 | `result-track:88b6035c40803e4332a71ea127109c9de4f7692fa20e90e415d7a07f4cc3025b` |
| 12 | `theorem` | [pow_eq_one_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/pow-eq-one-of-mahlermeasure-eq-one--01306955cad662b2bf4212ba.md) | 188 | `result-track:01306955cad662b2bf4212ba8360ce7da6e0554452dd69d07f2ea355b2531073` |
| 13 | `theorem` | [isPrimitiveRoot_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/isprimitiveroot-of-mahlermeasure-eq-one--6004ae558c40631389584814.md) | 218 | `result-track:6004ae558c40631389584814140da1d0688ea9b9d95281e40547267b9c3b490c` |
| 14 | `theorem` | [cyclotomic_dvd_of_mahlerMeasure_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/declarations/cyclotomic-dvd-of-mahlermeasure-eq-one--4be7e5a36b49acc5bce42cb4.md) | 225 | `result-track:4be7e5a36b49acc5bce42cb49b2c7754d08298cb9cc68a07a6758cd433b329bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
