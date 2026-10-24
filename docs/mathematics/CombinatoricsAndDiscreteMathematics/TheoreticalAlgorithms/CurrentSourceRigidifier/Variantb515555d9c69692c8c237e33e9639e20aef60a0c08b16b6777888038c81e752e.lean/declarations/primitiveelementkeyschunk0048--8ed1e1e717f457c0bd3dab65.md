# primitiveElementKeysChunk0048

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25715889aedeaafad3f52b7e961470efaf86b96ea96dc393d3e9454f952e50a",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0048",
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
  "slug": "primitiveelementkeyschunk0048--8ed1e1e717f457c0bd3dab65",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3364,
    "line": 3297,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ed1e1e717f457c0bd3dab6584be1c6a3f21cafbd6349e040a61f3f6bc4678a1",
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

Occurrence: `declaration:a25715889aedeaafad3f52b7e961470efaf86b96ea96dc393d3e9454f952e50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3297–3364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0048 : List String :=
[
  "source-command:26711ef58832922467bb85113eca4a7827fc255a11b1c75294ea0cdcb84fc141",
  "source-command:269c96083d8201e3f428321e4a0549960ccf933a79d0f837095d846975dfea39",
  "source-command:270ecc2b51872ee3aa3cddf30afd606f8ce2131c7f244dd9cc0c7ed0d6be350e",
  "source-command:274304422d5992a9ae35e8ba68c555bb99c5199e1d94375169dd3ba7c779c4ac",
  "source-command:278ffc3183836fc66ccdae2d3c1c39103ff30d48354f12cb489465db22d1d7e3",
  "source-command:27ac7dc6acf7664ed4603d8e2a8e9be1eaf1f1ba99d858cd49a98763e032a1a6",
  "source-command:27f508fa90d8c46a9d019c79cb463685e8f5ad318bf3ae4adef44a38bdee3be2",
  "source-command:2837122180f833693655b18d06406a4d1a69e80a4e0c6a2a49a7decddde37454",
  "source-command:2839b8610bf93ddb39deca1ecd1491dfcd5bf46c31dc4a06f7c749b98582000f",
  "source-command:285b67d7c0879ccaaf9d5942e35f29c93dd2b2c156a427623992a376943d87a2",
  "source-command:288367699bc92a0e236fa1d0b11aa5ab5abac60f81a96328f379813dde3472e4",
  "source-command:28c12a7c742a24198615ab2ece93d45c29e21e3f6feb433180225bb4a18701f2",
  "source-command:28ea3a147d60b988fe5a33f6547b22042e65373bd048b98e237af0e83d24bced",
  "source-command:298ce1ff5aab520e65b2a5b407a927831758778b31c21eb937d56b6f8411a599",
  "source-command:29ba2d151e13275c744d2582bc4b2cc6c977b8215d71a7591550f4984af1c433",
  "source-command:29c930eaff31502b2bcc4712d77b41be6ee12df38d78f9ce1ed1dabf6a15a954",
  "source-command:29e824de16ea4489de43159a9690f162c5900dd6c4dffa7a23f75d5d76bc40f8",
  "source-command:29f0224fff5d3b9d9e724b8057964c83b3f0013b91fcb565cbca2032da7f99bd",
  "source-command:2a39d42ee3b4c9597234414fb154ee9bde05d6b1bd346610c0ec66c320ce9a7e",
  "source-command:2a46972e382ef6e4ffeeee04d2e0de0a45ac2cdcb56c5b28283e2202ec1107ee",
  "source-command:2a4f6b8e4844fa52cf55b2aa769e88fb92836061fb429fdd299a1d26c6443983",
  "source-command:2a68556b9b16adff78aaf4dc0fa89b5fa550d38e5e11252287a24b696744f5b4",
  "source-command:2adc0e227c065d619a09c121fec46a5a59e8a5981067c42729c495faaef6f7fd",
  "source-command:2aef4d7b9277324855edbe79a7cf6a3d33687aabe263ef4676cd5b5111ebb0d2",
  "source-command:2af13fed750274feefed558df4c493d7ef0ab4af47e280bdde2276e01d1e460c",
  "source-command:2af6c16b4e263d45b13dde398338141060e692dbf62887dbb933f16ee077f901",
  "source-command:2b191d131fb92118e98ec39143e20f572b7806c6cd4d65c8209293860ad5c9f4",
  "source-command:2b3fa6cd58d6830aade98eb9a1d30926bf0afe816974074d36d91f6e71019f87",
  "source-command:2b6d6a254365b6caa975c0aa1727802161a6a8bfaed30e0e8d7096a5ed6d43a7",
  "source-command:2b9ecd2b954f9727b893bed6ccee0ac887db3f98aeeeb76e6ddfc37716a4d1ca",
  "source-command:2bc0e241de842b7ffd5cb5f7a8d4896b5d5bba9f7ae9ad8b6053a6a0c29c35dc",
  "source-command:2bd376b464ea79506d057976389c53fa84f602965be7591bb542edff79376eeb",
  "source-command:2c109514649d2d74390ae537de259d7cca19781fb52d7da7a84c0ce3f1795787",
  "source-command:2c8f269060bd8f9dca11ac18c718ed4e2321e0dbeaf97154b36febf083704a6f",
  "source-command:2cabbe5cebbd19a15d1adb73e0d30cc212dbf22fb23f7aff0cf3fb5754944db2",
  "source-command:2cec20b9ae5b180002406393a88a25fdccd8c49156a5ab7d39453106391b0087",
  "source-command:2d0d1add3661ee9ca35b3340e5d0c2f75a529210940b7e3d1365cde345becdf8",
  "source-command:2d1c86b5156b7927ce0b9db63b395f2e70871bd6b35cbec1f82b385de5bf8154",
  "source-command:2d68251e24b02febf2ef7da4190c9fae415a62fa17aa6d60ff49b15a3a483fa2",
  "source-command:2d840907a23a56bfe7e90c6e28e42667cceaea4ea0f7ef92ee4ee8e2834325ce",
  "source-command:2da0a23163b32643df0d3ad41f2da59dd9d45669973547d9cc4f2fe3dfcda8cc",
  "source-command:2db7ce2aaebdc115ef7a8ab06edd415061b6ba2987551168b482acfc4bf677ba",
  "source-command:2dc5d1fd6b70051f5329efb1defa7eaa640354629c8b2c20aafa0ddd44d9b7bc",
  "source-command:2e2ecf782e8bfd13e27d40e13f0bebc0fee1dcbd234743169366626a36964c36",
  "source-command:2e397763eac4df7c89b28988af5eed616c9abe639a5fbc46ab978a1ac944e4b6",
  "source-command:2e3a5df2bd5e2d2929d19a8a569de613ae8304c3912d4e3dd902037d50f82911",
  "source-command:2e4979ca7a6a0344f80749af50774a10e784468a90364ace5ea9e315560e30dd",
  "source-command:2e7c18ed18e80b7490bfa0946ea80cd0782c1311ce66388e1f3f272503b6e4c6",
  "source-command:2eb5d746f989f704706b78f33cec0e18141390418ff758bdee2a64161078f157",
  "source-command:2eedb64e3ce8e3ad36aaca13b958481424c97b6aff8d5aa470308d51252db235",
  "source-command:2eedeabe9023ce63cb79594177d4881fefc58bf9c7b767417c6af897290a1bb4",
  "source-command:2f70a032f659453c892d8c2bfb0470d6605c4d8512d47c1bf4eadb53a6922133",
  "source-command:2f8c12a2f0eb7ed09f75baa38a30af281a42455136ca8adc3c902f72a81a9e84",
  "source-command:2f90dd0a68c5f804b01824d0c571cb0ec799698f95725a736ca237db9e520cca",
  "source-command:2f9df8f379cbe738c88c087db6efeea2969d71165a2f83a6026fe4c772a6e064",
  "source-command:2fa439b836d28ca21c4c7e76444e16d09afa942b85b031e13e2c44e521f47826",
  "source-command:2fc6eb3e936b54e6ee57f153d0062e281e570c3d400082b4b5e3e2381076e1cc",
  "source-command:2febfd7b761cea79c5912500cff5c3227e5898b57bc44be85ae0870ca9d2170a",
  "source-command:30243777cc5cf84996409b0e72ca00c846e1c9569a2e548fef9f83adb945dd3f",
  "source-command:30312e3ead255d487d33712cb8118d9d11545e8ad9e07c024aed90328c806e33",
  "source-command:30337e414d6c387f24f95312dab60e4a8d7e24bca12a9385c15280f30fb53446",
  "source-command:30a3002d8fc3ec1b712134d3de40bea4d683a06b4a42ec333618b82b671526e4",
  "source-command:30b80630a287c100f6c4f07ebcb73527424f1694663cf9c2fd61fc6cb730f337",
  "source-command:311e74dc4de87cead5b48aba137997da50389e6453e1fd47484228165554eb8a"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L3297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
