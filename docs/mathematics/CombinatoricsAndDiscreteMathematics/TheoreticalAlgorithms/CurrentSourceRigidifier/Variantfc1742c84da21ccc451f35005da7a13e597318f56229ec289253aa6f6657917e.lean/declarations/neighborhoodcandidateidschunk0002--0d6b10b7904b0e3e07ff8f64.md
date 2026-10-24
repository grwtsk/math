# neighborhoodCandidateIdsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bee045a8b0da7550e80840ac81d13d04caf885a00692049c85bab6ff167fe71f",
  "kind": "def",
  "lexical_name": "neighborhoodCandidateIdsChunk0002",
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
  "slug": "neighborhoodcandidateidschunk0002--0d6b10b7904b0e3e07ff8f64",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113800,
    "line": 113746,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d6b10b7904b0e3e07ff8f64c6f646426c500da966cffcd8aa30d8595be39c3e",
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

Occurrence: `declaration:bee045a8b0da7550e80840ac81d13d04caf885a00692049c85bab6ff167fe71f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113746–113800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateIdsChunk0002 : List String :=
[
  "neighborhood-name-candidate:b1982fd55264b911f1ba815f7ecf5d11ae8868f19881ff19124c971d2e4edd3c",
  "neighborhood-name-candidate:f5702c4c7f3a225eca1fb5aed76b0c54c729f6a83c086c6155814900b096fe9a",
  "neighborhood-name-candidate:4e8fd2fc52ae8bdd394cd262870ba9a4b39bc89adccc9907780b793273ef9390",
  "neighborhood-name-candidate:4e2438cc2cc671ab98136af8109d936cc200607a24ff43055f449793a987998b",
  "neighborhood-name-candidate:d76ed7f1aa2b433b0a79eab3623b05609534337af53065e8fa682727d661c0f3",
  "neighborhood-name-candidate:5b04b5a6e57781cbd2395560f2564564315d84056e31ba4251fea91fec26bc9e",
  "neighborhood-name-candidate:596886baf8f9180e94d04f2db119530ad2edad08756a9fad6e7f1b35e6468bbe",
  "neighborhood-name-candidate:88e4ef3960263ebd29c8e1fa3a21482f1d2beb1a4b952b9e11077bcb5c14020a",
  "neighborhood-name-candidate:c094226c5c16215949f6030cd5428cd8a2eadb96eed20cdc9439706936f31330",
  "neighborhood-name-candidate:a946801667b94ac60c6f69b7da52a8ab1eee5d2f8648c91d4e4230801cffd57e",
  "neighborhood-name-candidate:fad2fe389c1b87d3108ef4ef10715c566955412173b66eea0817dbee641225a6",
  "neighborhood-name-candidate:6942f14d85285257edba8f26e388fef892531793eaf865aeb10939bd17037787",
  "neighborhood-name-candidate:71fb23c97ccfce4aee5eae25983ee88ca6ac668aba5988b50fd2c1025780d8a7",
  "neighborhood-name-candidate:a478b3a210ea58bbf02e680c62d17f60f01e940cf328209609cece2766b7c5e5",
  "neighborhood-name-candidate:ff19b5b8e70961f4d44f12cda2fb1700f9f9a77aae0ca6253db6bb5089bc0ecb",
  "neighborhood-name-candidate:8591f4a367b287286268cfac84741e0e7b11ca2ffc38aee15f98ea9ade458d19",
  "neighborhood-name-candidate:30cc52f9b0970d8c63deb95bcef4ea5a3929f44868914bc3e6c8f2a047c6c427",
  "neighborhood-name-candidate:f0023dcd711a2a607ed051591904cf42163eeee9d3227c11196b48a0c33933dd",
  "neighborhood-name-candidate:fdb3caac90b8ce527178862dda524f7f3ffd82bfd520767205550f40566d1833",
  "neighborhood-name-candidate:2b6d5d0f1f9f81b1490b8371fd90b8cd915620531b157c8c5063119a53e7abaa",
  "neighborhood-name-candidate:b7d49f8102437142164c1a8c48fd24b816ab459b2bdea48950bd1ededc9427bd",
  "neighborhood-name-candidate:bbaf855b62c20dc23d2a4b327e32e0be805d7c5db3a05a0d58d1528e5675a29c",
  "neighborhood-name-candidate:277514698bedfc7197103aefe65bed39c20999cc763f80dcc0d72e8b9faf7d62",
  "neighborhood-name-candidate:81308d5733be172587f64a398eb9c033420a0e756f9fc3adb8f2e761d683d158",
  "neighborhood-name-candidate:b0c1b5b0126b2679fef4163f50a1d36e32ad67f2ff6162741b7a26b401290d30",
  "neighborhood-name-candidate:d696a34a8b93bc58ce584d48a9d2c94ff241d6d94afa09502d3aca260df594ef",
  "neighborhood-name-candidate:bac11c0e497a54113c4b2040281585fdbd257f07558f9b6d1ac273ab991eef5b",
  "neighborhood-name-candidate:c5f5755082b340bf23699284306e143cf7ffdf5cea7206986dde3a861ca48de3",
  "neighborhood-name-candidate:9f152567f1a48e6ac155a6bef596ddb6f70c889c8c1e80a20d75e468077878ee",
  "neighborhood-name-candidate:2458de2c32fa0d5d01b9fcfcdc8835ca9197ae7f193e6e2f1806d87bf1fdaebc",
  "neighborhood-name-candidate:ef120b4ec29c9985199104b4380ac506505d3d55949e9bf69faa762cf6e0c782",
  "neighborhood-name-candidate:d7c5cbd6d83c8e27f03324a0e0d168e5d64bf2192217199d17194b9b8bf5d0c8",
  "neighborhood-name-candidate:4fc584acfb6744897cdfb3c3438f62f269fcaa31d33ea780d9d7a74100dad309",
  "neighborhood-name-candidate:518219fef417add957c849990c9b63efb16799f3cb2f36a1f8ce8c6e65ce767e",
  "neighborhood-name-candidate:a25566e27925f661cb7dfef54943c66eedfe282fc26b64e3c2ad71b33452e7eb",
  "neighborhood-name-candidate:06297695f031ef0c56640248e329ecd676d440dd187f7fe26b7b401271585caa",
  "neighborhood-name-candidate:a680752f1946269551c828a517d87d10ad71fabee4b1d9b610aa3708333078db",
  "neighborhood-name-candidate:941519843d8d1a262e74b9551c399c49ad5433429027ff5fb93dd7623c5c1625",
  "neighborhood-name-candidate:6359586804d733f8635d273576ddf9c64649fd73bf50cc26235543781d439301",
  "neighborhood-name-candidate:f4be285c05fd83651e83442a5910a68dfab9772a67b6bd023e5477799b019474",
  "neighborhood-name-candidate:c86f0307f0aa496bbd813e21de27461e4cdc303e8edbdf028de2b780c24b54ab",
  "neighborhood-name-candidate:86333880379046b36632b0d4f16209a509b64d7c6c53f2038fef4cef2da3f92d",
  "neighborhood-name-candidate:619ba074c76f65546e72d8340d7a989e47f04c186c7d4cd7fab411df7e7d51bc",
  "neighborhood-name-candidate:dfba3ab0b100ef58e2aac7d6fb146593670ef2e61713c734aaeba451b7332978",
  "neighborhood-name-candidate:eac8fe51dc4abfb816195c521e83649890ed5ed998c476e30fda7ac38107384e",
  "neighborhood-name-candidate:f30abea5b5b52aeb4c22ca2f0960b1dda110b3fb067197f0186dfe37763c983e",
  "neighborhood-name-candidate:8d2b55c712d348902bc8fa6c2dc1ab1bec6028640c2e22277bbbbd44e1a41c95",
  "neighborhood-name-candidate:ea0554180aaa691e6e6c8def13a8ab594a08e14b07245b97b70cf677e3579354",
  "neighborhood-name-candidate:e32e64611220e0c74f5d5d58009c2fa5da5be6bf245e812d05b184e791f6b388",
  "neighborhood-name-candidate:923e7a6ceb25a58322e784fe55f33218cf51e690ce2c8d9d81d84f8b0b9841ee",
  "neighborhood-name-candidate:9808f358efa0844e61cc2f7579a43882e263c1aa92eca240c7234e76fd8ed7a3"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L113746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
