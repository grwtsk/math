# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c3aebb0cb6e8f873386b31ffccae664f826a74",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c3aebb0cb6e8f873386b31ffccae664f826a74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [biInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/biinter-mem--dd2fe403db402f9dd43eac28.md) | 34 | `result-track:dd2fe403db402f9dd43eac280b964c5f746b6d6d0f29f862f2ca782e01d985e9` |
| 2 | `theorem` | [biInter_finset_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/biinter-finset-mem--b8c19df5d44c9d7434771261.md) | 41 | `result-track:b8c19df5d44c9d7434771261612af5278e4b3cbbd7807fec56a7a7743c68595c` |
| 3 | `theorem` | [sInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/sinter-mem--de0a81ad37cedd3b5d7b9906.md) | 48 | `result-track:de0a81ad37cedd3b5d7b9906c64dddbcf4c7d7f63606c653a43b49d2eaced617` |
| 4 | `theorem` | [iInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinter-mem--0f3cdb33bbcf20aa70bd7372.md) | 52 | `result-track:0f3cdb33bbcf20aa70bd7372c95821ab1065cc28e8d8dc7a20345568b77d748e` |
| 5 | `theorem` | [mem_generate_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-generate-iff--91189a633b906b2fe50a2556.md) | 66 | `result-track:91189a633b906b2fe50a255608ad0db31b0bcf834f87ef7a37ecfb01848f61ad` |
| 6 | `theorem` | [mem_iInf_of_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf-of-iinter--0f4ba350924fd4fc3cb1e17f.md) | 84 | `result-track:0f4ba350924fd4fc3cb1e17f254fd9d4a661ac54f678bf4e58ff49a6aea372d2` |
| 7 | `theorem` | [mem_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf--b7ef326e88c6e56d42949dcd.md) | 90 | `result-track:b7ef326e88c6e56d42949dcd15ec142511d08b05a4caf0d465a6b449fb2f1631` |
| 8 | `theorem` | [mem_iInf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf--ae04b722a7e216809e24c5a4.md) | 110 | `result-track:ae04b722a7e216809e24c5a40f1a00aa3093d7bc7fbde43bf1ebd0306bf74f45` |
| 9 | `theorem` | [exists_iInter_of_mem_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/exists-iinter-of-mem-iinf--9b73f97cccaab731b17ceb0d.md) | 126 | `result-track:9b73f97cccaab731b17ceb0d6cbfda5f95ac982a22113f67b879456ddd312d1c` |
| 10 | `theorem` | [mem_iInf_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf-of-finite--ea114c264c0da4a89d49673f.md) | 133 | `result-track:ea114c264c0da4a89d49673f3300e068f23c4e775e95f00ea2ff9a64f85b2098` |
| 11 | `theorem` | [mem_biInf_principal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-biinf-principal--dd3a861b526bead3da2c24be.md) | 139 | `result-track:dd3a861b526bead3da2c24bead1692c6616310e7c036f40cf07cce23b38d856c` |
| 12 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Pairwise.exists_mem_filter_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--945954a9bce93a67dcbd2285.md) | 157 | `result-track:945954a9bce93a67dcbd228577996d08131ea29e3bb4aa7f27dab6559c452e01` |
| 13 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Set.PairwiseDisjoint.exists_mem_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--11654ec117cc1923bae16d81.md) | 168 | `result-track:11654ec117cc1923bae16d810d172a78399cca58c6c1235b8b092a759e90654e` |
| 14 | `theorem` | [iInf_sets_eq_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-sets-eq-finite--bd48c287ab2061472814fc91.md) | 178 | `result-track:bd48c287ab2061472814fc91bcc4f488209db56a3dff00aeea067057621be61c` |
| 15 | `theorem` | [iInf_sets_eq_finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-sets-eq-finite--83f5eb6511bb34f29137f336.md) | 183 | `result-track:83f5eb6511bb34f29137f33662ceea98bfd79c85cca4482c46bb7ba44693bae1` |
| 16 | `theorem` | [mem_iInf_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf-finite--5f1d27b85f72a5142e3a0fa9.md) | 187 | `result-track:5f1d27b85f72a5142e3a0fa96a81da275de6053ba9356bfa64f5261b72e9c96e` |
| 17 | `theorem` | [mem_iInf_finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf-finite--56badfa2beb148da93beab2c.md) | 191 | `result-track:56badfa2beb148da93beab2c5e595fb107f1de0f53ec1ceaa03a01e2a8647fe6` |
| 18 | `abbrev` | [coframeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/coframeminimalaxioms--a4f87019e063b1b83a1142fe.md) | 197 | `declaration-track:a4f87019e063b1b83a1142fefb1917df62542973fed3e0af46844a56b919114d` |
| 19 | `instance` | [instCoframe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/instcoframe--2d813c98c890648b9f33f6cf.md) | 211 | `declaration-track:2d813c98c890648b9f33f6cffbca8273577be7c4ba7da64e00402da41faf632c` |
| 20 | `theorem` | [mem_iInf_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/mem-iinf-finset--47ba5ce1df801ca14f7ee573.md) | 213 | `result-track:47ba5ce1df801ca14f7ee573a14f34ea44fecfacc0e491c75ac279a4f468e0ff` |
| 21 | `theorem` | [iInf_sets_induct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-sets-induct--1ff50de59555dfe6db18fb81.md) | 229 | `result-track:1ff50de59555dfe6db18fb811d5789fe0b486e63b6c5f1376c942726b2400d17` |
| 22 | `theorem` | [iInf_principal_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-principal-finset--ba061b87f2364fb26cbd214a.md) | 245 | `result-track:ba061b87f2364fb26cbd214a224e4a43ef2cf1da5e2492c80e4b37f91140305c` |
| 23 | `theorem` | [iInf_principal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-principal--88cad2cc17027edf1b594ea8.md) | 252 | `result-track:88cad2cc17027edf1b594ea8492e3ca89b86e4a52e67f53735e6f856ef972b5b` |
| 24 | `theorem` | [iInf_principal'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-principal--c403fa5afe7c0520208e3eed.md) | 259 | `result-track:c403fa5afe7c0520208e3eed0d165271f474abd8e8c90d804b206f155ce0c1f8` |
| 25 | `theorem` | [iInf_principal_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/iinf-principal-finite--c513e3672de0b94a8ed6ed07.md) | 262 | `result-track:c513e3672de0b94a8ed6ed07d03285f873749b31753dff15c254d75612895ef7` |
| 26 | `theorem` | [eventually_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventually-all--46a1da4b72256ca583460ef5.md) | 272 | `result-track:46a1da4b72256ca583460ef571adb1b81214e6e884a1908786df680b9ce3e190` |
| 27 | `theorem` | [eventually_all_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventually-all-finite--d587a47125bc308fada6b9a1.md) | 277 | `result-track:d587a47125bc308fada6b9a1f425dbe4882470426d4b256f26324e35ed0718d5` |
| 28 | `theorem` | [eventually_all_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventually-all-finset--f6b99417c81880daf0171c0b.md) | 285 | `result-track:f6b99417c81880daf0171c0ba858bdaab1525a76e085977dfd226179d6653c9d` |
| 29 | `lemma` | [EventuallyLE.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventuallyle-iunion--22c6e13243acbf696d1b4f2a.md) | 302 | `result-track:22c6e13243acbf696d1b4f2ac6baf10d9fbe1d459b15ce4cf944094853458f77` |
| 30 | `lemma` | [EventuallyEq.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventuallyeq-iunion--6c6af14a89d03815f5b3dfd8.md) | 307 | `result-track:6c6af14a89d03815f5b3dfd897f4c641a500a6e970428c0556234959b7f9bcc2` |
| 31 | `lemma` | [EventuallyLE.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventuallyle-iinter--b954f2fab45e66ce06154452.md) | 311 | `result-track:b954f2fab45e66ce06154452cf175fc125370f1629d7b6caed9d300d4b50823f` |
| 32 | `lemma` | [EventuallyEq.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/eventuallyeq-iinter--0dac95c7e023a4792aa2426e.md) | 315 | `result-track:0dac95c7e023a4792aa2426e64fdb8ebc2e66cdadbd361c447398d245e15f90f` |
| 33 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Set.Finite.eventuallyLE_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--933b48487e197a9fc41a50f3.md) | 319 | `result-track:933b48487e197a9fc41a50f34df60c260ddda91309ca83c5fc3d185a0545730b` |
| 34 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Set.Finite.eventuallyEq_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--a85fa29dca0bb0bc086aa1de.md) | 327 | `result-track:a85fa29dca0bb0bc086aa1dec6ba9408ae765261f87acfcffe6e656c0d12e9c7` |
| 35 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Set.Finite.eventuallyLE_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--3e0dc11f865d3b8546097e8a.md) | 334 | `result-track:3e0dc11f865d3b8546097e8a9e3525437f4cb84f1ce3323bb1735c60cc90cb59` |
| 36 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Set.Finite.eventuallyEq_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--e2fecfd3bf9fd425e49e769e.md) | 342 | `result-track:e2fecfd3bf9fd425e49e769e886b51b2045c13b1e2a635eb35f9efd3e95ddf60` |
| 37 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Finset.eventuallyLE_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--b666a3cb31f191f938af4cd2.md) | 349 | `result-track:b666a3cb31f191f938af4cd2b61f1e3431cc8569ec2d2f55b649227b5d3f0897` |
| 38 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Finset.eventuallyEq_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--2a2339c60ccc1f561fcfc8b4.md) | 353 | `result-track:2a2339c60ccc1f561fcfc8b435b03b70a4d88b2babfa0c80e2784d3e5d745a33` |
| 39 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Finset.eventuallyLE_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--d85557cc28922547e5f9bfc0.md) | 357 | `result-track:d85557cc28922547e5f9bfc0b84959d61a9e8cac7725b6baa61dd99dd64fc080` |
| 40 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.Finset.eventuallyEq_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variant188100--60d177c322dfd66407a2efc6.md) | 361 | `result-track:60d177c322dfd66407a2efc6854cc31541853adefc6c334c078270a9efde699a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
