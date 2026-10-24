# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b6a87c39499f4617e9dcf845854f0e00c0780a0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b6a87c39499f4617e9dcf845854f0e00c0780a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ApplicativeTransformation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/applicativetransformation--f03f170cc8127788b27f407b.md) | 80 | `declaration-track:f03f170cc8127788b27f407be3ea1f0e9f5e02843d6e8ef907b0eac767995980` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--e87aa0e4efc687eb63585a99.md) | 97 | `declaration-track:e87aa0e4efc687eb63585a99709d26c8f22de0b2eafc07665cef9f3be9d37871` |
| 3 | `theorem` | [app_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/app-eq-coe--5e725e2c50b7f705256dea67.md) | 103 | `result-track:5e725e2c50b7f705256dea67c6862489a7bc1d54da5feb617e13bd8ff9499cb3` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/coe-mk--8e972cad495b992570ad7fac.md) | 108 | `result-track:8e972cad495b992570ad7facd28ca0e06c5f67a8c57fbdaf32679e09ca1c843a` |
| 5 | `theorem` | [congr_fun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/congr-fun--ce0d2b4466837f373cea869d.md) | 113 | `result-track:ce0d2b4466837f373cea869d28abcd80e759e5175dc80001514336999d59294a` |
| 6 | `theorem` | [congr_arg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/congr-arg--57703b5dcba90835a97a2341.md) | 118 | `result-track:57703b5dcba90835a97a234121faeb490aae16f268ee301660556a14c6afef56` |
| 7 | `theorem` | [coe_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/coe-inj--1341e5213c8246d3b8d24b2e.md) | 123 | `result-track:1341e5213c8246d3b8d24b2ec1743aee0256648aa52a10807208f6a22ec7b0dc` |
| 8 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/ext--cb34f22e09478a797f2abcdb.md) | 131 | `result-track:cb34f22e09478a797f2abcdb717fc9b114fc1f546b09a1ffee4142f59e80f06c` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/ext-iff--b898896628f353cf9293c16f.md) | 138 | `result-track:b898896628f353cf9293c16f7de865df91da3d4bebcfbe680e296a103285436b` |
| 10 | `theorem` | [preserves_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/preserves-pure--c74122afccbac8de669d376f.md) | 148 | `result-track:c74122afccbac8de669d376f072461e511a5c9b7a0e3017935d084083172ced2` |
| 11 | `theorem` | [preserves_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/preserves-seq--0a23a69b0fd006111ef09046.md) | 153 | `result-track:0a23a69b0fd006111ef09046997ef4b36ab4c6d8201a656b614663f3ef4d13f3` |
| 12 | `theorem` | [preserves_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/preserves-map--4da91f95bce8bab1640786f4.md) | 158 | `result-track:4da91f95bce8bab1640786f459ad56e94a78c1f4f7e31815b9e262924ce96952` |
| 13 | `theorem` | [preserves_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/preserves-map--b33aa9739f9d0840f3920fd2.md) | 162 | `result-track:b33aa9739f9d0840f3920fd2982847c319485941f6c04702cec38dd7595da79e` |
| 14 | `def` | [idTransformation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/idtransformation--6e1abda698f5278f214c249a.md) | 170 | `declaration-track:6e1abda698f5278f214c249a8aaa3be3eb3fdd9ba653f8f0cd4e4be09f054575` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--76e1d278f3d13e4f38824e57.md) | 176 | `declaration-track:76e1d278f3d13e4f38824e578df05a0a94acda0bfbdcb0c46d5c473532784584` |
| 16 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/comp--a884bc250066d8652350f5a0.md) | 184 | `declaration-track:a884bc250066d8652350f5a04fd95cc91caf6367bc22aad71fdcc93dfacc0c89` |
| 17 | `theorem` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/comp-apply--6f9c3dd221a9f683e155fe4b.md) | 194 | `result-track:6f9c3dd221a9f683e155fe4b24d825f5a7f2577a413f5142c0c1c4acab49e920` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/comp-assoc--9b0d7bb43a5c5f414417e094.md) | 201 | `result-track:9b0d7bb43a5c5f414417e0946b24bcf9e69eaec1187597a4a2f80719a948a3f1` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/comp-id--7e6dc9ad8ff750c467ebb62f.md) | 208 | `result-track:7e6dc9ad8ff750c467ebb62f96c7daba3ce137c5c9fb9a0ba17c8c17dad4ef26` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/id-comp--11d7697a9c181119821edf95.md) | 213 | `result-track:11d7697a9c181119821edf9587831f4c28e498d08e60bcea33eb6df7a7387b3a` |
| 21 | `class` | [Traversable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/traversable--5a26fb1f1c48ecd90f97816a.md) | 226 | `declaration-track:5a26fb1f1c48ecd90f97816a16efa85909aa61e66cfae02b62cf8c805b65369e` |
| 22 | `def` | [sequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/sequence--6adeea13cc168f4eafc25f33.md) | 246 | `declaration-track:6adeea13cc168f4eafc25f33cb3d348ced5ae8fcd51da2e04f651a5546972aab` |
| 23 | `class` | [LawfulTraversable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/lawfultraversable--c8f3aabddd7e8bec369d58f5.md) | 258 | `declaration-track:c8f3aabddd7e8bec369d58f5076431a263fff587528ebd5bce32cd420a4a501e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--7c27f9877f83d780a36afd93.md) | 278 | `declaration-track:7c27f9877f83d780a36afd9358f5e0de11b2c1c859e8119a8e34281eee8de723` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--2f0d0f2dacb3b1a5a73b0f53.md) | 281 | `declaration-track:2f0d0f2dacb3b1a5a73b0f5328161e88a2e98a87beddfcdd24386e1e6092bffc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--590c3311127d527fdf69c2bf.md) | 287 | `declaration-track:590c3311127d527fdf69c2bfd1307bc227836eb0e461d5d654232bd65c2031a7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--e6a87ba611b8e0a7776a1a91.md) | 290 | `declaration-track:e6a87ba611b8e0a7776a1a9147f34d154de9a7c7c898857ce8fc4155f2fb2466` |
| 28 | `def` | [traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/traverse--25c6685242bbe88f0bfe4daf.md) | 321 | `declaration-track:25c6685242bbe88f0bfe4daf39b186c4962842669de6757cd4d51e0223e67948` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfec56611d318a99a5f2c74c6ac36e9b4366413a99af0842d877ad7b3207c4a60.lean/declarations/instance--cf0300eb4b4e1a88ea1e25a5.md) | 328 | `declaration-track:cf0300eb4b4e1a88ea1e25a5948d83e8776289d255830d05b3db8f83a6eae2de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
