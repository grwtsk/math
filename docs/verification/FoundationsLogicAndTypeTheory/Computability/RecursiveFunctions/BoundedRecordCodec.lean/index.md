# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.BoundedRecordCodec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0475194a1faaf84d4c388d6f15157838cc6f614a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0475194a1faaf84d4c388d6f15157838cc6f614a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/bytes--6476a62e177e5553701b6cb4.md) | 6 | `declaration-track:6476a62e177e5553701b6cb40180691535c8321ad020a8b95d70c651c4fa41cf` |
| 2 | `inductive` | [Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/value--b39486eabd3b62dcf721ed42.md) | 7 | `declaration-track:b39486eabd3b62dcf721ed4267e7451111c503b1e9421c7bbf9c0603ad55ed48` |
| 3 | `def` | [digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/digits--221c80f2f3644bdd2d439ec1.md) | 16 | `declaration-track:221c80f2f3644bdd2d439ec18c3d94e9dce6583f22f94eb9d62886dc3dc7d4a4` |
| 4 | `def` | [signed](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/signed--1d929dd903a615c4d9b9c942.md) | 17 | `declaration-track:1d929dd903a615c4d9b9c94243e9112ee821974609d70de5c34ebe18c482136c` |
| 5 | `def` | [emit](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/emit--4e9912aa29fa9afdbcd3001f.md) | 19 | `declaration-track:4e9912aa29fa9afdbcd3001f8830c9a39e5dd074a0c3ffbbc4ae0d931fd2e6f8` |
| 6 | `def` | [signed64](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/signed64--5e0c853d52b7bf3832202193.md) | 35 | `declaration-track:5e0c853d52b7bf3832202193766f5df832972563dfc53061e9a067cdff53324c` |
| 7 | `def` | [utf8](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/utf8--e262814aece50fb01f4e50bf.md) | 37 | `declaration-track:e262814aece50fb01f4e50bf8355a302106f32c8554232e1d58425c798d9583e` |
| 8 | `def` | [increasing](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/increasing--77d5944247bee11cbf9cbe98.md) | 63 | `declaration-track:77d5944247bee11cbf9cbe9859ccc5debc842623b76a5fd53a6cc18d1b86a2bc` |
| 9 | `def` | [valueOK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/valueok--455c193b66284d66ed833e2c.md) | 68 | `declaration-track:455c193b66284d66ed833e2cee1c07e0fe08beecb22b21017f82f2a1e6f11df5` |
| 10 | `def` | [asText](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/astext--001bbdddf76568e238669d3f.md) | 90 | `declaration-track:001bbdddf76568e238669d3f4201d4341fa1111e2c915c7e0c451ebbe0437aad` |
| 11 | `def` | [nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/nonempty--37136a6fcd9493131e2ae94b.md) | 91 | `declaration-track:37136a6fcd9493131e2ae94b086de151bcbd0e7a9a3f47336ff1a90cc7ccd8b5` |
| 12 | `def` | [hashRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/hashref--41323c0b45130e8dc17b95a7.md) | 92 | `declaration-track:41323c0b45130e8dc17b95a7c436f5c1329f897baa8410872f9b8c9d0d64da1b` |
| 13 | `def` | [allArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/allarray--aab05daea5e1260d2237c783.md) | 96 | `declaration-track:aab05daea5e1260d2237c7833f7f7af40ae986c4942513fecb512fcae89e660d` |
| 14 | `def` | [hasKeys](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/haskeys--4ecd93088f634274b16c5593.md) | 97 | `declaration-track:4ecd93088f634274b16c5593b1fb82277033893a2b3840d24e14d67295e5d2b4` |
| 15 | `def` | [binderOK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/binderok--72586b4bf626f27766288270.md) | 99 | `declaration-track:72586b4bf626f277662882701ccfef554a1964c78ed5c449140c2db20d59eb8d` |
| 16 | `def` | [schema](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/schema--fd0a478bab138cc18805d014.md) | 104 | `declaration-track:fd0a478bab138cc18805d0144fc5cc95b80dfc169d71e61e6192524c777b0b0c` |
| 17 | `structure` | [Record](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/record--a6af4ea3cf01724d316623fd.md) | 124 | `declaration-track:a6af4ea3cf01724d316623fd277ad872b5faa78a902058a43911222a2a8d5228` |
| 18 | `def` | [envelope](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/envelope--40b51dbfddac5968b8bb92bb.md) | 129 | `declaration-track:40b51dbfddac5968b8bb92bb12d0c7e32800d2bc03924b4ca16bc299876ec617` |
| 19 | `def` | [bytes](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/bytes--8195fc835d1bf6fef3916ea4.md) | 130 | `declaration-track:8195fc835d1bf6fef3916ea4fe2edbc24d9e6c19555c23913aee5da4a1573e40` |
| 20 | `def` | [Supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/supported--2e9ac03b24b4f6f5e0707ceb.md) | 131 | `declaration-track:2e9ac03b24b4f6f5e0707ceb5e703e5919cbeae671f5da473b5451a7863331a5` |
| 21 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/splitat--b4a898ba9786959513fdd439.md) | 134 | `declaration-track:b4a898ba9786959513fdd439c1388a198227b45ec89b30b735b041c9dffe14eb` |
| 22 | `def` | [unsigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/unsigned--9d8ae025be13ff91aea447c8.md) | 137 | `declaration-track:9d8ae025be13ff91aea447c83a02f4d8eaf2f2422b8d23cf3c92fceb19f5cdff` |
| 23 | `theorem` | [unsigned_digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/unsigned-digits--27b95a07fef1c9adb9d54224.md) | 141 | `result-track:27b95a07fef1c9adb9d54224dbb25f1a6913863c858b966fe58956a355b2cf50` |
| 24 | `theorem` | [digits_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/digits-injective--db77f8517bd95a1b768e495e.md) | 155 | `result-track:db77f8517bd95a1b768e495e8732e9f333bbfbd803ff0d3e8027702b7cfeb081` |
| 25 | `theorem` | [splitAt_emit_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/splitat-emit-suffix--2f4730ff801cdc4a727c990d.md) | 160 | `result-track:2f4730ff801cdc4a727c990d9078f969b539ce6b0986862abb994865bcd2e46c` |
| 26 | `theorem` | [splitAt_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/splitat-reconstruct--3700f652186557260f985ef6.md) | 164 | `result-track:3700f652186557260f985ef6a75b56a656190680c6d6df2575d93d4031d8f318` |
| 27 | `theorem` | [no_trailing_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/no-trailing-reconstruction--76917dba8494301f9cddf8c0.md) | 171 | `result-track:76917dba8494301f9cddf8c01b11fd07115d86f408cdd431e699af7a5e704273` |
| 28 | `theorem` | [unsupported_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/unsupported-size--276362a2957467075f45c527.md) | 174 | `result-track:276362a2957467075f45c527d0569bb8d9ae1042653ff2cda741f5a384f18507` |
| 29 | `theorem` | [supported_schema](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/supported-schema--aa55ad6fb5b75d0f2d5ee20c.md) | 179 | `result-track:aa55ad6fb5b75d0f2d5ee20c81269cd49588403efdd0997dbb50b0a335189af4` |
| 30 | `theorem` | [zero_rational_noncanonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/zero-rational-noncanonical--a2e757740c416bf04539923c.md) | 181 | `result-track:a2e757740c416bf04539923c8d686d7020bd12205775493fe86b69ed40d25569` |
| 31 | `def` | [readUntil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readuntil--2d7d62a7a73e382bb8f24ae2.md) | 184 | `declaration-track:2d7d62a7a73e382bb8f24ae2b73c24f7e80e09262e65f1f1563da5a198dcecd5` |
| 32 | `def` | [readNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readnat--9d8e91a6d3425348a2b0ab09.md) | 190 | `declaration-track:9d8e91a6d3425348a2b0ab090e0c687c66b3c7fc3973743b86bf3afb9bccf80b` |
| 33 | `def` | [integer](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/integer--5cce7a2a8d89c644b8cca828.md) | 195 | `declaration-track:5cce7a2a8d89c644b8cca828bdd72b3141e8274064b8221686c4420556bd6f86` |
| 34 | `def` | [readMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readmany--a21a92e9d6eba2ffe933c5e0.md) | 204 | `declaration-track:a21a92e9d6eba2ffe933c5e029bea3fead0abea8003352a67638e706e92a6da4` |
| 35 | `def` | [readPairs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readpairs--8599953bbc8950dbe9114d7e.md) | 211 | `declaration-track:8599953bbc8950dbe9114d7e277c4af519ac4b53cc94e387fdc461d6f847080d` |
| 36 | `def` | [parseValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/parsevalue--773ea885798ba5638199f467.md) | 220 | `declaration-track:773ea885798ba5638199f4670a36fba2f316c15d25cdd85c5a8e4ff07939031e` |
| 37 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/decode--5f81aed4147418b4269edfb8.md) | 252 | `declaration-track:5f81aed4147418b4269edfb8ece20f38db13644322551ceb023fa51a95734020` |
| 38 | `theorem` | [readUntil_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readuntil-suffix--f7a43dc9c2c8ec546e0ba2fd.md) | 262 | `result-track:f7a43dc9c2c8ec546e0ba2fd030ffe055e3703ef8300cfc42bbae808e071d41d` |
| 39 | `theorem` | [parse_true_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/parse-true-suffix--4f0e79e836cd920206b7855b.md) | 271 | `result-track:4f0e79e836cd920206b7855bb14bfbe1b7b5fc6d6521f7d928e4ef081a724559` |
| 40 | `theorem` | [parse_false_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/parse-false-suffix--8d2fee039728bce68967df3f.md) | 274 | `result-track:8d2fee039728bce68967df3fdd03214c69748511cded1e0ac67266a0c008c59f` |
| 41 | `theorem` | [readMany_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readmany-zero--07aecfdddcbea2a23e511f07.md) | 277 | `result-track:07aecfdddcbea2a23e511f0766e0fc2fda4db3271277f323ae3b0f619a04868a` |
| 42 | `theorem` | [unique_decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/unique-decode--78a64428991827a9b56d2fa6.md) | 280 | `result-track:78a64428991827a9b56d2fa61a1e5891cd2db75571ae7cf9dd866465ae1af6a8` |
| 43 | `theorem` | [deterministic_rejection](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/deterministic-rejection--d9b5a478990dc716bd42e29f.md) | 285 | `result-track:d9b5a478990dc716bd42e29fd229af8def784d329096e231eeb5990d2a4e10c1` |
| 44 | `theorem` | [readNat_digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/readnat-digits--92991ca91bbde27fea4f5d35.md) | 288 | `result-track:92991ca91bbde27fea4f5d355df1f1cf9cb75a1c24f5944e8821444d02d20a3d` |
| 45 | `theorem` | [integer_signed](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/integer-signed--f89ee8913669b797e4534b75.md) | 296 | `result-track:f89ee8913669b797e4534b75088f48a0ba75d45750b9dbad56b3401ce7c2ef4a` |
| 46 | `theorem` | [parse_text_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean/declarations/parse-text-suffix--71f8790459527670f0e6a04f.md) | 308 | `result-track:71f8790459527670f0e6a04f91081cf8fa521e80dfa559572428e42d673ec8e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
