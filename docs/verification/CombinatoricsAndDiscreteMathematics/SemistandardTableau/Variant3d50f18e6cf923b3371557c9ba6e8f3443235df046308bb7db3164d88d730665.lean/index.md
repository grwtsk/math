# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardTableau.Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f196b7e94670c2d4c198b480f7ea7a122ff68aeb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f196b7e94670c2d4c198b480f7ea7a122ff68aeb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Young.YoungDiagram` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemistandardYoungTableau](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/semistandardyoungtableau--fb0ce0b817b0c26e31dbca86.md) | 60 | `declaration-track:fb0ce0b817b0c26e31dbca8692b19f257984930e3563a54d1fe1d27ef6b67e69` |
| 2 | `instance` | [instFunLike](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/instfunlike--13e2e09a62d5785c2a4ca795.md) | 72 | `declaration-track:13e2e09a62d5785c2a4ca795b3882ce6085d14f68330a1b732c6879038c9fc7a` |
| 3 | `theorem` | [to_fun_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/to-fun-eq-coe--fd9999762b11609525efd12d.md) | 80 | `result-track:fd9999762b11609525efd12d0973fc00be019f43ae85d098f6c27e39cd023c78` |
| 4 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/ext--59150471b0f9363ee1be2515.md) | 85 | `result-track:59150471b0f9363ee1be2515e2fdd93764d9f0f50456888c8fc0b964c68d2550` |
| 5 | `def` | [copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/copy--7049514ccf195514446adff9.md) | 93 | `declaration-track:7049514ccf195514446adff91b546699c9d92665e7769ea5938e59aca8d5a514` |
| 6 | `theorem` | [coe_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/coe-copy--915817ca496641b03789388c.md) | 101 | `result-track:915817ca496641b03789388ce724dcc9c0647fd41a7c913c19a6365f6c928954` |
| 7 | `theorem` | [copy_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/copy-eq--ed2aa78eb4b1ce6cd9c4c609.md) | 105 | `result-track:ed2aa78eb4b1ce6cd9c4c609b898d816df78bec93aff44ed740720f5cf94fd94` |
| 8 | `theorem` | [row_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/row-weak--51411c1bfd69d49a58e5c203.md) | 109 | `result-track:51411c1bfd69d49a58e5c203f3f94118b6b701e558451c77747c0fc03b8c86ce` |
| 9 | `theorem` | [col_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/col-strict--d0128c58299b44d6f78f9222.md) | 113 | `result-track:d0128c58299b44d6f78f9222889d73e69c162db8775c579baa5feeb9afa125b0` |
| 10 | `theorem` | [zeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/zeros--7651dcb733a47e07cb558543.md) | 117 | `result-track:7651dcb733a47e07cb558543377df1e6b7a4eb2a5a4dc8b0c1c17eac16602669` |
| 11 | `theorem` | [row_weak_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/row-weak-of-le--174f4187517d12f6f0c7eee6.md) | 121 | `result-track:174f4187517d12f6f0c7eee6b515e8197dffa78d6c08a7b4ba0aa0585e6ee007` |
| 12 | `theorem` | [col_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/col-weak--9c81cfb7bf7a4d5f813492bb.md) | 127 | `result-track:9c81cfb7bf7a4d5f813492bb4920b001e932c028337932f93ec6f1c79b52c9a0` |
| 13 | `def` | [highestWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/highestweight--b7e808139f55eef21b729205.md) | 134 | `declaration-track:b7e808139f55eef21b729205cc4099c6ab071b2e6956470d9bf0ae98b9326be7` |
| 14 | `theorem` | [highestWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/highestweight-apply--14dde6faffbf838aae9c9012.md) | 143 | `result-track:14dde6faffbf838aae9c9012ac30aa16be47b733cd1c1c60cd55aab849d411ef` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/declarations/instance--cc3ad4c66d712bb2347c34d8.md) | 147 | `declaration-track:cc3ad4c66d712bb2347c34d8d27bb7b6b06a60500fb675743178ed11e82d71ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
