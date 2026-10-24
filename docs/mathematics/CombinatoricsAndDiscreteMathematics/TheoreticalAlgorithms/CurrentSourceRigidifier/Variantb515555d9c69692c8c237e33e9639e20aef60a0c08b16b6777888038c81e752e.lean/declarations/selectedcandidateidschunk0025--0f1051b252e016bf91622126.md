# selectedCandidateIdsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddff849114332bb9b7fd7096d5654e37485faaf96fe03cfcd9e18acebe7f0cec",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0025",
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
  "slug": "selectedcandidateidschunk0025--0f1051b252e016bf91622126",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41122,
    "line": 41055,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f1051b252e016bf916221266f5300c0c020712f0611b44b5590892092bce7d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddff849114332bb9b7fd7096d5654e37485faaf96fe03cfcd9e18acebe7f0cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41055–41122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0025 : List String :=
[
  "name-candidate:a43a2055a3f25e1aef7afbcff1621fa213caadd110ad8ee8a4bdf7369f80acac",
  "name-candidate:0ed69fe5da689e63d576e9b201f6a1c389109d95aa2c08dbff5acbcc2a4ceb3f",
  "name-candidate:1e6856464bed14789b09aa56ccc2cb23c4494271f99f7e125fb0f258787fedcf",
  "name-candidate:c34ac29312b988670dcca49551190e262a827d50305a298e937d3e1f8e17d7a7",
  "name-candidate:7fc84854ddfbe9e048e55b1f1832918c72b5b08461547a0db7c0b979e82cd4e1",
  "name-candidate:d63ba5ace5ba802efaa3a9013da1594366ace493357a12ced1f09bbdcaa66be7",
  "name-candidate:2bf012e1c9150d53470ddce5022380f64e3a170b71e3a6b70bc1a8687811d50a",
  "name-candidate:834c80fec225c1be4e4f80fb733aacdaca1fc70f3fa6b96c016fd3987d5edbcf",
  "name-candidate:e4fc2b1e68f9ce1664f7e7ea384073afba44bdd3acb61f68855962d011d30519",
  "name-candidate:a0aa73ce24d43df9099027d82ad580c292f56756d3901d35ea67eedebd07d662",
  "name-candidate:4a89ef8816ab2a1b0e25ffba3e77371614197a33301bdbdf23fbf43fd2c258c6",
  "name-candidate:3d8c4b4e181fe038b7f6dc11d604e0cb5a54143d6126f6dc0f64c22945778678",
  "name-candidate:6e764949efb3f9bdb6bd22b8b5b900ba88ec6186d288fd54de906c200ed272f3",
  "name-candidate:0de45266054007358bfb2205b64af44cbad2fea68e590512b4c9fa2ab43de5f5",
  "name-candidate:238e024d8fcc8510cc567df93166f0a85445b59d1cf1b376ca1ed4290011b389",
  "name-candidate:ac2089462b292d7fec347b3d7f40efc17814344fa964a8fad5a1e8725b029fdf",
  "name-candidate:4f9141540044149e44c8bbb715bb123456931de7872a9b1ddecf258458e20a1c",
  "name-candidate:4c051dbbbd064698827c4e47f886556114b4bb2ee7aa83c850d9c8048817e4ce",
  "name-candidate:89140ce4560cccd80bce29a730f22e1e8b92b44aec0b1ddf9ba0d0c288860283",
  "name-candidate:94af1293fc8c0e92d389839164a85a99d65238dbf556ff5741158a6a382b7060",
  "name-candidate:d50ab37e7c3c6c1d8ac24e79f3ac1c962af708ca3cd19a812ad766dcb14b1347",
  "name-candidate:754cd4c7f4988312c23ea10ace4b5f8b6f9a51bc841e84286f7ce2b1bf6f96cb",
  "name-candidate:a47a7c10b366d67738fef50401e12fe3d85a281db332999745de5145866708ac",
  "name-candidate:745d9e957abd3ecdcb3826e05fa0ddc85cffcff0261512cdf97374141dc0c736",
  "name-candidate:a69e4de7f77077bfe6bf45cd88aa02c2ceb3a30b690a7d670679374b276b269e",
  "name-candidate:45af58f290008cf704a847391f930dfdfdc2d99b3c77a5d5086679c62ce9eda8",
  "name-candidate:e53118b73e13806cc0d149cb20df3f965518973f9f8c96ea2ecaea68fc07761a",
  "name-candidate:28225190a9ba591197f720c6d2916009f0a1de12042af2cfe799497c7c44f0e0",
  "name-candidate:ff1ed35f65b36497a1a175e1f0019b38694b279a3e51928379a3b3d88a757ea2",
  "name-candidate:89b485961116f3cb93f30134ba35e27167593eb9def79d149c8b84777dbdac2e",
  "name-candidate:627d48eecad257273882ac0d005500e6d085c95fbc0c47b0b168f97bbe7842f5",
  "name-candidate:f594615c877506dc85382b60b5ac24111b1a3aec15e90faca85426abcaff602c",
  "name-candidate:a1359fa8c68ddfb687a6836d59768b8b6ba01d976d1dbb9f9cad2c15f7f2200f",
  "name-candidate:e1e1724d72c97d194652911ed787d1ca6e65699d3ecde6b82990456777d973b2",
  "name-candidate:8030ae5b253861733e54fa41b7943ba800af11d8baf5afb3ed4d36e077f1b067",
  "name-candidate:271194a594a17b9e4d9ceab3cd51ee918ab2e17e1bb2f4537c6e464845997643",
  "name-candidate:f395687ef60cf5ff4e515f920e26da94a88932772f413e16ca18c78fd80c8644",
  "name-candidate:b56e56e296cf318b7f6625d1b992c06fe698f2280a086b7c149447dd34eb135e",
  "name-candidate:f27ca026c63d32b1dcb2e70058a522569d7237a80fe8bc36b78fe92435ddc80c",
  "name-candidate:4ca3e6ec5165343c75c15b9790678bf3ac5ad7221bd869ecf7f4b295661a2b92",
  "name-candidate:3c72a9c05604ef0b238ac302049943fddf8035deb5a2aa7e3f324743862c3ab5",
  "name-candidate:b7e42581d0a55122d0f99af3891da76f395289646f3ede6010c05dc2828f741a",
  "name-candidate:60c1ee72365433686761d093cb60b68640a24024292f0b7042c6c0c3e0ae1472",
  "name-candidate:d16c4cdd295753ecd6d15799000861b6bf3d5ec40d14569e6370db863f73ed8d",
  "name-candidate:b5cae2ada04adc4ccfec824618d5088bfa3a0e8f0491d9a3e42e28494fb54907",
  "name-candidate:96560d71e7933d0db208944aa2c662425b8b74c757c5600505d2e0d9e40b9feb",
  "name-candidate:0ce03ac8e75c33c9a105b73dd7066b6c429dd575c70e8434b59d63647d8a3265",
  "name-candidate:9a820bcab892818f96c7790b8c4068b0df3cf4eb625ceeaca785e795bf6ffbfc",
  "name-candidate:9b3c371e30f61e843f16d9dd13f5b8c7e94a097f18ab89d1b6730b628bb8e7c1",
  "name-candidate:5713bf7f543a1fca52b2daf20baa1d0ed087e564513feac11777b724198cd132",
  "name-candidate:38f5437889d00b17f5b8af36710268bb2d03fd6e9f2e8d53150eac38d69bdfc2",
  "name-candidate:94307445a35eeb0dabea40e68e1550a566664272023fc57c865fc1bcc8e35647",
  "name-candidate:b78515233437dba836754758d45e7b0661563eb28433e2e8adf0832c8f00b843",
  "name-candidate:0b29036d72b0408739e204e2209298cf6e19912ed2cc4a54f1e4c7494c03f3ee",
  "name-candidate:8f5089d311d6e4644b699bb5275df700cf619170e6036badcb0854bbbbcff2a4",
  "name-candidate:cad7cc9d3ffbf8efa9b023381e7ac106282282efd7b03e07d7cac805d5cd622a",
  "name-candidate:257f0ea145f0029ee6f0f298793714cf3936c444c0fcb5ce399460a6d134579e",
  "name-candidate:2d31e42de549e7facfc9db9840b6df03065d33795a42a7db093fb3ded0174e35",
  "name-candidate:e1c52c4a5ede6b18ba54bc6a084a301320254f8383430cf39856626ba5357f21",
  "name-candidate:181acfa2ea838d2006a04174889f2ae05bae23d95c335d3fa995455c6bb42493",
  "name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc",
  "name-candidate:558192920291feaf6ed0a1cdd3f5e3acd558c3c5fb8b922b4727c1869aedcc69",
  "name-candidate:e1bcb167240c398561aef08b154d4f5f16ecaf4344d916fae2fa0b7be4717f65",
  "name-candidate:3e97a4844186c35d06129fda819bfb9a470be40e5ca0209689dfe2835fd6d5d9"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L41055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
