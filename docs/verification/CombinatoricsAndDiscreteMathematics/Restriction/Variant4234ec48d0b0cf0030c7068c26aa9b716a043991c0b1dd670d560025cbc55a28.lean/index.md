# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58d42e5704a0a531d435bae7b0eed9625b275f3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58d42e5704a0a531d435bae7b0eed9625b275f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--b1840b0962dc1381f6c53b7c.md) | 34 | `declaration-track:b1840b0962dc1381f6c53b7cb03c3827b66dc9634168d55b5ed122a9e639d67e` |
| 2 | `theorem` | [mapSort_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-id--4b2689818fb520cbc9412b6d.md) | 41 | `result-track:4b2689818fb520cbc9412b6d909245396119e0765de1e2da9709d3aa24e2e6c6` |
| 3 | `theorem` | [mapSort_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-comp--b6602f8b8d10bc61c9be604d.md) | 44 | `result-track:b6602f8b8d10bc61c9be604d5942f05aee762806afe278a55c9654558cbb1bff` |
| 4 | `theorem` | [mapSort_rename](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-rename--312b38ca1c84fcb5f9462581.md) | 48 | `result-track:312b38ca1c84fcb5f94625818f33ef0b7d790d9fba8c723e5831a66dd00df147` |
| 5 | `theorem` | [mapSort_liftSub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-liftsub--6fd1fdcd06ed12ffa9aa3145.md) | 52 | `result-track:6fd1fdcd06ed12ffa9aa3145a3db6faadff3c9a1cc32097594d7fd2ee101b6f3` |
| 6 | `theorem` | [mapSort_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-subst--f3cec7188fd7affad97c3051.md) | 57 | `result-track:f3cec7188fd7affad97c3051117323db6b18d3ef7b9496a3337a1778340b82b4` |
| 7 | `theorem` | [mapSort_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-single--d4c8bca817fa52859f6928ce.md) | 62 | `result-track:d4c8bca817fa52859f6928ceded45f761a163ab00aa0d21177a1bb628f6ae927` |
| 8 | `theorem` | [mapSort_instantiate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort-instantiate--cc73a00ff144be7acdf33193.md) | 67 | `result-track:cc73a00ff144be7acdf33193d9145c3329409ad432e99e05a10e992b8b7befbb` |
| 9 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--5bb64ed2f23e2857f9532e29.md) | 77 | `result-track:5bb64ed2f23e2857f9532e29a21e951a3e66ac8d9740db32abbe13d8ab1b790d` |
| 10 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--b6305730e7c8a667a5ec5d96.md) | 95 | `result-track:b6305730e7c8a667a5ec5d960c168b847f22181a90ba6c0404d4f9e4299006bf` |
| 11 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--0dbbec06b8060bd0ffb3bf68.md) | 104 | `result-track:0dbbec06b8060bd0ffb3bf68661b0189190b3786816e8c79dd2f2c9eac2fea51` |
| 12 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--e7bb3091de26a7997745d49c.md) | 117 | `result-track:e7bb3091de26a7997745d49c5959aeb4e03bc261f944458d2ea1a67589cdfba9` |
| 13 | `theorem` | [of_mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/of-mapsort--fe1bbb0d8a3c27e691d924ba.md) | 140 | `result-track:fe1bbb0d8a3c27e691d924bac2a64e82eda35504d687c12a5895a4806316d476` |
| 14 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--acbf2c6d9cfccf5827307cf5.md) | 160 | `result-track:acbf2c6d9cfccf5827307cf5a59690f366983bd1e13e9fd2edecb1d104fed597` |
| 15 | `theorem` | [of_retraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/of-retraction--e53e3a6091f0af8a677adcc0.md) | 165 | `result-track:e53e3a6091f0af8a677adcc013502b204803271b14de1c493b0c790465dfed1b` |
| 16 | `theorem` | [monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/monotone--ca09ddd236c8cea7e0d16f77.md) | 176 | `result-track:ca09ddd236c8cea7e0d16f77ac0df8c22178ab0e1aed2c80bb76109221c6ea2b` |
| 17 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/mapsort--133ba812daed8aad7ff2efe9.md) | 188 | `result-track:133ba812daed8aad7ff2efe95283cb0d46094b22fa2bef2e69997b8e23780ef6` |
| 18 | `theorem` | [has_axiom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/has-axiom--a0e135626885a69893239d52.md) | 204 | `result-track:a0e135626885a69893239d52ba260a43eeccfcaa6feb66e66c3e3e6584660055` |
| 19 | `def` | [restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/restrict--9b70635ad0bf5a0ce97552fa.md) | 221 | `declaration-track:9b70635ad0bf5a0ce97552fa87429f214b1f895ed669d7b8839e620edbdef01c` |
| 20 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/s--abe84a156a9d24d92eda0db5.md) | 223 | `declaration-track:abe84a156a9d24d92eda0db59f1c108777d6f6e375b36c1ca784def0b4c59bf6` |
| 21 | `def` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/on--68e4756fa118cf54f3c42bc8.md) | 226 | `declaration-track:68e4756fa118cf54f3c42bc899df88d8564800359b57216ef589d078f586a439` |
| 22 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/s--3160e659aacab53c1afa0b1c.md) | 227 | `declaration-track:3160e659aacab53c1afa0b1cf6d0a22a7d7d6dd7513c655b4ce652baacee9fd1` |
| 23 | `theorem` | [restrict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/restrict-mono--6fe4e0ac571c2b159bdb719c.md) | 236 | `result-track:6fe4e0ac571c2b159bdb719c8ee606712da4bc50dc504bc6c58a927a652f9653` |
| 24 | `theorem` | [finite_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/finite-support--62ed2cc75966e8baac50f7f0.md) | 241 | `result-track:62ed2cc75966e8baac50f7f072f577d376baaa3776e77ba7bcb17614659062ee` |
| 25 | `theorem` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/on--7d1d1ec95b79421d3bd65684.md) | 289 | `result-track:7d1d1ec95b79421d3bd656846e6f94a68b4d4bf94e682952caf557b3dde4b92e` |
| 26 | `theorem` | [finite_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4234ec48d0b0cf0030c7068c26aa9b716a043991c0b1dd670d560025cbc55a28.lean/declarations/finite-counterexample--94ae4008241b6fc90abf370d.md) | 314 | `result-track:94ae4008241b6fc90abf370dcb161b676a2bcc6e3628c0eb358147067ea15094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
