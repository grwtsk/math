# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.HeytAlgCat.Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179251ffee191729fdf78925cc72c2be95c716f7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179251ffee191729fdf78925cc72c2be95c716f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddDistLatCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Heyting.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HeytAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/heytalgcat--fccc35620868a2e3bca06257.md) | 32 | `declaration-track:fccc35620868a2e3bca062573f529013e02fc9e0f5949c695e92655dea6f0132` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/instance--0b082afd63128d0e5354bd42.md) | 38 | `declaration-track:0b082afd63128d0e5354bd42e49e3bbf23ba8a52f659e1b9fb02ee64ab35298c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/instance--697382ece4f4326a7c299432.md) | 41 | `declaration-track:697382ece4f4326a7c2994325348e6c712d2ea6d887e1fec9fafa2e26e9c73c5` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/of--85c5303c3fd0a61e2a998b40.md) | 45 | `declaration-track:85c5303c3fd0a61e2a998b403825930d1b333a5f7567310428f7b43e1bb9cbd0` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/coe-of--3a7d5f04be5c591699b05ec2.md) | 50 | `result-track:3a7d5f04be5c591699b05ec287edbf376f9a47ba1bfd1cf5ded7b34fcd50fa95` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/instance--6fa95df3cdfb208bb8166f74.md) | 54 | `declaration-track:6fa95df3cdfb208bb8166f74229430daf547a10357a97303daad825bf93ae28b` |
| 7 | `instance` | [bundledHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/bundledhom--bdd6f70151cfb3c52a6a40fd.md) | 57 | `declaration-track:bdd6f70151cfb3c52a6a40fd32aec669c63b9d2812c7dcaba5467e595ce7854c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/instance--0e5e26689bc59eb6847e43aa.md) | 68 | `declaration-track:0e5e26689bc59eb6847e43aa6e784f533aea1b45b7243f86c9bf6a9ab84d8eb9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/instance--1a7b5e161a959708c6fd7a37.md) | 73 | `declaration-track:1a7b5e161a959708c6fd7a372bc9335b1e58808ec7c5368cf629b2a3c34b71c7` |
| 10 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/hasforgettolat--955f6042a3c16c157cfde4aa.md) | 77 | `declaration-track:955f6042a3c16c157cfde4aa7774de073c20d340432ce53cae674b13a4cfb995` |
| 11 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variantdaf35851cbff987041c112ef2291bba91d159c1d8adf67caba807125ba6f8a7a.lean/declarations/iso-mk--e087dda80f8be8c0bf452f3c.md) | 85 | `declaration-track:e087dda80f8be8c0bf452f3c81b0d6934990548d7b2a26e89c9e83091d669202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
