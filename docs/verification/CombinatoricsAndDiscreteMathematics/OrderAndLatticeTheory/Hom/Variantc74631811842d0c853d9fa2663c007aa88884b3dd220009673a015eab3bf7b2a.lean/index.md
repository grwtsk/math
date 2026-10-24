# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daad7f2fb097ec4609908d188a2ac143ea258620",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daad7f2fb097ec4609908d188a2ac143ea258620`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.CompleteLattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Principal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iciSupHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/icisuphom--42969a6c39839850d32b62e0.md) | 36 | `declaration-track:42969a6c39839850d32b62e01dd8e4a6b97196bd1d759b2870d88fc88d2170ba` |
| 2 | `theorem` | [coe_iciSupHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/coe-icisuphom--f611aabc9a98ee62000446d1.md) | 40 | `result-track:f611aabc9a98ee62000446d160d47fa259306b6547bc62bb7f4aac8f6cf2394d` |
| 3 | `theorem` | [iciSupHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/icisuphom-apply--03c5a217e4e9116f29482f29.md) | 44 | `result-track:03c5a217e4e9116f29482f29a4f70efeb2f56b4ae8cbe3fbfa36374c9e7fdecb` |
| 4 | `def` | [icisSupHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/icissuphom--0a9f4ff377393bfbfa815802.md) | 52 | `declaration-track:0a9f4ff377393bfbfa8158023f5812e27502f7a43d3994ecc2693d9d19ce9bef` |
| 5 | `theorem` | [coe_icisSupHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/coe-icissuphom--6eb33610fe2adfb710e39d02.md) | 56 | `result-track:6eb33610fe2adfb710e39d0240b26311af2985d423fad148e09d26521ede4aab` |
| 6 | `theorem` | [icisSupHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/icissuphom-apply--914c9e6aea54415e3771c7e2.md) | 60 | `result-track:914c9e6aea54415e3771c7e23f5a10917e68fdbbeccdbd9317a35063ab556cfa` |
| 7 | `def` | [iicInfHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/iicinfhom--3e7f5e0befd6e301c61b6459.md) | 72 | `declaration-track:3e7f5e0befd6e301c61b645948a2446e7345ddb81ebc579fa71223a13a96b888` |
| 8 | `theorem` | [coe_iicInfHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/coe-iicinfhom--b38ae911440b023de646510c.md) | 76 | `result-track:b38ae911440b023de646510c5f70c20ad0624542fb1aa8ef1ce2576938f79087` |
| 9 | `theorem` | [iicInfHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/iicinfhom-apply--c84a3c9d4610008730f93157.md) | 80 | `result-track:c84a3c9d4610008730f9315700d96ff7f86a8464dde410a4d386db69142114f2` |
| 10 | `def` | [iicsInfHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/iicsinfhom--bff5eff963d5d9519585c195.md) | 88 | `declaration-track:bff5eff963d5d9519585c1956bd2d0b31ab81403f426729f34e4def021334c6a` |
| 11 | `theorem` | [coe_iicsInfHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/coe-iicsinfhom--6f50d3ed997fc0f3c71c9947.md) | 92 | `result-track:6f50d3ed997fc0f3c71c9947863253ebadb568069e1dd97fd7b9757fe6b00549` |
| 12 | `theorem` | [iicsInfHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a.lean/declarations/iicsinfhom-apply--a70af9bbc992a43e3b6983df.md) | 96 | `result-track:a70af9bbc992a43e3b6983df1afe5c93e4db439d3d1c3dd61d6184bafe08fdba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
