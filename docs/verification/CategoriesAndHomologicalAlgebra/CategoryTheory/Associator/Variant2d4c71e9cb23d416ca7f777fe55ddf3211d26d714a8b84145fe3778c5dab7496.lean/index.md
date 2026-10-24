# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a80bcb302b9f3e103fe2872bb24fd319fd0067",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a80bcb302b9f3e103fe2872bb24fd319fd0067`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sums.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator--63704a2d80f0c732dbe45488.md) | 36 | `declaration-track:63704a2d80f0c732dbe4548874aaa5dd4e8bed39d0167de0fc4e4b9e28df8d25` |
| 2 | `theorem` | [associator_obj_inl_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-obj-inl-inl--78d7fb816167cb33fa47e806.md) | 40 | `result-track:78d7fb816167cb33fa47e806567fdf72bc104534bad1a17b43dd7cf351247b64` |
| 3 | `theorem` | [associator_obj_inl_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-obj-inl-inr--c88462265f63c119af22cf22.md) | 44 | `result-track:c88462265f63c119af22cf22f27cb063a6fefd8be502b57a8fcb5f169fa85d45` |
| 4 | `theorem` | [associator_obj_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-obj-inr--59b7763a82928c7d1c71d5ef.md) | 48 | `result-track:59b7763a82928c7d1c71d5ef2c0ceebe7c7246347498cb22399085943e78226c` |
| 5 | `theorem` | [associator_map_inl_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-map-inl-inl--89c5eca9d8ea483356f4dcb3.md) | 52 | `result-track:89c5eca9d8ea483356f4dcb381508e742d7b4f5b8d8b5a171bc0c124bbc75ac3` |
| 6 | `theorem` | [associator_map_inl_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-map-inl-inr--826429fe6147f44fc56e6ccb.md) | 57 | `result-track:826429fe6147f44fc56e6ccb5a9cc477f636afdfdb2a820349f25a149c17b44d` |
| 7 | `theorem` | [associator_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associator-map-inr--c79308168d69cf02d99c47a7.md) | 63 | `result-track:c79308168d69cf02d99c47a7968ab5834613e03bfe1fbe7fc67444c50aba81fa` |
| 8 | `def` | [inlCompAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inlcompassociator--5f6131b3e927f28002ff21a7.md) | 69 | `declaration-track:5f6131b3e927f28002ff21a7540f639b68ec18dfe3e4e21d259477752515c910` |
| 9 | `def` | [inrCompAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inrcompassociator--1922364b42a66896153c2ac9.md) | 75 | `declaration-track:1922364b42a66896153c2ac9f57d0bc253591a73beb88b4298f3b71d78c358b5` |
| 10 | `def` | [inlCompInlCompAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inlcompinlcompassociator--ad81823bef435cbc5548e754.md) | 80 | `declaration-track:ad81823bef435cbc5548e7544c4a991e0d9406406bd52886de54a04bf9526e7e` |
| 11 | `def` | [inrCompInlCompAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inrcompinlcompassociator--e6cb15bb60fdc692725c3ae7.md) | 85 | `declaration-track:e6cb15bb60fdc692725c3ae7e53dfaec084824691e943aeb4344205c81aaeece` |
| 12 | `def` | [inverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator--c404c03dc7a0f70dabefbffa.md) | 91 | `declaration-track:c404c03dc7a0f70dabefbffa5dac1397892f073cb11aed737a7963d2243a11a3` |
| 13 | `theorem` | [inverseAssociator_obj_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-obj-inl--5b10d7e47755af18b51857ad.md) | 95 | `result-track:5b10d7e47755af18b51857ad34c95e61b9c9e69dd2c8f102ff55ec6e7d11c347` |
| 14 | `theorem` | [inverseAssociator_obj_inr_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-obj-inr-inl--307282b5f6909305ad51d446.md) | 99 | `result-track:307282b5f6909305ad51d44679e8781db6429a2465db198d3139391fe61e566f` |
| 15 | `theorem` | [inverseAssociator_obj_inr_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-obj-inr-inr--5fab07eff8399acb909d6ddb.md) | 104 | `result-track:5fab07eff8399acb909d6ddbf7872aa371da919cbfebafe1f6c430dbd8202f14` |
| 16 | `theorem` | [inverseAssociator_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-map-inl--63a4b998c8436f930720fb91.md) | 108 | `result-track:63a4b998c8436f930720fb91750e21fdb109b10edb2b2c1b18a16c66b0fe0c68` |
| 17 | `theorem` | [inverseAssociator_map_inr_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-map-inr-inl--e1fa1bcf1d4af560f2dfa8da.md) | 113 | `result-track:e1fa1bcf1d4af560f2dfa8dae19bc5c85bad55f8ffdb52e9309ec8819d5012b6` |
| 18 | `theorem` | [inverseAssociator_map_inr_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociator-map-inr-inr--bd0ae119e32a485abb799945.md) | 119 | `result-track:bd0ae119e32a485abb7999456d6fd28a6f1eb7882ba9d1229b8a906c3f302d7a` |
| 19 | `def` | [inlCompInverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inlcompinverseassociator--50c99051ab34f4983a72d382.md) | 126 | `declaration-track:50c99051ab34f4983a72d3822eafc181c03596191b9d886e33a434fbffdd6913` |
| 20 | `def` | [inrCompInverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inrcompinverseassociator--8baad24d60bd5d82f0acb731.md) | 132 | `declaration-track:8baad24d60bd5d82f0acb731fc060c6ea50d63df78d9c8ca3ba74feb5c72c1f0` |
| 21 | `def` | [inlCompInrCompInverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inlcompinrcompinverseassociator--f06927cf43d60651d7d3db38.md) | 139 | `declaration-track:f06927cf43d60651d7d3db383281c6efcb39c695e6a070540c1d59677eb24a3b` |
| 22 | `def` | [inrCompInrCompInverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inrcompinrcompinverseassociator--63808ee12fb8f901693f39ea.md) | 146 | `declaration-track:63808ee12fb8f901693f39ea1e4c654c1d0c78422036730148738546dfce7079` |
| 23 | `def` | [associativity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associativity--d8474bfad914b197de2a4d59.md) | 153 | `declaration-track:d8474bfad914b197de2a4d59b5a987d55ca857e61563a44cecd84cc4e8bf7c7e` |
| 24 | `instance` | [associatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/associatorisequivalence--2bd0ca28a68868ff2339364a.md) | 187 | `declaration-track:2bd0ca28a68868ff2339364a2eef310a4d1a0a837d42fd491af163da82908e3c` |
| 25 | `instance` | [inverseAssociatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/declarations/inverseassociatorisequivalence--69f11a8075ab28204d9e4848.md) | 190 | `declaration-track:69f11a8075ab28204d9e484867b6f4f2ac52ef1e80c21dbb02e40de4cb71995c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
