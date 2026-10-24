# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FriendshipGraphs.Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baa781c85fcefc058bf9cc49da7de0ceb0fb817e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baa781c85fcefc058bf9cc49da7de0ceb0fb817e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.FiniteField` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Friendship](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/friendship--570f4975688419e8e6febc55.md) | 65 | `declaration-track:570f4975688419e8e6febc55ecc9944d1eb396afb57fc23b6eb0704deb3a74c9` |
| 2 | `def` | [ExistsPolitician](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/existspolitician--6961a06db9465fa535b88dd1.md) | 70 | `declaration-track:6961a06db9465fa535b88dd1eca6c7c0921269dea282bfc8bd5c33933ebcf193` |
| 3 | `theorem` | [adjMatrix_sq_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-sq-of-ne--6569d3fde074c018eebe8562.md) | 86 | `result-track:6569d3fde074c018eebe85625635b2cd97df9af91c83ee2272b98ae17f7a2cdb` |
| 4 | `theorem` | [adjMatrix_pow_three_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-pow-three-of-not-adj--a7db33bddb512805d6cedfe1.md) | 98 | `result-track:a7db33bddb512805d6cedfe1ccded8c778e90be5fdb93f5727c8c35274d373c6` |
| 5 | `theorem` | [degree_eq_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/degree-eq-of-not-adj--8ce2c9e2d52b8e128aa762b2.md) | 117 | `result-track:8ce2c9e2d52b8e128aa762b269f68d007b446868e9ab96a38378452f020ed918` |
| 6 | `theorem` | [adjMatrix_sq_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-sq-of-regular--3de58654a9dbfa6ff104d94d.md) | 131 | `result-track:3de58654a9dbfa6ff104d94d049d430bc2d26320174bc8b6ef5049cc89be2b63` |
| 7 | `theorem` | [adjMatrix_sq_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-sq-mod-p-of-regular--a20c98fd8e2b294db91492fd.md) | 139 | `result-track:a20c98fd8e2b294db91492fd3b239202a1969a2eeb7cb04040da676f144099de` |
| 8 | `theorem` | [isRegularOf_not_existsPolitician](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/isregularof-not-existspolitician--d880cd6bfc50f7819908d705.md) | 153 | `result-track:d880cd6bfc50f7819908d7056535851a43b80071e8a2a51dc866f1b6b7b199b5` |
| 9 | `theorem` | [card_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/card-of-regular--21e7f855d68cc10d1921b592.md) | 188 | `result-track:21e7f855d68cc10d1921b5922eec3b13ea66c24009405fa03f44549b0ecc9ed7` |
| 10 | `theorem` | [card_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/card-mod-p-of-regular--8846196367bfc11cc9db058f.md) | 205 | `result-track:8846196367bfc11cc9db058fcb2be179f01532118bfe5fd2d3e316d05bfa2a85` |
| 11 | `theorem` | [adjMatrix_sq_mul_const_one_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-sq-mul-const-one-of-regular--83cd836e92870e1a04e7e8f0.md) | 216 | `result-track:83cd836e92870e1a04e7e8f0367a1fe3a527624f848eb7ab00b30054ec0eaf2a` |
| 12 | `theorem` | [adjMatrix_mul_const_one_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-mul-const-one-mod-p-of-regular--4814626d86b413a2b6fa0828.md) | 223 | `result-track:4814626d86b413a2b6fa0828a1dfcbca1d0197790a8c495986d63b7a468ba421` |
| 13 | `theorem` | [adjMatrix_pow_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/adjmatrix-pow-mod-p-of-regular--8f9e87020e943b99d156553b.md) | 232 | `result-track:8f9e87020e943b99d156553be100de04e6ee817fff39d8c72fb37780e451054b` |
| 14 | `theorem` | [false_of_three_le_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/false-of-three-le-degree--1df016a1aed8dee266225a64.md) | 252 | `result-track:1df016a1aed8dee266225a648a16e8dff34a0e532f5f39b1ed31361d35fc5208` |
| 15 | `theorem` | [existsPolitician_of_degree_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/existspolitician-of-degree-le-one--97747dd7b55e0bccfa0b4b27.md) | 283 | `result-track:97747dd7b55e0bccfa0b4b271ec19b0e83c8f1312f484e644162d4169a9e0467` |
| 16 | `theorem` | [neighborFinset_eq_of_degree_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/neighborfinset-eq-of-degree-eq-two--066a38c80318f63ec9bde734.md) | 301 | `result-track:066a38c80318f63ec9bde734e16d33ca1aa5b12fd58f33e0cdc98c4f30d25e72` |
| 17 | `theorem` | [existsPolitician_of_degree_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/existspolitician-of-degree-eq-two--0007819f30e931b6c5599522.md) | 318 | `result-track:0007819f30e931b6c55995226e37a1a87c6cb50bb0cb8b7809143a325944b7dc` |
| 18 | `theorem` | [existsPolitician_of_degree_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/existspolitician-of-degree-le-two--afe61112bb832fb925abd64c.md) | 327 | `result-track:afe61112bb832fb925abd64c79caac99987ddd9157aa55ec3008e1255fc5ba7c` |
| 19 | `theorem` | [friendship_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/declarations/friendship-theorem--bb0e39d2178aff6de5b0a9ed.md) | 342 | `result-track:bb0e39d2178aff6de5b0a9edee82baefc0f4fee3ef96975c8346aed7d5baafdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
