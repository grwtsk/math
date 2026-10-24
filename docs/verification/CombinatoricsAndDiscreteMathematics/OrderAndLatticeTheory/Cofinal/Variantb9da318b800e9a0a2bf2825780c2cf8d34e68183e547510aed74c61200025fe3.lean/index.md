# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cofinal.Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9741266ea6afef1dda7aeeb69696efa95eb50303",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9741266ea6afef1dda7aeeb69696efa95eb50303`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsCofinal.of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-of-isempty--6d8705a1b315da32c695e9d1.md) | 29 | `result-track:6d8705a1b315da32c695e9d16072cc0d6c1d36075d18becf01f3d2acf650f695` |
| 2 | `theorem` | [isCofinal_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-empty-iff--88190649e180914aa3bc6cb6.md) | 32 | `result-track:88190649e180914aa3bc6cb66f62d4e87f25f5324e95dc5db3662bcc0a464574` |
| 3 | `theorem` | [IsCofinal.singleton_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-singleton-top--d4b4b8313cd0ce862a20e223.md) | 36 | `result-track:d4b4b8313cd0ce862a20e2233ae8b7f679ea5ed4f6eb36f1a974b61ba3e55bf0` |
| 4 | `theorem` | [IsCofinal.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-mono--720e88928116a5daa1aa0b58.md) | 39 | `result-track:720e88928116a5daa1aa0b58589a22e4e77af18619d7fcb3b7e566719a55bc57` |
| 5 | `theorem` | [IsCofinal.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-univ--c074938dabc3a2e7bf90cbb2.md) | 49 | `result-track:c074938dabc3a2e7bf90cbb2c7423df774562126e3de2e9e4e068c5571195a7f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/instance--2cc24782e8a8ca6e30ce1d2a.md) | 52 | `declaration-track:2cc24782e8a8ca6e30ce1d2a1e7f012b6ab8fea07f4217322e711ad59967ed5f` |
| 7 | `theorem` | [IsCofinal.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-trans--efed2e8dec9252cb642f226e.md) | 56 | `result-track:efed2e8dec9252cb642f226e1bd502fc81525fe24a3bc988a743d04911861785` |
| 8 | `theorem` | [GaloisConnection.map_cofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/galoisconnection-map-cofinal--ffc0d97996f2633710bec6db.md) | 63 | `result-track:ffc0d97996f2633710bec6db6655d400a9abd2fe9cc0d86a53311953d658c132` |
| 9 | `theorem` | [OrderIso.map_cofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/orderiso-map-cofinal--8a82ad6ec8870efff41e0a68.md) | 69 | `result-track:8a82ad6ec8870efff41e0a685a3efafa0d6ce78aea28aba94bdbde7eb8d02157` |
| 10 | `theorem` | [IsCofinal.mem_of_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-mem-of-ismax--df2c6f19c51363ec3ac2b534.md) | 78 | `result-track:df2c6f19c51363ec3ac2b534525d600224b423cae77f59e166469cf42dc0f71c` |
| 11 | `theorem` | [IsCofinal.top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-top-mem--0cfac85232ae1b0130b8373e.md) | 82 | `result-track:0cfac85232ae1b0130b8373ef52f4922a8dbe3bab29abc2d2330d64a6c233e86` |
| 12 | `theorem` | [isCofinal_iff_top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-iff-top-mem--ab71e879cc4797338cea69ec.md) | 86 | `result-track:ab71e879cc4797338cea69ec034b29849fc49091d28d579b318ebba20a185236` |
| 13 | `theorem` | [not_isCofinal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/not-iscofinal-iff--9518b831d2fd5067beb2bf45.md) | 94 | `result-track:9518b831d2fd5067beb2bf450fd60e13e21744129b2810bbab96f2669027b0d3` |
| 14 | `theorem` | [BddAbove.of_not_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/bddabove-of-not-iscofinal--223e2e2139c1c38a2505b4cb.md) | 97 | `result-track:223e2e2139c1c38a2505b4cb95cae2873ee867a88f195d4170118b69147f0749` |
| 15 | `theorem` | [IsCofinal.of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-of-not-bddabove--556f06235e5228b34acbe4b6.md) | 102 | `result-track:556f06235e5228b34acbe4b62e7561cc680578802b02defdc5d80f24bbd3f344` |
| 16 | `theorem` | [not_isCofinal_iff_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/not-iscofinal-iff-bddabove--abb231ce289b201c9d1cd7f8.md) | 107 | `result-track:abb231ce289b201c9d1cd7f8a1ccd5e5932e02d9fec191f198ba0d819f38883f` |
| 17 | `theorem` | [not_bddAbove_iff_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/not-bddabove-iff-iscofinal--63fc2752266e5386ccce1b31.md) | 115 | `result-track:63fc2752266e5386ccce1b313b969fff204bbc526c3b81dcb17ee625c2978dab` |
| 18 | `theorem` | [isCofinal_setOf_imp_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantb9da318b800e9a0a2bf2825780c2cf8d34e68183e547510aed74c61200025fe3.lean/declarations/iscofinal-setof-imp-lt--66c956e670b2d5efc86a134f.md) | 120 | `result-track:66c956e670b2d5efc86a134f9a729d7c898a3e890e35cbe181aedba8aa67a3d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
