# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdConnectedLinear.Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "411016587ecb060683da6a2f654d8fb81f1a5e75",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `411016587ecb060683da6a2f654d8fb81f1a5e75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ConditionallyCompleteOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.SuccPred` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.Nonempty.ordConnected_iff_of_bdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/declarations/set-nonempty-ordconnected-iff-of-bdd--a1c65d96412e2c26c2c986ee.md) | 39 | `result-track:a1c65d96412e2c26c2c986ee8dcbded16ce62995d92ca7253f47dde5d4b2c27e` |
| 2 | `lemma` | [Set.Nonempty.ordConnected_iff_of_bdd'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/declarations/set-nonempty-ordconnected-iff-of-bdd--11e3c58a94a14ef3d62dbd3f.md) | 49 | `result-track:11e3c58a94a14ef3d62dbd3f7b41d857569ac1f50d112d6a3e9f6380a5666ff6` |
| 3 | `lemma` | [Set.ordConnected_iff_disjoint_Ioo_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/declarations/set-ordconnected-iff-disjoint-ioo-empty--f2c9286abdf2cb0ba5fcf527.md) | 58 | `result-track:f2c9286abdf2cb0ba5fcf5278f67cf74567abeb3ba6136798bd586335966a85e` |
| 4 | `lemma` | [Set.Nonempty.eq_Icc_iff_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/declarations/set-nonempty-eq-icc-iff-nat--52588dbecabc1f46541a121e.md) | 79 | `result-track:52588dbecabc1f46541a121ee0fe9995b6b334629638645cd22245ed291c6b1d` |
| 5 | `lemma` | [Set.Nonempty.eq_Icc_iff_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/declarations/set-nonempty-eq-icc-iff-int--b0d45ee50fbf24e244f38603.md) | 84 | `result-track:b0d45ee50fbf24e244f386036444d6d04c989670d05d0cfb7a8989cfd7cf44dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
