# neighborhoodKeysChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41771299d42989c3f303216d5c31f1b01ebac8ee0345fc64660c7da8c53567b9",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0013",
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
  "slug": "neighborhoodkeyschunk0013--d6cfe64561503d4fdaeb9d91",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109775,
    "line": 109708,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6cfe64561503d4fdaeb9d912f41710d07835b243f48c3cf2d82ce92247f58e5",
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

Occurrence: `declaration:41771299d42989c3f303216d5c31f1b01ebac8ee0345fc64660c7da8c53567b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109708–109775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0013 : List String :=
[
  "formal-neighborhood:695c54f1c2778ced7f02f1209a5958b387806537cc914c973e5ee479d4dfca85",
  "formal-neighborhood:6977776376948ee45ced7cceaa66135596c30a6d16acffe4fb9accf1d9c24ac5",
  "formal-neighborhood:69ab39102d7a49c7cf94d3c5018f66993ec6c796350f6d486f5e01bea38653b6",
  "formal-neighborhood:69e27219495ef28a7a3f0ddf2282d0c569a06c33ab4db02f215900f1e5330182",
  "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a",
  "formal-neighborhood:6a0778b43277259a5b71efe4f2bfd88b9ff18ac32d215a0d9fdf290b31f45aa3",
  "formal-neighborhood:6a282cbd5a77752c92026ea0c61527bcb71e007e090da76cf604bc7c4f18903d",
  "formal-neighborhood:6a2f2062fc711d1396d5d4f1de268983b04e0b3d2eed71a9077f11a04704fea6",
  "formal-neighborhood:6a615cd1bcaee853ec7d52f3fe047b2ac8d9003ce7182445c8964cc81dc6fafe",
  "formal-neighborhood:6a645ac600a57ab58830f93d75e92ee2b2a3b1ce8c4cdf0564c624b0309ef00c",
  "formal-neighborhood:6a767060dad09f9717e2466ba5ce80f2420c0a177fca116657a899dee71fd638",
  "formal-neighborhood:6a865972e84dcec4eaef4ecb06a9c5c0e7c1b53ba0ad231461d7271826aa1c73",
  "formal-neighborhood:6a9e6b6213f8d3071a3b972ec2362dad02956f1b520d67c0a3e4afd40f80172c",
  "formal-neighborhood:6add5d9886f8e3df82739265f03de76189b4931f38c2725c853fcf683bef5808",
  "formal-neighborhood:6b065a1708e03f0bfa1bc6b0b6d7330cc55769fe525ce43cb4477f32e9e85b89",
  "formal-neighborhood:6b3f54387fc92b3dfa54e15580c0c35b0c612f13f8e4b6c91c9abf932934f727",
  "formal-neighborhood:6b48825393deef94a731b8d51862d1052b1f1c19aea3b871190599deec2ab585",
  "formal-neighborhood:6b4d6f8a1d1507a6e78d3103f15487b1fddb85dc95ad3326fe74290b96664c0c",
  "formal-neighborhood:6b5aafce8fedbc6120ef967d916651d1ed19007c6624e0d6cfdc09690b539f57",
  "formal-neighborhood:6b7566a45141614cfb3739f3089eb817cf4f7dc29022b54fa4f12ac83ef455cf",
  "formal-neighborhood:6b7713f2e23038b298cd4b850d478c04945b1902d08c32459cd8a62bfb895301",
  "formal-neighborhood:6b8889497b63d47bd21c113c387a95b39efad797d29721616ad85e1a18a1d6ce",
  "formal-neighborhood:6bd084d2157a68ec479f0df66c8b67b0f05b5f30b149fb508d7cc07b6782d46f",
  "formal-neighborhood:6c02523ab2cdf623bee183aeb4f161e309c922b63cac0e3289ad112950e6976d",
  "formal-neighborhood:6c1c9283ef62915e186a5a4e5ad6e887c4ddc18c9e6a9d63491a102deb425384",
  "formal-neighborhood:6c1d50b8ddf50ed7c5b38f1397f8976c7c9cac16babbd9d61a64a62304769d1d",
  "formal-neighborhood:6c44574df5f108ad16cc845d209629d08019ab4d8a5cc24c75ada6d4d09188a0",
  "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1",
  "formal-neighborhood:6c6200dc8904ccca9f4f1d816c0ce80492740e92675f3201d0c954004cdade2e",
  "formal-neighborhood:6c69e6b11375cfe2d606ae141536dd676d3f2befeab0e0006fd558d9a76bc3b1",
  "formal-neighborhood:6c9539fb072039dc4963a5a5b75e971cb0c359d5a5c82c3f4126c570e88d7e12",
  "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275",
  "formal-neighborhood:6c996f95bddfe0c7b77b5256448b41aab873d6f812149746971485b8fc33800f",
  "formal-neighborhood:6ca0ee2fdeaf63f42d27f9463b302d82b22036e111d1f87e9a2e76e2b14ca275",
  "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1",
  "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825",
  "formal-neighborhood:6d187fab0600ecb13a9e1123a6c1083c659b7fe135559fe597505f2822c1cfca",
  "formal-neighborhood:6d4fcc5d52703044904f21cee2047cab814bc6fffcb78c73c27591ca4dff6598",
  "formal-neighborhood:6d77ad0749b07371c1d5170be29183fb8794514122d21828adfbc1f7a9d19d77",
  "formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe",
  "formal-neighborhood:6db8d19f505dd832be224c12543d7c26327b44379388751374ec631384320da8",
  "formal-neighborhood:6dbbe4603f6379724c072414fa7fde7fa117b0dd6c10619604d404df2e428765",
  "formal-neighborhood:6dc73b1d923575bc057bd96923433a09bea69a73e4c8aeb60b063ee235bb4970",
  "formal-neighborhood:6e2ffb2e5c89c360104d92ee6d0efa73c3d32c4b77820bd8726e34067f4f07ba",
  "formal-neighborhood:6e512efe6653f6917404f98fe3e88d4560dc07f52dae5cd426c10a3dc0655382",
  "formal-neighborhood:6e946c292f25ad572c344acfb6af68f4c5b38e1c39fa8348c0def1808fa67373",
  "formal-neighborhood:6e9e69d82d7f7dc8e6bdd2abaf843e6ab49c035183c2616634b65e354e344195",
  "formal-neighborhood:6eab51d10d68bba151f9c9e0954a377d6134ad4fdec9f20614e22bf19f919504",
  "formal-neighborhood:6ec32c761f71778fb5c92ce12c7634ad2a862cf6d1129bd33a0d08ebc63c5ce5",
  "formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f",
  "formal-neighborhood:6f2387e8acc31c0b78c56a82b2a565258e6c94f80ffba77c6949911323402348",
  "formal-neighborhood:6f39ce844fc7d10dcbf599e98887e20c23053b9e1ec3ad59123ad70249930719",
  "formal-neighborhood:6f49e0cfd85775902df1a8bd1c29b0005bf2858158bccc0b82407353f28b4ced",
  "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0",
  "formal-neighborhood:6f66d3af003b6754a52c6b720abd51b949d63d58bbf6a7592986dd1f12463fd8",
  "formal-neighborhood:6f71ec0578ec5a1984c028d0e175d977903c1da423ad61d44e7815f435ea7d9b",
  "formal-neighborhood:6f724a3bd03d2123c52992f49c3e4060f982e30367afd8a07cf8d2a940548ca1",
  "formal-neighborhood:6f92c8d557fe6c1bf6e22b982bf2654ee04f8027843ec0c73121201c5d19d4c2",
  "formal-neighborhood:6fa27a815e9f0a35b8f4daa1adac14bf1acd5b56a0b17b9f76ef0af2ae1910de",
  "formal-neighborhood:6fa29ab5bd0f74b7b94a0e22637b178fc44a1749740da76d76b4686e4f232b03",
  "formal-neighborhood:6fe0a4c183f395ed2e42b5677f74832dda077b4d9ca1c879709e941bdd521421",
  "formal-neighborhood:701c50f017fb37e9ea082964ae042f916a2b272db142ed5ff6ff00ee0a124fe2",
  "formal-neighborhood:70230c713f12926bb612045098bfe74ae66dbf4592917b83bd9e98d61a9200ef",
  "formal-neighborhood:702364e1a0314e86d246715c6de891dae96220c00e339e1012ef0754021234a8"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L109708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
