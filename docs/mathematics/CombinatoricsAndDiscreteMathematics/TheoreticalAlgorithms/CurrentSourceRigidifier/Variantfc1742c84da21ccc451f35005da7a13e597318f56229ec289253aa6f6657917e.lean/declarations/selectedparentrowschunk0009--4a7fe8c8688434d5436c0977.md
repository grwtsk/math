# selectedParentRowsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:266e794f8315aaa6737229e76d086c94f712243dbd5abd7fee915c2e64a2fbf2",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0009",
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
  "slug": "selectedparentrowschunk0009--4a7fe8c8688434d5436c0977",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118260,
    "line": 118017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a7fe8c8688434d5436c097713e00858439c79c4e69d72a9339b6fffd16a8066",
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

Occurrence: `declaration:266e794f8315aaa6737229e76d086c94f712243dbd5abd7fee915c2e64a2fbf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118017–118260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0009 : List (String × String × List String) :=
[
  ("formal-neighborhood:495f953de5764037d810f4b8604975c4704064bfcd8f77da298b28af56746fc4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4965c95fabefd337d004775597d5e3de5e8cedcc86b58bc456e6e24ee699fbec", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:49b867908d29554b0c2a81596359f922facce5644a4b4eedec0f5f062f029bd5", "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0", [
      "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0",
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:49c0fffff838798748607f29ca5c973d04e0bf9afcc38adba3c30e97993a4407", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:49ecac576c793f7bb8c238d5e1d5d70d7b2a5939f0004e9247251cb67b4371f6", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:4a1ee13da762d380917ec105566bd419a404e4bbe5961e7ee3e031de407f6c19", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:4a3e4f374f680f817f19aa0edf64b944b3ded9098b168c9e04928a306a40c3b4", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:4aa5a40927f375a11575f79e30d43e311240f10b6c6580a913f26d051dfc06f0", "formal-neighborhood:85c41a1017ebfdbcca974b53ed43b57d6e3577602b704005bf9ece9e2f02edd2", [
      "formal-neighborhood:85c41a1017ebfdbcca974b53ed43b57d6e3577602b704005bf9ece9e2f02edd2",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:4aa8bd9375d60d77142bba4686fcf7e36523049961ba7132774d4e92b5bfbad2", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4aa95ed24ffab3384a9d98ac9a4c338d4ae6936eff32c8c16e207e3acd0a5d09", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:4aca81683a62e70c843d1f06e83f544a1e6d49628d9131d275f169976eb6cebe", "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389", [
      "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:4ae03ef26b70d1612f921a6f8419e7e6f6e2440e6cb2eed4dae19a4073567101", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:4af1fa5ee2f982c54169de5163fa60137aaeaed9bf3916ed6a21009bedbb8a08", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:4b075b384d4a367b8c9ddc94950cd18e793f602a821748bddde8378aa6eadc61", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b3d2372256971473a56c35f477d98525fd0288ee3a9b791a8502cc8cbe03237", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:4b50f3a1f3da775fb59214024e06bac9e6204e61fb13cfae1e0d5cb55a3b389c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b54513afcd12e9d6df6910f704dd6ae4520ac48354eab401d3f01e20c57f02f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4b5cc1374fa07da65af30742e7178213159ae74a5afe6531ece89a8bb31836bf", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:4b78977d97fe967d08822aa6c6d4a1871510e1007cae9cb6a89df55029ea6f2d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b8e66ae273e1fcd7c3e3e62271b425058af496b00341329f6df0e2eb41f56fc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4bc639a87d08029417e4a5a94ba18955ae2a57fe59f5fc8ad173e6a4ab095e00", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:4be0d44ca355066b67ec752f6cb047399140b7603c8f56adca4d4397b24ac7e7", "formal-neighborhood:d882ca421b68ede5fbe807fd04bc74112244591d9ea2f17f0f527bc0d9072cc3", [
      "formal-neighborhood:d882ca421b68ede5fbe807fd04bc74112244591d9ea2f17f0f527bc0d9072cc3",
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:4c00cbc3064db1ac3049ae8ea1d24c8fb6a307c3347ce2d0042325d4e761e23c", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:4c0a12b7f5972867752580babf521a589b9a364abfea6ca8cb9f335bbc4f3ebd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4c116151c95f571557dec00b845d05b760f8f04c112e6315c33393ea5859079c", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:4c50760dd0a040f14adb6f9cd05aad9a75bf695aaaa9d57bda2f3658ae38e1a4", "formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd", [
      "formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd"
  ]),
  ("formal-neighborhood:4ca60f3887ab43a772bcda73aa6408f8685bfb41d7286d9e05a5780733e896e1", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:4cad355a20bfaae7656914d093f26af6d4528d89c0e5ecae5615f3c813bc5083", "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797", [
      "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797"
  ]),
  ("formal-neighborhood:4cae19cc0e0c92502065ad8ea7ffa3a84023a16c8c620994c376d962f344b30c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4cb14226bed89ca6c110ac04851a8460ddda02b1e19c7d49946448f8754c0bdc", "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f", [
      "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f"
  ]),
  ("formal-neighborhood:4cc051a1a28ded62a34e242857cc1c5a1c3adad3553741970ce55a3ad8fce32a", "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606", [
      "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da",
      "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606"
  ]),
  ("formal-neighborhood:4cd76440037af01696289970fed8ec43bab2894849f5a49591d3afa8481640b7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4cda093213acd71a865b0e3d2f299ab97933744fa841a640d2d89e86c37974a2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:4d08cc46dfe32ae6c11f6032e11aac3a617f4e50ff89cfc6c9c9dda5290186c1", "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283", [
      "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283"
  ]),
  ("formal-neighborhood:4d2fab85a33b6ed7f2564c2f794242411be247bc3816e707a06f8bb410408f81", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4d4147bbda827ed1992ba09a59d5466e6be55934024b52c5c68835b0cc4ca00c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4d49f1fccd179be79aecb917ae72462226ca0e6facbdc1838587ee36214fa666", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4d6a624dca578d147d1646ee4c35af3833faaf1fdee08f4e9695f26483a6e59b", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:4d77ef6f793b12cff92ed3594b8ca14ef7a3e74a3206226c28a56e3af95f1447", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4d9c37f8b146a851fd7b488541bc525b6e315d8f2c8d696e528b2d2b9b5f7197", "formal-neighborhood:18ee22fdceb0564856817fd287066506894074902d95b0a497b5e8df61ac6474", [
      "formal-neighborhood:64293fabbcd231174587ed87b24dabe7b7fd1778c4164b08064e34cce24b0b26",
      "formal-neighborhood:5d14161ab0e45370773c9514665898cb85b59e111d8b3e11e8970ab8dc2ac555",
      "formal-neighborhood:8076d038b535aba1c6359dc9bc1d2f965958a1e0c098ed7dc34f88ad7a864d48",
      "formal-neighborhood:9b80723fb337179da988254720efc88a9623c2b67cdef5a7c4c922fabf36f1e1",
      "formal-neighborhood:97a9577ead86d262de3cf0c276e6a039b33abf984a3bfd0e40f30d0b53f60f29",
      "formal-neighborhood:a8efbfbd50dbcc5b95034d046863d360b98ccf0d0a703b553710ba3da5308fe3",
      "formal-neighborhood:98a6cb8050d639ccc5d55dbce950be39bcb2cb36dd16afbcdc69eeaabfc8c5ae",
      "formal-neighborhood:7d6d9a1e1f20a1791b0eea986743a8c9686d31e216730cc07642480d0072e783",
      "formal-neighborhood:0865fcbbadebdad08b777a6024bf73a5c5218075ee7f8d912792e51363f5fa2a",
      "formal-neighborhood:7802c0e7cff3e6a23be9815ac52ac94f8535ec2b273fd34e563ddcb357645b58",
      "formal-neighborhood:18ee22fdceb0564856817fd287066506894074902d95b0a497b5e8df61ac6474",
      "formal-neighborhood:6dc73b1d923575bc057bd96923433a09bea69a73e4c8aeb60b063ee235bb4970",
      "formal-neighborhood:6d187fab0600ecb13a9e1123a6c1083c659b7fe135559fe597505f2822c1cfca",
      "formal-neighborhood:3fde1006b3adf7ca6d2d3665645a76b6221291d3d06bfdf8376d1109a4d3ad1b",
      "formal-neighborhood:dd37db3a1fa4588ceba27f3ef0cebca01cc11f43174d97a4c893d7560a602ba3",
      "formal-neighborhood:fba010feba391baeddc816ad3f5edb7f9ed2b43c6d03cb0ce05d4e9a7585b7eb",
      "formal-neighborhood:160c6fd25514a00a6714cb892dd63f80085119c822fb42c0c1b746551bf0c43b",
      "formal-neighborhood:17ca4a13c5f2f34c9b33460a40cbf16d17e3336e7cf1c1aa5bd95159a64128a9",
      "formal-neighborhood:0f8e4e857dd10dd25720294c9bd258242eef559da683264db1d9838ba9cd9875",
      "formal-neighborhood:09ce76c249979b5e3ce5b634084fc771b8e3c4df02a9391412ffa98839a54d1a",
      "formal-neighborhood:75fe9fbbbf732944c4291f5cc27249e1d390e4759e4ae3f8ea4943f0bc6a0164",
      "formal-neighborhood:9113062868a0251f147a6a72bdf4112730554123af8625b74107e85f5ad7f967",
      "formal-neighborhood:a0ac08a112c92c0df8793961cc673566809a353163a0872d55a446bc18643c5e",
      "formal-neighborhood:738525a3cfcb88e61ce84266ef95536b3f294cb162073ebd32772a808c4c9281",
      "formal-neighborhood:b188bc35926ca5dc5dba98f5ad3b1f329104cc2a41aa2ba68bfc0ff750a5736f",
      "formal-neighborhood:222379aa29a8d878a4be10be203dffeb6c206c2fe36214b556b38b562c2db3fe",
      "formal-neighborhood:0a150e6e554ddab757bbbc913b872c7619cfc8de682abc1d2e48265d201a2c06",
      "formal-neighborhood:046ba7b0dfe5fac0bf3cac628cd4099d4d6135867975a7509fcf209307004506",
      "formal-neighborhood:7b212ca54e412089828c9eebb08aede23cdc90e813c0d3682910600420d292fa",
      "formal-neighborhood:b3e29c0f371424a51c781bcc086f5a1b4e0daeab4941402fd574fcf080280c7e",
      "formal-neighborhood:ad69939e2601b2332bc7b2a066928377e4f7ba0cb1be12b058884e326b6b096f",
      "formal-neighborhood:c3d46dddbd04d214b0eac23289f988ceac58a253101542c6a422cc1bb6c284df",
      "formal-neighborhood:d285428a8518f963a5252e46ed2075dfcb6ee6391de0eafaeab7d37f781ef93c",
      "formal-neighborhood:be25a092eb1e16be880b1ed6658c0b054b656ce065603844aed46400bffd435e",
      "formal-neighborhood:e01078701a5a17aa953948496285df6afc3d47a1624bc51beaaf0cadba4d8a24",
      "formal-neighborhood:e3e2afd9f2342d51e4368c4a0261ab9541d564f0f4c563dcd400b1f278f034b6",
      "formal-neighborhood:2462d03124ead01344e4bb9072b731602b9be68f2de65494d928b3919f1b162d",
      "formal-neighborhood:ee83c57d0eaca301794cf6bb674d8253176b74b95c73df51e18ffd87b03198db",
      "formal-neighborhood:cf408bf3fe19db763141b0b0fa77f6267b7edec4d457c986db428f7471b2d3de",
      "formal-neighborhood:31b5e3914b061b90091279e8d1f3b4c8cf90299295b943984fabb6fc36782016",
      "formal-neighborhood:a67088bbcf7773e5342862da0de411dcff492b5c3a1c43a8a58f78c12f3e2100",
      "formal-neighborhood:0188a0c10b303f0e06ff995f5862d0c7bc0ba92e808382ca0e4ce2df43309243"
  ]),
  ("formal-neighborhood:4def5966fbef8fccd57f490d45371821578296d308f4fefcadaf6ee2a629cd81", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4e363075b9f5721db2d1329bc771a81420187474d98b523d21d38b7996aae744", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:4e4bf4264687a5340a575b08c62bca92bf30f3d039fc2fbf850ff8e376e1035f", "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a", [
      "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a"
  ]),
  ("formal-neighborhood:4e5895cdd9b0942a6b601dad6c3acae54337ec3432b5b2831420a6cd4228e470", "formal-neighborhood:813e30b15a7b4fc3343660ff049fd497e0f5d3fcfa4bf9b2d184e4ec376aaa99", [
      "formal-neighborhood:813e30b15a7b4fc3343660ff049fd497e0f5d3fcfa4bf9b2d184e4ec376aaa99",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:4e73bb8066f8251a46654ff8036fc97ff9107f8b41e868cdec3500eb5778fdb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4e7ab1b645add07c4342e518d99ef655dc3651f66aa94befd668c256bbb47b04", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4e843227fa958e44c4ddcafb235f61a0857f4b46b4cc9968c896bd58cd2d4839", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4e885e95b9dc39f7cf51464e8fad764ec560fde420e1f374d436e37962b60b2c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4eaa383a0b69b17c82dcab40e7d88a5fca0c7e041d1149cf82b93028f70da830", "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88", [
      "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88"
  ]),
  ("formal-neighborhood:4ec74283cde0c69bcb7ba1cb63c905a710ef71da266cfb5877faf1913a56d935", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4f4529e92a5a20555e586f86cdbb889dc45a09fc3b1e08f7b84a5a5ce66d0728", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f5ae974901de7003d5ec3fdc45d10c276b8d87efe0ec7d52287d1e3a42e6c6c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f8429be439256c02e3f3b13a35db66d4e103378e73cdce17c4d7a9a9f443040", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:4f94dfa16dda2b69b31d2b4ad18041a883668ee50fb3d4409426fba65adaf89b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f95a368536f654959d20b1cd4eaf509200fdb169198b9b566a98329a237000c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4fa136cf8d433d29ce3c34a95eed2b14254c3ea83228ddfdf9f4f5d1b6f28b1d", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:4fb94db3ca8b5ed966576730f6ae1d4c0527a311884a2de0b4f1b854b7375e00", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:4fcedf8bc52e75940eb7d8aa1762cab3802302692b69dc201de9a54b1af82ef4", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:4ff72dd9e1b92a15b78f3f375fd5a34509763b5960edac2e2452d5808b8b4d60", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:4ffcbf1b5baf16e5ecc9955f0d8fb0e5f9b9005c58d43fc29f2ede7321db4632", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:502d747dced5614a19373cde25ebd3f91e974c983fc7750300747ca67658e10a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:503620a9f4e761f9dd0acc177361d8b416541decd38d4c02eeeb8f23cd68fe80", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5042a2ecf2b705d106205e288e04941e0eab9b8f08833f9c4f769b6f787d73d4", "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0", [
      "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L118017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
