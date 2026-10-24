# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Subset.Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b9129e22dbfdf61d149520e0deff1a445fd393",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b9129e22dbfdf61d149520e0deff1a445fd393`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.NetEntropy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsDynCoverOf.monotone_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/isdyncoverof-monotone-subset--1330afe5afc9eab9630c7ca0.md) | 54 | `result-track:1330afe5afc9eab9630c7ca04ad358014dccd9e75b0bed39e7788815c31b8230` |
| 2 | `lemma` | [IsDynNetIn.monotone_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/isdynnetin-monotone-subset--156d3fe67abaf84922c1aed2.md) | 59 | `result-track:156d3fe67abaf84922c1aed2d2e7c0c1dfba2e802fcbc5ff1d87e30805f6e050` |
| 3 | `lemma` | [coverMincard_monotone_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/covermincard-monotone-subset--b94872225137c0a26c8c830c.md) | 64 | `result-track:b94872225137c0a26c8c830cad805f4d91431de125d7c3037936ba02e1311821` |
| 4 | `lemma` | [netMaxcard_monotone_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/netmaxcard-monotone-subset--f323e953b1ea02b1d477fe67.md) | 68 | `result-track:f323e953b1ea02b1d477fe677ee2e80c92852ae1123572ce206e805f2c1635d9` |
| 5 | `lemma` | [coverEntropyInfEntourage_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinfentourage-monotone--9871f7646dcc311e6564b78e.md) | 72 | `result-track:9871f7646dcc311e6564b78e78544b1e3e33e931b5377b6fed78768dc4c4f84f` |
| 6 | `lemma` | [coverEntropyEntourage_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyentourage-monotone--80d6cc56534e8cec4734a051.md) | 77 | `result-track:80d6cc56534e8cec4734a0519a320302a93291603a101f9955c2bc7a54b30f87` |
| 7 | `lemma` | [netEntropyInfEntourage_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/netentropyinfentourage-monotone--91afc8b51fe7e4a4ddd2234a.md) | 82 | `result-track:91afc8b51fe7e4a4ddd2234af3d8713b4856c536adde83b85641651dc5f5a869` |
| 8 | `lemma` | [netEntropyEntourage_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/netentropyentourage-monotone--5e9b6188dfe9a00909004392.md) | 87 | `result-track:5e9b6188dfe9a009090043926981a3e4e9384c036abd12d607c09a3d80654d1f` |
| 9 | `lemma` | [coverEntropyInf_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinf-monotone--b20df4573356966c198007cb.md) | 92 | `result-track:b20df4573356966c198007cbac787e3085a1c4cd1da04cd9ca234a34de434d2f` |
| 10 | `lemma` | [coverEntropy_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-monotone--60d715cc4306e4304290a9d1.md) | 96 | `result-track:60d715cc4306e4304290a9d14df0daf95dac0427be16cdae9848409c7857bf7f` |
| 11 | `lemma` | [IsDynCoverOf.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/isdyncoverof-closure--e74514112af0bead8c6e1cbf.md) | 108 | `result-track:e74514112af0bead8c6e1cbf275529166dfc8265537c840fcc222df3c5c5cb6e` |
| 12 | `lemma` | [coverMincard_closure_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/covermincard-closure-le--aa9bc835cf6a6c4e7f057e0e.md) | 119 | `result-track:aa9bc835cf6a6c4e7f057e0e1e8c7eddd24a0491366c6fc5f2db10fa0a63074e` |
| 13 | `lemma` | [coverEntropyInfEntourage_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinfentourage-closure--78d026225c0531112c4df8e4.md) | 127 | `result-track:78d026225c0531112c4df8e484f7c06a30cf98dad3f2823343dd0297818ed449` |
| 14 | `lemma` | [coverEntropyEntourage_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyentourage-closure--2fa4f9a322e23c2e2ba4586f.md) | 132 | `result-track:2fa4f9a322e23c2e2ba4586fbe3cab9433bdbcc7bdad83bdd91f01632e971121` |
| 15 | `lemma` | [coverEntropyInf_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinf-closure--ec6e61bc77482b38e63a1717.md) | 137 | `result-track:ec6e61bc77482b38e63a17175ae16d1611395fbbc699e44c680045b5000f542a` |
| 16 | `theorem` | [coverEntropy_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-closure--c7f8de76a30a7e52022a19c3.md) | 144 | `result-track:c7f8de76a30a7e52022a19c363c35c9d005a4f84b1197639ca3e4e7039f3d020` |
| 17 | `lemma` | [IsDynCoverOf.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/isdyncoverof-union--f15c3cffac88917bcbe4121f.md) | 157 | `result-track:f15c3cffac88917bcbe4121fe97189757de1352b45bd89dacebb31b3137e3a3d` |
| 18 | `lemma` | [coverMincard_union_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/covermincard-union-le--1c716df4a0f195e25370f00d.md) | 163 | `result-track:1c716df4a0f195e25370f00db5886ac2ebb4194c668295378641853877ef07e4` |
| 19 | `lemma` | [coverEntropyEntourage_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyentourage-union--224b8180a41670054a36eb4d.md) | 177 | `result-track:224b8180a41670054a36eb4df43b086d98e6a53ee0916a7562fa924b4fb8a4b7` |
| 20 | `lemma` | [coverEntropy_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-union--0023beb52378031ebe5f9c0a.md) | 189 | `result-track:0023beb52378031ebe5f9c0a7ffb8b420808ec7213e80db6fab0c1269f13ec83` |
| 21 | `lemma` | [coverEntropyInf_iUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinf-iunion-le--bf7f1113aa383f99e4cc3168.md) | 194 | `result-track:bf7f1113aa383f99e4cc3168512d4da075d7bcf4c744ba579020211e46176c6b` |
| 22 | `lemma` | [coverEntropy_iUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-iunion-le--95ccfb184a0cc49391140769.md) | 198 | `result-track:95ccfb184a0cc49391140769ee57306a72e9044f95a27eec76040c280e6158c7` |
| 23 | `lemma` | [coverEntropyInf_biUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropyinf-biunion-le--758cd1b988bcb8f9983d7158.md) | 202 | `result-track:758cd1b988bcb8f9983d7158e353237ef60865d2ecf022f34e515519f3256503` |
| 24 | `lemma` | [coverEntropy_biUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-biunion-le--4cbabecc910f0a5728bc33cc.md) | 206 | `result-track:4cbabecc910f0a5728bc33cce6780d5650970ed4d599df6e10a1ffd660139f37` |
| 25 | `def` | [coverEntropy_supBotHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-supbothom--04cef0a696a5fd09cec87dfb.md) | 211 | `declaration-track:04cef0a696a5fd09cec87dfb95f3d515f9ef7b10e8dd8f92d22ebd94a9eafd66` |
| 26 | `lemma` | [coverEntropy_iUnion_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-iunion-of-finite--a07e171b0a3bef0eebb570a1.md) | 217 | `result-track:a07e171b0a3bef0eebb570a1bb4bfff164d9161084f10e188c73a7de0a396816` |
| 27 | `lemma` | [coverEntropy_biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/declarations/coverentropy-biunion-finset--380b99afb2258c8fc28a7224.md) | 221 | `result-track:380b99afb2258c8fc28a722465d9e0cac2eb0951fa12a7105ddcd4203d5645d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
