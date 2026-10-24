# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a2cf424f08b8f528d06d94fec5068b8c8ec9847",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a2cf424f08b8f528d06d94fec5068b8c8ec9847`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.HashMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findEntry?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/findentry--535c32622527c6e3dbd08e30.md) | 33 | `declaration-track:535c32622527c6e3dbd08e30975293b8d9caacf88431f05c66cb02be2c35aa97` |
| 2 | `def` | [ofListWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/oflistwith--3f18bda584e3e027d2ff52bc.md) | 42 | `declaration-track:3f18bda584e3e027d2ff52bcc23f03025f1a8412d53051ee3546a7ca8fb25d89` |
| 3 | `class` | [LawfulHashable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/lawfulhashable--8f3c7b1859d5ed2cd21dbf64.md) | 53 | `declaration-track:8f3c7b1859d5ed2cd21dbf640dd6bd8d7e5eb9b49aa2dfb90cb2925fe75d290f` |
| 4 | `structure` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LawfulHashable.Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.Batteries.HashMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-la--55a10dc3c5afef0d53d1f77d.md) | 65 | `declaration-track:55a10dc3c5afef0d53d1f77dc4321ea6a518a65df6ba8c9e05f7f59b53b5a891` |
| 5 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LawfulHashable.Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.Batteries.mkHashMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-la--21ca12d96f5836c40ce5b2a8.md) | 72 | `declaration-track:21ca12d96f5836c40ce5b2a8317b3de7bf992e48e6d8e9bf3ab9464aad24e4f8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/instance--7e811024b8e307cad2353a07.md) | 75 | `declaration-track:7e811024b8e307cad2353a076137482f7b9a66c8626da58a89b2598103eb05e4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/instance--58a9f019a32b2fa46e19bea6.md) | 78 | `declaration-track:58a9f019a32b2fa46e19bea6ac3340808c7a18c0d3a564b3b4559fc1ab900445` |
| 8 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/empty--ce74b2932ba61379ba9e58dc.md) | 86 | `declaration-track:ce74b2932ba61379ba9e58dcf75111fbafffa0ae1206d0976aa750499138edf0` |
| 9 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/size--50d0b2efea63d97daed92e48.md) | 96 | `declaration-track:50d0b2efea63d97daed92e48d28e234a4a99b115abce9f417faaecf9dd12fb2d` |
| 10 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/isempty--6df9d1a9cc278ebbc2e83b93.md) | 105 | `declaration-track:6df9d1a9cc278ebbc2e83b93151679c1f69a09ddec10bebde49b370fcba468a2` |
| 11 | `def` | [insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/insert--9a8a1dcc992a46c793fefbd6.md) | 116 | `declaration-track:9a8a1dcc992a46c793fefbd6bc1e364b77e69e6062547e3491fb857026a949d5` |
| 12 | `def` | [insert'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/insert--5365c724daf394a04aeeb8ee.md) | 128 | `declaration-track:5365c724daf394a04aeeb8eee8984e78fbee3dc14f6f3d094703fdd113fb236f` |
| 13 | `def` | [erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/erase--9a251966265c3efd84d383be.md) | 140 | `declaration-track:9a251966265c3efd84d383bebbab7effd76f9e9cb498812dfc39240909b9c297` |
| 14 | `def` | [modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/modify--3080471b740c88f24c4fbe0f.md) | 150 | `declaration-track:3080471b740c88f24c4fbe0f8cca36d5ee96238c1e3c02ddf44bdd813620dc60` |
| 15 | `def` | [find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/find--1504f1d605bfa05f8d932bb4.md) | 161 | `declaration-track:1504f1d605bfa05f8d932bb46a16e985a89fd13b0bd98a13e33043cf49cd26de` |
| 16 | `def` | [findD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/findd--75197f7ec031da30c9067b08.md) | 171 | `declaration-track:75197f7ec031da30c9067b0865a778826b1808206fa7b2a2dd34f02afcc4602c` |
| 17 | `def` | [find!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/find--936fec5e5558fbf9026da665.md) | 181 | `declaration-track:936fec5e5558fbf9026da6655a88099e51a1b342912029a8ad60aa912aa7cc81` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/instance--60120d4ca4debddc729abe3c.md) | 184 | `declaration-track:60120d4ca4debddc729abe3c24b3c4b97bfd1930886327e211d81f6b4ed60b63` |
| 19 | `def` | [findEntry?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/findentry--1afc806b6c4db3ed3b054114.md) | 199 | `declaration-track:1afc806b6c4db3ed3b05411472ba3fd1144306f4a52d3b9b8cfc851ad5cfa803` |
| 20 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/contains--825908c620eff2614daf349d.md) | 210 | `declaration-track:825908c620eff2614daf349d7f403b1647df47262d50d238033b860c208fceff` |
| 21 | `def` | [foldM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/foldm--7f0db35c73b730b0790d6c3a.md) | 223 | `declaration-track:7f0db35c73b730b0790d6c3a7fba8b0ab7781f2992e0ea37bbac07918125001d` |
| 22 | `def` | [fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/fold--c4b0c9f85b1955148b7f37d6.md) | 232 | `declaration-track:c4b0c9f85b1955148b7f37d60b94774eb19f12587d3fa52bfa1b00f89b7822e1` |
| 23 | `def` | [mergeWithM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/mergewithm--1acd4fd2ffef1004b5b7a66b.md) | 249 | `declaration-track:1acd4fd2ffef1004b5b7a66b9dc6ea7dc6bd04471a72b3d8432eef989949b7c7` |
| 24 | `def` | [mergeWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/mergewith--870ecd561e003380cc8c5bdb.md) | 261 | `declaration-track:870ecd561e003380cc8c5bdb32a3a2599c4af8dd5014dc9427655c1fdd48fc7b` |
| 25 | `def` | [forM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/form--d03f45831372ba77d7e520dd.md) | 274 | `declaration-track:d03f45831372ba77d7e520ddbaa780efe2a0b57a983adc960dffe1b536686caf` |
| 26 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/tolist--70b03c7469fb23038d844d6b.md) | 284 | `declaration-track:70b03c7469fb23038d844d6b2fc129c0a1b4443d39ea9407df5e10a1cd0f5c0d` |
| 27 | `def` | [toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/toarray--05741d2f35af6bc3cf56a569.md) | 293 | `declaration-track:05741d2f35af6bc3cf56a5691dce5d3ec980daa7f4bc57f5b3588ec31cc378b1` |
| 28 | `def` | [numBuckets](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/numbuckets--eb87bb148edbbfea758bb09c.md) | 296 | `declaration-track:eb87bb148edbbfea758bb09cecee31b20b12c972e830034638112a2029cfe627` |
| 29 | `def` | [ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/oflist--83ae3dae19a90d1b3f4e99de.md) | 305 | `declaration-track:83ae3dae19a90d1b3f4e99dea68f57595794fa0d7907d5dd493402485ad5d9d4` |
| 30 | `def` | [ofListWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant17615c3196019267b5d0bcc841896910c5640a6fecf98977651afb1898d4aa7c.lean/declarations/oflistwith--9acd4a5bfdba6ee29a73b110.md) | 314 | `declaration-track:9acd4a5bfdba6ee29a73b110ee77ee96dfe2f178cccccc3a3f937d4a4b096aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
