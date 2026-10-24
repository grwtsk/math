# selectedCandidateIdsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:002b0e0d2a67c02b103deaaeae16aa77aa94032b7eaebd9b478e4ee7231b0436",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0002",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "selectedcandidateidschunk0002--3258e9b702f25654c2081eef",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39550,
    "line": 39483,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3258e9b702f25654c2081eefa1b0209dddb2882ce38a4a0e9222352b648c1001",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:002b0e0d2a67c02b103deaaeae16aa77aa94032b7eaebd9b478e4ee7231b0436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39483–39550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0002 : List String :=
[
  "name-candidate:c9ea37f30e17523ee1e34eb68b2cd1afc487973806e09f774313204a16f2f8af",
  "name-candidate:9cce45540f73c05af387ae8b2ca8d4b9507afa0db93d69d6bcb2bbb318aa3386",
  "name-candidate:74d30594617c79d4e821a46bd511076a4561e2f3937fffcbe13a7552b9991ed1",
  "name-candidate:159958acbb24666a4dc408a9a57a12949bd1da79865fb16c7bc9b50c4dc470b5",
  "name-candidate:a8be4a6b5ea80cbc22431c8cf6eb22b5c2f4a745e6c219fe674c8085666ae1f0",
  "name-candidate:67416558e1c40eba36f4b89ad531a366a889c4213cb23b92670eb07b36474401",
  "name-candidate:f78c48b0aa8a62321c208818676b3a0e5586ff84edd253a3892480e54a078fe5",
  "name-candidate:4b856e60339397c253e9c47b3879bdddfb157e699962a495c0a1265864465679",
  "name-candidate:9431a6c476f7839e2664bbaf534aa483e7787afd55a7260411a1167a3b5e5b61",
  "name-candidate:420e54b7017bb3e1df33c0a0c0249e65a83d9a03a5214aa6de4f72861ae46831",
  "name-candidate:fafadb23075251449a9bd8233d09b1ca9a00ede878d81448cd9cae22d66e6bca",
  "name-candidate:908b521c8c682ee0900bc76f37b05ed5662ed5e96398b2a6a46930511ca9d9e4",
  "name-candidate:0911b913755c30fbbe4b9dd1320f2e46ace749f5721d497bf971e6aa984667d7",
  "name-candidate:5bbbcf9aa58f70f12db18285c931a9775b6d8956202cba267cf61eb7d68dc313",
  "name-candidate:884eba7f20308fe7a346724d19446de441645069d2b8fed0e511064878f15bc2",
  "name-candidate:a582d1b93d316bdcddb658dc3d8abf9df1ecee2ae0f209ba6875666536f5e836",
  "name-candidate:a7bc17d1986f44d436677d549091087a75d47145f5cae5deac11cbb6944214e0",
  "name-candidate:2dc7a319ae6ec508e475a924473f551d71cd64edb242673de0434c4fd6104255",
  "name-candidate:9ee0caf6c73bec70494928014c5fde1c14916753fc0eeddc6933e22e6a147ca0",
  "name-candidate:f9fdc957a12155a209def3ed9e0840f37146da3f374ba1087a59ce4b2139ca15",
  "name-candidate:b8653d451c2cbfa2d8701cd772dc84eaeee1a64a42ea24e5a76a01d6b780ffde",
  "name-candidate:83fe8d57ae3cadf925d25a9ab5145d423242a7507ed1e44dd2c901b781435921",
  "name-candidate:b18b973991b92eaf9d0379e56f757f44b8d5795634013e9de331cd1736090ce9",
  "name-candidate:519cd3b244aa53f1b1286a62998c08db20debfe91fe6d92cc67c9d6c6c218e6a",
  "name-candidate:735941992043c0a020cfb93dbe0bf0112614ead8652e4a378b0101a97b6d4207",
  "name-candidate:7c849dca8a71ddc125f84a04b050f692b7afabca174721ff787fa9b22a96442e",
  "name-candidate:ad7a541719bb3a414d08d63c95b3960a5c3da9c1c030352cb53b25377b489e32",
  "name-candidate:c8773d4da5dc1a55d248275207803903a700d4de9288bc7d2786ae8f985165b0",
  "name-candidate:da36af295fd2829004265f0e1b973ab9767b4f2d3e7bf79ce9cec2522880e55f",
  "name-candidate:01b2a51c51d922ce853393e3dc7bce48a09f0f63322612622ce098972b661fd4",
  "name-candidate:1a080d5b52efabe8f7f70b99124028982c752f6658e5ef4aa84a9fd703ca00dc",
  "name-candidate:318274aaada5b137dd8ab6a4372dc1115d4da1a98a090e889151580efe2095bf",
  "name-candidate:b60f5df35fe1fac3d07338569d25fa7215d8fcf11923e0356ef29b78bfde318c",
  "name-candidate:8482907d202ef13e3788f2d1d2d19c080c3d607cbb1c515f79f24a3203d52c07",
  "name-candidate:bbd562a91c3c1ac641d448641c3262fb8a1c41e79904bf608fc075acc7fee28b",
  "name-candidate:775c037ee57cf669f3536b1ad6038dd37bbe7d6d81a5cc61f3212e6beaadd17f",
  "name-candidate:4951a201c38c89cc0c40bb327c29c87543a83aad0cb9a7003f053c1a5ca1844c",
  "name-candidate:6da301b069dade67648bafcd933999218accfd918c3746f51b81c46cd4d4221e",
  "name-candidate:5f192aeaf4fd0da041cdfbd198c63011a88d5074219c458be65e371fcbfc08d3",
  "name-candidate:5fa71400b20136273311354911275572cb9b4a5ad5aa54a57db9938422b5d457",
  "name-candidate:4f98de1ece4deb95062ad220b75d31728679e08ae8a046f61e1627964f7a3443",
  "name-candidate:2bba23882c39425f358c7f47ff591a0dd1bb2835e29e8deba8396280035b562c",
  "name-candidate:fe9734d7fbbadb3e25808fe05bee96ee22ce48adfd34fee5b1d24f87c7beeaf0",
  "name-candidate:cce745a5baba7f75e6f2c7bd326f648b97c861a03e7aeb087cf32eb0b8e9985e",
  "name-candidate:147084de5209ee7125ef661a2f3a55c101d747ebca9bf6a6bbedcc9bf13f092e",
  "name-candidate:cdd7a8925c591c14525c2e73dc24ea05b358d3a287977938783f96bd8a1dbdf0",
  "name-candidate:a77884f076e9f0c72f250d32c119036b31c8aad93ad66b5eebced1f75a965861",
  "name-candidate:a4f0cdaac032d7371dd1c4049b431befa318f098acc5ebfc62792ef57db40894",
  "name-candidate:b54944ae6a9a7b9a1a23e197057e1e823deae38743b53cb30f4dd2f05e4a8ecf",
  "name-candidate:056858fc648af4d15bbfc2d4a289ee3373be84e2cc11e9d23ae3056542d71bf3",
  "name-candidate:d0ea62b56a9eb966f2fd2cb3b35523194f8efa036a446480add85249056ca8c4",
  "name-candidate:225a387ae3d4a485396b94dd9b8c9be5ad1dd8830212b73e8ab5c19fb678a3d8",
  "name-candidate:6a5f37246291c3f0ea01fccfe2df4db0c08900df60af215644a8999c7c658ce5",
  "name-candidate:cde12973a2e6620f69d7b2f690111e9a970d3833a2da639b07f8c98b60478549",
  "name-candidate:aa803fe925d5605369c3e09370865d634daa655df53ed5c5caeb146a33c8720d",
  "name-candidate:09e62d802b9a859f3ca9ea8e7765de192ba52b4fbe6a25b0d04031d30ac57995",
  "name-candidate:2181f63ea8ef8966cb0ae73ce37ab16cb064122587462e098bcca26fe13a62ea",
  "name-candidate:3a9bf6f2c2c6f371cc43a12717647002d8259dbb87eacdd837546f9e3123c541",
  "name-candidate:59f588359e641cc1ae9b2feac96ffc2a8d6cde83e7fc9754a3587b9b6dd2602a",
  "name-candidate:ae91444aacc6ef3295bc1ec50b813602fe855878092714824bbff1c89b39f621",
  "name-candidate:d8cabd5de94307804356583fc8d6cc85ad07d89da43c70a0ae83b5db2658cdcd",
  "name-candidate:8889f0fc06ff0a69e2be1d26709fe90df695f23fb8114d0c894707c5f2362411",
  "name-candidate:ac62e95dea6a9fb37a135b71a29409fb651a0a77bd166a5ba4deb3add47031fd",
  "name-candidate:ed80c06d4a1ccbd0473b52ea9fa4fdd966d5b3cece0e6d071e02d91c98e7549f"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L39483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
