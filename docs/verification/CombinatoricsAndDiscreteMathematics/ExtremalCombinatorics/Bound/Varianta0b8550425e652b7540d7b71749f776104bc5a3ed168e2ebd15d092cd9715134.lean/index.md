# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.Bound.Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90afccc542a3f76f94c1e0b4c2fe5ae141f3c48d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90afccc542a3f76f94c1e0b4c2fe5ae141f3c48d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Chebyshev` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/macro-rules--ecbded9012527a31c9898251.md) | 43 | `declaration-track:ecbded9012527a31c9898251556fa52afe432ae44119b88c97ee9659a04c98ed` |
| 2 | `def` | [stepBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/stepbound--a1ea5af8bc49eb59ca69c45d.md) | 51 | `declaration-track:a1ea5af8bc49eb59ca69c45d47c1a4fae55ce892e7d733bdd2643493986cd899` |
| 3 | `theorem` | [le_stepBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/le-stepbound--0276a4abad2c9c24fa4d3aa1.md) | 55 | `result-track:0276a4abad2c9c24fa4d3aa12f77575df663d8f6fa9b2d2712c4d60b599563dc` |
| 4 | `theorem` | [stepBound_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/stepbound-mono--0f4a70599bb6725681b66054.md) | 58 | `result-track:0f4a70599bb6725681b66054f490ca0edf5139adfdef97631c243c76ac1aecb8` |
| 5 | `theorem` | [stepBound_pos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/stepbound-pos-iff--45e2d3d0d595677cb0769193.md) | 62 | `result-track:45e2d3d0d595677cb07691931d3a081f7d40f94f8bc601f367dd46f9895eac6d` |
| 6 | `theorem` | [eps_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/eps-pos--7110a71b74b8d87ba3e033c6.md) | 84 | `result-track:7110a71b74b8d87ba3e033c61c28cc7c6e7526b88eb23b5dca6bd91e3b2254b3` |
| 7 | `theorem` | [m_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/m-pos--64b753f0e86b777a21262179.md) | 88 | `result-track:64b753f0e86b777a21262179d66489c61d4741a3b0ba1dadb963c38b3bd7c593` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/macro--3ddccf0c8527283d328015a0.md) | 96 | `declaration-track:3ddccf0c8527283d328015a0c616c818a413bdb7d825d800428aa45c296246fb` |
| 9 | `theorem` | [m_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/m-pos--e31873f763225e6bcc47f0c1.md) | 121 | `result-track:e31873f763225e6bcc47f0c17c57e9f870b5cebe6a6ba85fcaf2578d3420de5e` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/coe-m-add-one-pos--3d12417e319aa6a8000d14b5.md) | 125 | `result-track:3d12417e319aa6a8000d14b594a6f12d6c002fb150c39ca0f7f3263bb5b205ef` |
| 11 | `theorem` | [one_le_m_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/one-le-m-coe--c106f79e79f09dfd699ec3f6.md) | 128 | `result-track:c106f79e79f09dfd699ec3f6c67dfbb75a428e33c109a473d4a054c7c581f851` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/eps-pow-five-pos--4b6e12fd915c3893b24cbc20.md) | 132 | `result-track:4b6e12fd915c3893b24cbc20e6ed0d43580052afec4a5cf9ae6cf076f449020c` |
| 13 | `theorem` | [eps_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/eps-pos--7bf466c5e9a40b1587310dd3.md) | 136 | `result-track:7bf466c5e9a40b1587310dd39a86a925ab1657ef22513f2f06edb779a77fbc9a` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/hundred-div-pow-five-le-m--b57bd6ba3c6a14ca2d73394d.md) | 140 | `result-track:b57bd6ba3c6a14ca2d73394db30c5a4087f4db16072504cfe0b98a10c1a22a2d` |
| 15 | `theorem` | [hundred_le_m](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/hundred-le-m--29c04234caf47919ded01223.md) | 149 | `result-track:29c04234caf47919ded01223c641d193b8bdaf815dfb8b624a30d4b3f579a141` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/a-add-one-le-four-pow-parts-card--c18f8d1df8824d9f32aa7f60.md) | 156 | `result-track:c18f8d1df8824d9f32aa7f60759b6c6c365995a06218008486acda97805fdef4` |
| 17 | `theorem` | [card_aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/card-aux--6603f5e6c6cc43081c072e4c.md) | 164 | `result-track:6603f5e6c6cc43081c072e4c2558805c4fc2a7b22f8b4c83bab5ed6c67a08a7f` |
| 18 | `theorem` | [card_aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/card-aux--a882bef20a0358c43512bfd1.md) | 170 | `result-track:a882bef20a0358c43512bfd17eb506796b26847fc5bb3676dd395e4aead8844d` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/pow-mul-m-le-card-part--f0d407f376f1462ad60b049c.md) | 182 | `result-track:f0d407f376f1462ad60b049cb1d6d9b4d093be20751ed432bb83a4a32fbeabfa` |
| 20 | `def` | [initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/initialbound--6a6eb58466cdf38b866fa3c9.md) | 193 | `declaration-track:6a6eb58466cdf38b866fa3c94a7c37f21a0211bedfece78db3b9661d36ed8e9d` |
| 21 | `theorem` | [le_initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/le-initialbound--e42d2c3fed7b1b4afdb1f271.md) | 197 | `result-track:e42d2c3fed7b1b4afdb1f271f6d0469d153a5f35b72f26c8ad63e37f175243c8` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/seven-le-initialbound--1f1d0c246a8b9d3c69dce4a1.md) | 201 | `result-track:1f1d0c246a8b9d3c69dce4a1f4a43ebb77e05575d2f7ca5ffb10bac2ac1c3e79` |
| 23 | `theorem` | [initialBound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/initialbound-pos--5530685cff285c356bf25c80.md) | 205 | `result-track:5530685cff285c356bf25c80acbffc990869669b5d557c5997121fa10dad7134` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/hundred-lt-pow-initialbound-mul--c851e075881a51ffbe6f29b4.md) | 209 | `result-track:c851e075881a51ffbe6f29b469125b5b55797ce40736855e9b1f58adc85e6de3` |
| 25 | `def` | [bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/bound--50ffc878a5916c63d16fea26.md) | 221 | `declaration-track:50ffc878a5916c63d16fea266c32534833af97ab458c49a20994d47edfe3594e` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/initialbound-le-bound--d9c046f63a675e60462b3f8f.md) | 226 | `result-track:d9c046f63a675e60462b3f8fb28070c39b81e2d38769470b32ac82a18d1e90f1` |
| 27 | `theorem` | [le_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/le-bound--64ecdd03062328df4a127c8f.md) | 230 | `result-track:64ecdd03062328df4a127c8fae09bf4e72ad3b86f85247a33f3eecc58aed976b` |
| 28 | `theorem` | [bound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/bound-pos--159fa188eb8c007c5c24f648.md) | 234 | `result-track:159fa188eb8c007c5c24f6481879dd15074659f1f598709029dcc4fbfc0a150b` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/mul-sq-le-sum-sq--7da4693faeddecd2ddc27dd9.md) | 241 | `result-track:7da4693faeddecd2ddc27dd97f1d1dd9c223749d7ed4345115d6eb7b95c2a856` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/add-div-le-sum-sq-div-card--08270682ca7888f06149f2cc.md) | 248 | `result-track:08270682ca7888f06149f2cc0d4f9ff1aa8270d490f52456fa58230131a6684c` |
| 31 | `def` | [evalInitialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/evalinitialbound--603b08a0e202b5c52c341995.md) | 285 | `declaration-track:603b08a0e202b5c52c341995315d8bff7c5a31de9650f29194b254cdb3b7e104` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/example--323feaa7a693fc50d80bcb6c.md) | 289 | `declaration-track:323feaa7a693fc50d80bcb6ccee580e210919dc254d05f05506a9689f6859629` |
| 33 | `def` | [evalBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/evalbound--f7080b7a04df78e691b2dd49.md) | 293 | `declaration-track:f7080b7a04df78e691b2dd49e30156ec114dd111483ee51c368b4bff96907a66` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/declarations/example--51784dd07c55373d64031701.md) | 297 | `declaration-track:51784dd07c55373d6403170134ad7599854d462a5b374f5595fa9aca4b6508f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
