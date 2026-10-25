# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.PartrecCode.Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b70c96c4dc430a86a207a02068c0aa2e16f3254",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b70c96c4dc430a86a207a02068c0aa2e16f3254`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/rfind--98b160b64f5af8e7a5bf3491.md) | 56 | `result-track:98b160b64f5af8e7a5bf34917d46dec2f0a5af5665b8f3258b553406e235e995` |
| 2 | `inductive` | [Code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/code--5c283d4268d886f7f14cac8c.md) | 81 | `declaration-track:5c283d4268d886f7f14cac8c03de206c812bfc90a4da0293c94cb8ed8f5db481` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/instinhabited--4693fbc3db6a7d7778cdcba6.md) | 97 | `declaration-track:4693fbc3db6a7d7778cdcba61a63b80459ce30068eef4e6ca4b20a78fa2d91e8` |
| 4 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/const--160909810bbfc80c406a00a4.md) | 101 | `declaration-track:160909810bbfc80c406a00a429fb5d9fb5e319b0ef464a08ed7435782b8889a2` |
| 5 | `theorem` | [const_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/const-inj--353ea93c4d00d9b12f632759.md) | 105 | `result-track:353ea93c4d00d9b12f632759c88040ce4d0501fb83c92dac884b7f69ad7e4c4d` |
| 6 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/id--3ab47139076e13f41445f3af.md) | 113 | `declaration-track:3ab47139076e13f41445f3afccd4b09962acba13654fdb5213d431c14056dc0f` |
| 7 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/curry--071c954194162411eaabd6a7.md) | 118 | `declaration-track:071c954194162411eaabd6a7fca410073c9ebf8b6440e72d6f0d55a4bc70408f` |
| 8 | `def` | [encodeCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encodecode--e6d58b3a2ab46141f850e7bd.md) | 122 | `declaration-track:e6d58b3a2ab46141f850e7bde7e0293e30496a7b71ab6402ecd65c724c6d814e` |
| 9 | `def` | [ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/ofnatcode--7b57ef36a83092d59de7f1ec.md) | 135 | `declaration-track:7b57ef36a83092d59de7f1ec53b326d36c3daf84564c6885780d454ee04ea75a` |
| 10 | `theorem` | [encode_ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encode-ofnatcode--3934eec485df78f51c6fba52.md) | 156 | `result-track:3934eec485df78f51c6fba52f909bbec701d2d99b5001b19013f3f3e0d70af56` |
| 11 | `instance` | [instDenumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/instdenumerable--9a0e9c5b500961fcc319c378.md) | 178 | `declaration-track:9a0e9c5b500961fcc319c378013cc8f107babe560e491b2ebcf52b20de420a74` |
| 12 | `theorem` | [encodeCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encodecode-eq--c8a296a8b5e3fbc9739cbe7e.md) | 184 | `result-track:c8a296a8b5e3fbc9739cbe7ec880b20c9e61b52a1448ceab515c3a7b8f85350f` |
| 13 | `theorem` | [ofNatCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/ofnatcode-eq--fa8aba258c38a74e0d76cf22.md) | 187 | `result-track:fa8aba258c38a74e0d76cf22db57fd205d684f63a84aa5fd1d73912638821b60` |
| 14 | `theorem` | [encode_lt_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encode-lt-pair--b1dd03545931cf69a65aada7.md) | 190 | `result-track:b1dd03545931cf69a65aada79e027d0cbd3889c05d3467cae7a298cd23a2eed9` |
| 15 | `theorem` | [encode_lt_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encode-lt-comp--c36e3f363747138165710ada.md) | 198 | `result-track:c36e3f363747138165710ada0af9c1b20d334998ddb099d54c6e9433493feaae` |
| 16 | `theorem` | [encode_lt_prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encode-lt-prec--d18d02c8df94ec0fd482d31e.md) | 203 | `result-track:d18d02c8df94ec0fd482d31ee1520b4b0f231b12414d9690ed7230217cd58e6d` |
| 17 | `theorem` | [encode_lt_rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/encode-lt-rfind--7ca564e2f65d8ec3b722bb88.md) | 208 | `result-track:7ca564e2f65d8ec3b722bb887e320bc5dcd592eb3f5c06ce708b43fa19e4f77e` |
| 18 | `theorem` | [primrec₂_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-pair--6902ce0310a1388539fefbef.md) | 218 | `result-track:6902ce0310a1388539fefbeff71757ab6fed799d167cf837b8ab4f231c4bf5c9` |
| 19 | `theorem` | [primrec₂_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-comp--427a8a956346c5b8a84ed19a.md) | 230 | `result-track:427a8a956346c5b8a84ed19aa8d74ac6ca40af80e3a9a0864f8068fbeabf2b44` |
| 20 | `theorem` | [primrec₂_prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-prec--d7f07b88cc4f3c74dff16b64.md) | 242 | `result-track:d7f07b88cc4f3c74dff16b64869704cee8e7ca9bd1c80a13fbe3438bde7c7307` |
| 21 | `theorem` | [primrec_rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-rfind--c0f54739497f6325ea2409f6.md) | 254 | `result-track:c0f54739497f6325ea2409f644fac3bc069e54109166f6f1985b73f748b6581a` |
| 22 | `theorem` | [primrec_recOn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-recon--b100fbbb4a119602c91730ae.md) | 264 | `result-track:b100fbbb4a119602c91730ae5219616e327b0da0fb29f42005c71fc9689a078b` |
| 23 | `theorem` | [primrec_recOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-recon--0637bd70a6ecd86b1a9d74b8.md) | 348 | `result-track:0637bd70a6ecd86b1a9d74b86bed2f600286caea19459117a1410236f8aab426` |
| 24 | `theorem` | [computable_recOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/computable-recon--1498dc0462f3cdc695fbbd89.md) | 378 | `result-track:1498dc0462f3cdc695fbbd89cac7b42659765927cc975d1080a2d71c922c11d8` |
| 25 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval--9b66b26bc9fe217bf3a6c052.md) | 478 | `declaration-track:9b66b26bc9fe217bf3a6c052a4d906ed76fbb038f719ab2f62fed8b063963c7d` |
| 26 | `theorem` | [eval_prec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-prec-zero--f90377ba39c645417dd720c5.md) | 496 | `result-track:f90377ba39c645417dd720c506cadb1c341fee4bcc11ceb71d0aa5e78c1c0e2b` |
| 27 | `theorem` | [eval_prec_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-prec-succ--19da54e291a045d3d8c05580.md) | 502 | `result-track:19da54e291a045d3d8c055804b4c051fc3a671aabc7b84fbf794a8b5f1c658ee` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/instance--7cec0cf56c7e514df5229d9d.md) | 508 | `declaration-track:7cec0cf56c7e514df5229d9d511748002aa3ff317cf0163306e181a45b674d39` |
| 29 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-const--9343a446e45b7e544c434355.md) | 512 | `result-track:9343a446e45b7e544c434355e6fb7fc8cc905fbf245219a6350982bdf893a7f9` |
| 30 | `theorem` | [eval_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-id--66bcffc9c6bf845f2a71934c.md) | 517 | `result-track:66bcffc9c6bf845f2a71934cc0d7c11cd36afe7d9ad6de755b0982c85c4398ba` |
| 31 | `theorem` | [eval_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-curry--e42dec43472b0492edee2bc2.md) | 520 | `result-track:e42dec43472b0492edee2bc2fc86ad07edaa9a30816af326dd3938c5b35cfeae` |
| 32 | `theorem` | [primrec_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-const--8d68cc13a3180950cc8964d3.md) | 522 | `result-track:8d68cc13a3180950cc8964d3bf4f6a63a71687affb49e1e9e4d812c3ff1d04a8` |
| 33 | `theorem` | [primrec₂_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-curry--a71197c67561ae77da998d16.md) | 530 | `result-track:a71197c67561ae77da998d1683e407ac38c9f22693939a020f9da4b44dbd334b` |
| 34 | `theorem` | [curry_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/curry-inj--fb40a9130558d9e4771c75d1.md) | 536 | `result-track:fb40a9130558d9e4771c75d1952a48a768c5b13bf8fce7094e3518950126db42` |
| 35 | `theorem` | [smn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/smn--627b5730dba20f24e7f1a9ff.md) | 546 | `result-track:627b5730dba20f24e7f1a9ff77d4751869284008e7900d8e38b18a9174b1a08e` |
| 36 | `theorem` | [exists_code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/exists-code--b62fbc34d0e61db80a04980d.md) | 552 | `result-track:b62fbc34d0e61db80a04980d121afaf5ceefc6592c5de12cdd94ff58fb12a985` |
| 37 | `def` | [evaln](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln--78d723d3514a82a9da83e2a4.md) | 587 | `declaration-track:78d723d3514a82a9da83e2a4d0994620540cd8f254ce4ce9fb51869c53c245be` |
| 38 | `theorem` | [evaln_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln-bound--dbb9eff2759d180ebfb0b7a6.md) | 623 | `result-track:dbb9eff2759d180ebfb0b7a6f64f2967a57ca9301b51f00aae986b2dee39fa01` |
| 39 | `theorem` | [evaln_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln-mono--e9084e6ab8c670f10f3e9eb2.md) | 630 | `result-track:e9084e6ab8c670f10f3e9eb2909e413c7f1427662fa3f4134cccfafd1c53c299` |
| 40 | `theorem` | [evaln_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln-sound--d298d052a753d8e0186d8fb9.md) | 668 | `result-track:d298d052a753d8e0186d8fb9ab6e7215793df62d878763c58eecf040c6c00446` |
| 41 | `theorem` | [evaln_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln-complete--58e1021625ff48f62b263c7e.md) | 705 | `result-track:58e1021625ff48f62b263c7e7f248c87342dda05d9b5d4f2e0edd511a0ddbac9` |
| 42 | `def` | [lup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/lup--450ef78ad276b70d1cf3d84e.md) | 777 | `declaration-track:450ef78ad276b70d1cf3d84e5243f0ff85b56789ae6d1599fdba21b542bffe2a` |
| 43 | `theorem` | [hlup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/hlup--c60a7da0e752b1d7bc7e50ef.md) | 782 | `result-track:c60a7da0e752b1d7bc7e50ef67a71412f038ee27f17de5a1e2952977dce26966` |
| 44 | `def` | [G](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/g--bc6655ac77d2cc580c33c075.md) | 788 | `declaration-track:bc6655ac77d2cc580c33c075c9fa113310939aacc14831f73f49e9147996a179` |
| 45 | `theorem` | [hG](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/hg--7f2bc27386ddb853d8c6f740.md) | 819 | `result-track:7f2bc27386ddb853d8c6f740fce12afd99288aa6b1cfe1eff5cb9b47ec4365c9` |
| 46 | `theorem` | [evaln_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/evaln-map--c3d81ed8f75d163de81505e2.md) | 921 | `result-track:c3d81ed8f75d163de81505e2ff11347e812acd51ca667bf829dfcb03e7a3e463` |
| 47 | `theorem` | [primrec_evaln](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/primrec-evaln--228b6c56f08c622515adc7af.md) | 932 | `result-track:228b6c56f08c622515adc7af4878fb1be8789aab769a1021b8af4cbcf4c41d84` |
| 48 | `theorem` | [eval_eq_rfindOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-eq-rfindopt--ac620702ee1c69cab5ab1954.md) | 1001 | `result-track:ac620702ee1c69cab5ab195491759ca2fbfbaba1dc2c5baf5d0e03ecffada459` |
| 49 | `theorem` | [eval_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/eval-part--382274725261fd53bcc99728.md) | 1006 | `result-track:382274725261fd53bcc99728b86585d8885426dd7ffdb2f04cb00065b774798f` |
| 50 | `theorem` | [fixed_point](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/fixed-point--f91a7c3131a685eddf38ed1e.md) | 1016 | `result-track:f91a7c3131a685eddf38ed1e845853da1833f7733eea8ba41bea9015de76df79` |
| 51 | `theorem` | [fixed_point₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/fixed-point--4ff7032ccd96ab1f45207008.md) | 1034 | `result-track:4ff7032ccd96ab1f452070080f057a75219d680711a2d4deb11285526fcd9e48` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/instance--1ea2094a64a2c74c5c96d264.md) | 1042 | `declaration-track:1ea2094a64a2c74c5c96d264cdc3ba768c93b61a9e80f651505095de0d637c2f` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/declarations/instance--f5849328f5d56fd756c33a7e.md) | 1047 | `declaration-track:f5849328f5d56fd756c33a7e84ef41aa7ee879188c2bdd2804039446f1dee549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
