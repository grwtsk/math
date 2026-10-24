# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bbde03eca345b86913457768ddf664af8be3b54",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bbde03eca345b86913457768ddf664af8be3b54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/ltb--20b3e646682680150103406b.md) | 26 | `declaration-track:20b3e646682680150103406b3cda250e695fbd8dbbb669e0c5730035683fae5f` |
| 2 | `def` | [ltb.inductionOn.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/ltb-inductionon--2cc39459d8cdd74c7dd86fd1.md) | 36 | `declaration-track:2cc39459d8cdd74c7dd86fd1e81689b7a0029663cb114d1cc547fcacd4ab6918` |
| 3 | `theorem` | [ltb_cons_addChar'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/ltb-cons-addchar--2515b88a35fdff9326e63874.md) | 57 | `result-track:2515b88a35fdff9326e638745d840a933924cbc55ace5f13ca8b37084401ff8f` |
| 4 | `theorem` | [ltb_cons_addChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/ltb-cons-addchar--56224506992b0f24b6fb9c54.md) | 78 | `result-track:56224506992b0f24b6fb9c545779ef42bc21464f4e689f7cb5d96d5c6e0b9ba6` |
| 5 | `theorem` | [lt_iff_toList_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/lt-iff-tolist-lt--7f073cdc251a2317b72e4820.md) | 84 | `result-track:7f073cdc251a2317b72e4820c42c8e3b650dbd16bb00a57422584c3bd93e5e9a` |
| 6 | `theorem` | [lt_iff_ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/lt-iff-ltb--a642b53da57dcc21db3f3fe1.md) | 88 | `result-track:a642b53da57dcc21db3f3fe17498596fa9227dde99c011bd1b8d030fecaf9738` |
| 7 | `theorem` | [toList_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/tolist-nonempty--7f660ebbf29ffec130ab9088.md) | 122 | `result-track:7f660ebbf29ffec130ab9088f878cb97eccbe7d0e1739a841afeecb7b2e30b27` |
| 8 | `theorem` | [head_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/head-empty--b75aa18638b428fcd693f84e.md) | 131 | `result-track:b75aa18638b428fcd693f84e36358502e36b4df1466a65f0be895fdf801de328` |
| 9 | `theorem` | [le_iff_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/le-iff-not-lt--7eee0375fbc3e8404862b361.md) | 134 | `result-track:7eee0375fbc3e8404862b3618d3ad2ccd49e37bd44dab4dbc00b24c852be5c63` |
| 10 | `theorem` | [le_iff_toList_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/le-iff-tolist-le--fe88013dcf6bdd21e3725c1d.md) | 137 | `result-track:fe88013dcf6bdd21e3725c1d0ac794e45ae69220a02480a1fed9923a2c4d0f4b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/instance--7d3359bbcd0a5c92b65f36a1.md) | 140 | `declaration-track:7d3359bbcd0a5c92b65f36a1330780e4a92b42b06c6edf4e9d3383509e30a873` |
| 12 | `theorem` | [ofList_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf656484e29acc1e4655f5840e08733ba6363db52c7300a1bab82620df23ee03a.lean/declarations/oflist-eq--49ef3edb649740d099d5f7d6.md) | 158 | `result-track:49ef3edb649740d099d5f7d64bb46eff7f684eba197151bcab38e76d2360b69c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
