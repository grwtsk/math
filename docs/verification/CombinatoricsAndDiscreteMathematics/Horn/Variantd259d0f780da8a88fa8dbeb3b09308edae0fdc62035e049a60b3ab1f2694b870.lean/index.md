# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Horn.Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e602788d727154499d252feec5a5baddd32cc2db",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e602788d727154499d252feec5a5baddd32cc2db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Equalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [horn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/horn--8d292713e2015e900c70b418.md) | 35 | `declaration-track:8d292713e2015e900c70b4181efd91a6f2d12728d8ebc61998df38ff7aa1382c` |
| 2 | `lemma` | [horn_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/horn-eq-isup--66ff7cea0424c8291633c487.md) | 46 | `result-track:66ff7cea0424c8291633c4871409b56a023cabff1227740e9825103d77e7432c` |
| 3 | `lemma` | [face_le_horn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/face-le-horn--e7fb9ce29bd8f7f6ea38772a.md) | 53 | `result-track:e7fb9ce29bd8f7f6ea38772ae11e1f1818d6fa3ac0ebe9f09cd2af327267fa57` |
| 4 | `lemma` | [horn_obj_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/horn-obj-zero--11a8dc4ca0f8670e7a4acb2c.md) | 59 | `result-track:11a8dc4ca0f8670e7a4acb2cace0edd42f965b75fc6039df78c35ec7019754c6` |
| 5 | `abbrev` | [hornInclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/horninclusion--1eef9791e207e53f806aaf0d.md) | 82 | `declaration-track:1eef9791e207e53f806aaf0d8d17166c1acd4386f723ba5888cbeaaa36f2ba4a` |
| 6 | `def` | [const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/const--571913440a479217bba042eb.md) | 93 | `declaration-track:571913440a479217bba042ebf366f2146e5db1a28479a1952b5d537086eea6f4` |
| 7 | `lemma` | [const_val_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/const-val-apply--0fce43e52f88d95ca12a4ada.md) | 98 | `result-track:0fce43e52f88d95ca12a4ada9b0ad0623d0470aef36ec02ad8bb0aa1b485de34` |
| 8 | `def` | [edge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/edge--a53d23d89d366c706653b332.md) | 108 | `declaration-track:a53d23d89d366c706653b332619083c2001aa3329382dc66706c99a2cf29b7da` |
| 9 | `def` | [edge₃](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/edge--e6566c9ecb398087feb9040d.md) | 130 | `declaration-track:e6566c9ecb398087feb9040d3628eb1e0e672bfd37ac1224ec1d3b21e894c87f` |
| 10 | `def` | [primitiveEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/primitiveedge--990e3f6046d99a8e65029a0d.md) | 139 | `declaration-track:990e3f6046d99a8e65029a0d0e62582cf07e22b3c07d6615c4722a578dbb4cb1` |
| 11 | `def` | [primitiveTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/primitivetriangle--92002ba91e1578a0e221d61b.md) | 155 | `declaration-track:92002ba91e1578a0e221d61b76c87b3e40c83fcca3020cc88288f0e6282b1c47` |
| 12 | `def` | [face](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/face--16bc409df13da3ea3e71b899.md) | 196 | `declaration-track:16bc409df13da3ea3e71b899f12d5293f7b1263ec92df7c765a374e4176fa832` |
| 13 | `lemma` | [hom_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variantd259d0f780da8a88fa8dbeb3b09308edae0fdc62035e049a60b3ab1f2694b870.lean/declarations/hom-ext--c2810524cbdf5dfe3e45bb0c.md) | 202 | `result-track:c2810524cbdf5dfe3e45bb0cc2a0b696b63beb6e84d89d12fb7ec703227de630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
