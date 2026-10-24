# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1987Q1.Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84b045fdfe466e47e04cf763f0119121fd0ca06",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84b045fdfe466e47e04cf763f0119121fd0ca06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/fixedpointsequiv--9b8f91c8ccdfb189f62157b8.md) | 38 | `declaration-track:9b8f91c8ccdfb189f62157b891e97237a2ec2766ce75f70b241d6b5912f5c46e` |
| 2 | `theorem` | [card_fixed_points](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/card-fixed-points--64a4dc9e083b6f32b72d6435.md) | 46 | `result-track:64a4dc9e083b6f32b72d64351ac674f8247a71f946c49e82704bc127e4e5193a` |
| 3 | `def` | [fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/fiber--6529e030dec4f0a362be42bb.md) | 55 | `declaration-track:6529e030dec4f0a362be42bbe0c660ab07fe97351faf738f294f599d12ed4b0b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/instance--236c2030e9ff20fe71cc2fb8.md) | 58 | `declaration-track:236c2030e9ff20fe71cc2fb8344e82dc680819dc8ff8a52e30f0c43c8a3e25c7` |
| 5 | `theorem` | [mem_fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/mem-fiber--252c1ca1ae994b6332e36ff0.md) | 61 | `result-track:252c1ca1ae994b6332e36ff0117f8b873e0839c013f2a956d7bf49e76e7b446d` |
| 6 | `def` | [p](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/p--9c7cc17d62e53c1cdb2c43fb.md) | 65 | `declaration-track:9c7cc17d62e53c1cdb2c43fb501b90e838564923081b0bc463a481de112384a4` |
| 7 | `def` | [fixedPointsEquiv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/fixedpointsequiv--868a21516776bb25839e1ef9.md) | 74 | `declaration-track:868a21516776bb25839e1ef9a02bc65cab51f079c86cd3d92af849db33f29044` |
| 8 | `theorem` | [main_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/main-fintype--631cc222c04007bef3195580.md) | 87 | `result-track:631cc222c04007bef319558031e4a071973a81df35552aaebc6554899bd403c6` |
| 9 | `theorem` | [main₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/main--65794faf84240cddc8fabf50.md) | 93 | `result-track:65794faf84240cddc8fabf50c89a428de25cdaaa3a7ecd6043a0884f467868df` |
| 10 | `theorem` | [main](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant90eb19509fe4ff67812ca7011dfce7c3f27e3bc9e1883d673cbf93bfe422bac9.lean/declarations/main--494d780c18f4a440a42b7588.md) | 97 | `result-track:494d780c18f4a440a42b75887d74493b8c4b95ea303c6a961825465fe185faaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
