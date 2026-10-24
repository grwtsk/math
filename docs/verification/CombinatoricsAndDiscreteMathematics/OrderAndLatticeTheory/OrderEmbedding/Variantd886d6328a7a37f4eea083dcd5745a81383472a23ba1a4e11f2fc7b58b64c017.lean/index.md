# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderEmbedding.Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "139c2db545ffb8568d5e20e3feba7b3665befe22",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `139c2db545ffb8568d5e20e3feba7b3665befe22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preimage_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-ici--f98363953fd57816ba11e4aa.md) | 28 | `result-track:f98363953fd57816ba11e4aa76a7c1ac59533d1126d4b99bf37ab3f9bdea8148` |
| 2 | `theorem` | [preimage_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-iic--37b79b570b20ed4aaff48e2d.md) | 29 | `result-track:37b79b570b20ed4aaff48e2d4b45b2d755c274ba7aeabdd7fc4a20b3a33f4c39` |
| 3 | `theorem` | [preimage_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-ioi--1c115155a19a0e24d933f4bf.md) | 30 | `result-track:1c115155a19a0e24d933f4bfebdb1f6cf22e2edbe836ab915e37fa4234eaef6b` |
| 4 | `theorem` | [preimage_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-iio--cd3fa5e4ad446c95d53085ac.md) | 31 | `result-track:cd3fa5e4ad446c95d53085ac39c99d370efcbe42e102d1771022b133575e4ba7` |
| 5 | `theorem` | [preimage_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-icc--e6bd242aca39118713e12dc7.md) | 33 | `result-track:e6bd242aca39118713e12dc7f290c69b25ffbcf58cb52e620ebf9425b5b31b12` |
| 6 | `theorem` | [preimage_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-ico--36562b2032c2c478db003c74.md) | 34 | `result-track:36562b2032c2c478db003c7496ad20244f43e6446f578355f04b556f10dd3812` |
| 7 | `theorem` | [preimage_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-ioc--a9490ed139039e864faf95e2.md) | 35 | `result-track:a9490ed139039e864faf95e26269f11c4161cd5c75a4d69ea8b7c63019540512` |
| 8 | `theorem` | [preimage_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-ioo--a59e46a4936d85d44f9a7e0c.md) | 36 | `result-track:a59e46a4936d85d44f9a7e0c355c698aaf97938baf64a75f76a15f6b2ed3e71a` |
| 9 | `theorem` | [preimage_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-uicc--cfa9e4648343f044adfc0c9e.md) | 42 | `result-track:cfa9e4648343f044adfc0c9e3adcc3a4c413ad7454f8566bc8294e9beb4026ef` |
| 10 | `theorem` | [preimage_uIoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017.lean/declarations/preimage-uioc--b56a391d5d52c9bc493e07b0.md) | 46 | `result-track:b56a391d5d52c9bc493e07b0e26c51fcadd75cc4997b131e7bca011cf4583c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
