# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be8117ddc370b11e4ce9b184473be447dda94df7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be8117ddc370b11e4ce9b184473be447dda94df7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Short` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/state--02b89bbd34f70a83d2ccb081.md) | 36 | `declaration-track:02b89bbd34f70a83d2ccb081e9980c7e23919a62ef094239e099e5d42b68cfa7` |
| 2 | `theorem` | [turnBound_ne_zero_of_left_move](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/turnbound-ne-zero-of-left-move--69b9d580a50e9279db4a419a.md) | 50 | `result-track:69b9d580a50e9279db4a419a6e65a7646660ba31f30a717308eeb5a13d93e787` |
| 3 | `theorem` | [turnBound_ne_zero_of_right_move](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/turnbound-ne-zero-of-right-move--4afc95bd370b9bee9c4cf49d.md) | 56 | `result-track:4afc95bd370b9bee9c4cf49df6a4c17adcfd0530c39fa8bb09864b59bdfc527b` |
| 4 | `theorem` | [turnBound_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/turnbound-of-left--b5653ee30849f9b7a3fbeb7b.md) | 62 | `result-track:b5653ee30849f9b7a3fbeb7b9e6544aefa461be6e4bfb8b3d0469e35d43be191` |
| 5 | `theorem` | [turnBound_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/turnbound-of-right--18382b24751b1e1445db5216.md) | 66 | `result-track:18382b24751b1e1445db5216540189490ed3722bfcc284b92c90af45aca46cc4` |
| 6 | `def` | [ofStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/ofstateaux--a34c10a5b0b8f77c48335c2c.md) | 73 | `declaration-track:a34c10a5b0b8f77c48335c2c2713f1f0a813b43115d453869f090c4a6f6ee9c6` |
| 7 | `def` | [ofStateAuxRelabelling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/ofstateauxrelabelling--eb223f58513424fdf5d1564a.md) | 84 | `declaration-track:eb223f58513424fdf5d1564ae6db83d158095fdcd99b506179e59d7f4cee5d02` |
| 8 | `def` | [ofState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/ofstate--d249e9c31c2997ce875b43d8.md) | 125 | `declaration-track:d249e9c31c2997ce875b43d8d72d87a32dfe0fca505f0852bc38aabaa62ced99` |
| 9 | `def` | [leftMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/leftmovesofstateaux--6ce92131ae5636c3eac2ba9e.md) | 130 | `declaration-track:6ce92131ae5636c3eac2ba9e5dc1376541fac2b3fad6ee1bd6f7db1576987c6d` |
| 10 | `def` | [leftMovesOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/leftmovesofstate--9f0ae154fe892eebcc1f16f5.md) | 134 | `declaration-track:9f0ae154fe892eebcc1f16f5dcccb18270ca0dfb61e91cf57333c37a8d063289` |
| 11 | `def` | [rightMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/rightmovesofstateaux--5fb71295aa71945da8341de5.md) | 139 | `declaration-track:5fb71295aa71945da8341de5b9903301a0feeed0bb30849d8bd5d32424b02dfe` |
| 12 | `def` | [rightMovesOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/rightmovesofstate--f91d67f54d6474bb253a09d0.md) | 144 | `declaration-track:f91d67f54d6474bb253a09d04aa780fb9c5b9606b327766e7ce9e9317dcd4532` |
| 13 | `def` | [relabellingMoveLeftAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/relabellingmoveleftaux--f04956c553fe40c0ba1ad52d.md) | 150 | `declaration-track:f04956c553fe40c0ba1ad52decb8a3cf502f09ae13048723a3bfd8d37f9450ed` |
| 14 | `def` | [relabellingMoveLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/relabellingmoveleft--c69ce95900ced8863bd95e32.md) | 164 | `declaration-track:c69ce95900ced8863bd95e323b608ab61456bed50c780991f2b726459fef4a03` |
| 15 | `def` | [relabellingMoveRightAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/relabellingmoverightaux--3aac37f756c377bb7e1477f1.md) | 173 | `declaration-track:3aac37f756c377bb7e1477f17faceb93a72b4d415ba24333969c44a076259c4d` |
| 16 | `def` | [relabellingMoveRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/relabellingmoveright--b68c4fdcfd036db8b23a5082.md) | 187 | `declaration-track:b68c4fdcfd036db8b23a5082ceba6c21bc2573fdd401454898fd32345deae8b6` |
| 17 | `instance` | [fintypeLeftMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/fintypeleftmovesofstateaux--090a2176b9b520fca53509f0.md) | 193 | `declaration-track:090a2176b9b520fca53509f095eb46df13c87cc4f8825fea194334ed3aa2e2d3` |
| 18 | `instance` | [fintypeRightMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/fintyperightmovesofstateaux--6cd96c744ccf71c22f24c69d.md) | 197 | `declaration-track:6cd96c744ccf71c22f24c69db6f44d140f9fa3829713c0608e04d3b20b15612c` |
| 19 | `instance` | [shortOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/shortofstateaux--00873d6997ed2019e607e864.md) | 201 | `declaration-track:00873d6997ed2019e607e864135e250803a2aa1bafbaf7ef134e6f0d82a1c699` |
| 20 | `instance` | [shortOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/shortofstate--60537eb17a652c8add8dd82e.md) | 219 | `declaration-track:60537eb17a652c8add8dd82e28cff6d873b772ecadda0d533dd356cdf6d6f72c` |
| 21 | `def` | [ofState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/declarations/ofstate--8e4ab60b26c68b8e158660fb.md) | 228 | `declaration-track:8e4ab60b26c68b8e158660fbf4376389a92f9c26ba50df5bd60e3f9e32fbe536` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
