# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PR268AnalyticMultiplicityAudit.Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32da3dc590579ba18893f16f9736e95b2a2f81c9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32da3dc590579ba18893f16f9736e95b2a2f81c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [order_mul_nonvanishing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-mul-nonvanishing--da2792382346de8139537933.md) | 23 | `result-track:da2792382346de8139537933f18066082902e0af4ff1f756a37ea3eb4a3a6611` |
| 2 | `theorem` | [order_eq_of_local_normalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-eq-of-local-normalization--f5b6e8e3337d7239dc717737.md) | 31 | `result-track:f5b6e8e3337d7239dc7177373f7fa0921fa2c7827a924f952836ad11f33b25dc` |
| 3 | `theorem` | [order_eq_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-eq-of-local-coordinate--84d94472619b2dc983f10de7.md) | 39 | `result-track:84d94472619b2dc983f10de75a757bbc1d8c2a0ae375a7cb70f48c4b41d3c7d5` |
| 4 | `theorem` | [simple_iff_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/simple-iff-of-local-coordinate--6c2afa8582d7aeb6c38e7c9e.md) | 51 | `result-track:6c2afa8582d7aeb6c38e7c9e2e7851568726fd992a422052dc6593d97a3279b9` |
| 5 | `theorem` | [order_comp_square](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-comp-square--11e2ecb8d2b36bca4bdd7f85.md) | 60 | `result-track:11e2ecb8d2b36bca4bdd7f853afc1160edec3c99a82ef53d544305f0fc9c2b49` |
| 6 | `theorem` | [order_comp_square_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-comp-square-neg--3cf5608f85403564fa2d4025.md) | 67 | `result-track:3cf5608f85403564fa2d402511ec0c5ee2728d6bb8c756f1a79b154223fee3aa` |
| 7 | `theorem` | [order_comp_square_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/order-comp-square-zero--27b7d04da8090a06c0367f92.md) | 74 | `result-track:27b7d04da8090a06c0367f92304fab4395ecd49f3ba7aa8b4b39a0e6e273e0da` |
| 8 | `theorem` | [same_zero_support_different_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/same-zero-support-different-order--4b6cb6725dde7104548b2ef2.md) | 84 | `result-track:4b6cb6725dde7104548b2ef225c02ec2beb27e789c6459223a1831f1ca747607` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/example--866bd2951560af6ea1c6e108.md) | 99 | `declaration-track:866bd2951560af6ea1c6e108ae0b4fcf33196c57e3ffaab2978b37f1c31eecff` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/example--011650488423036534304dd0.md) | 105 | `declaration-track:011650488423036534304dd04dedcb57f167cae51338563d0f9c8dfcb751c317` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/example--ed01e323f5b872346fb0d0a9.md) | 115 | `declaration-track:ed01e323f5b872346fb0d0a9a3d3a2d4f3c83e3d9d0f9ac230389afcd5bbde45` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/declarations/example--12a311906a6063c31d244adc.md) | 125 | `declaration-track:12a311906a6063c31d244adc494244c082177a4c2e6b445b2f5d4ba7fa2ec36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
