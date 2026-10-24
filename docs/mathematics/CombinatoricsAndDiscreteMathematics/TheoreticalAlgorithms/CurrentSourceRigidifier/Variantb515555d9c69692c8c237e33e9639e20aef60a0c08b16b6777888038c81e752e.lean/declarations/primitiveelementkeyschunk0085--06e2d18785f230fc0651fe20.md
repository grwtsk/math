# primitiveElementKeysChunk0085

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e0e3ae5cf514e83db2622e267ffb4ef42f05021a4a820f1d85de9e8d53a3e75",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0085",
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
  "slug": "primitiveelementkeyschunk0085--06e2d18785f230fc0651fe20",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5880,
    "line": 5813,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06e2d18785f230fc0651fe201f09af2ff74d7fa3be6a2d471cfe60492855eb6d",
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

Occurrence: `declaration:9e0e3ae5cf514e83db2622e267ffb4ef42f05021a4a820f1d85de9e8d53a3e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5813–5880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0085 : List String :=
[
  "source-element:b51cdc3f3e7620734f5166a1c705eef9cecc85da7f537727548aa7f49d3d37b1",
  "source-element:b53be3bedf41cc4b804fd592ec231a3838265d5ed535b245cdda987d2654e192",
  "source-element:b5c875972aa983b14982f40d761de08561b1987b9a346bda5a882ab989283343",
  "source-element:b5d7b0a95def1cc06d0ec07b7cb0278a469a7af3fda86966ab1fb0ec5461b2d2",
  "source-element:b61e5a3a60e70fe2fb60745f7627b007285c8392f0c75ed44483e4465186f7f4",
  "source-element:b62c72092f7511caaeb20febce3385f0179683720eb1b727af7c4bd556bf82f8",
  "source-element:b63cb1f99ab7c4c73ab4128ed2765913bd248bc93de9a36162d303ca8dd96ee3",
  "source-element:b6a07d575e1b4d60976d298576b2618e98428deb0eb830e8463b6650ab2b0a6d",
  "source-element:b6a9356c9101f55438db1ae68b3a12d810637b069610492510e57661095b2101",
  "source-element:b6bf0c56bb9a0a788005947e36b62683da9fbe50c03062ea39df716d6bda664b",
  "source-element:b6c95d627dd7936ec15ad78969890417717e57a0a0d4bd5eb1d09531e0dcfb75",
  "source-element:b7035dcbcb57dcc02d6972a21a2731ef0e1b3291f9113ed5325b0812ec74b208",
  "source-element:b70c36613d9f94875c7392eb113c2f4a10ea5d15ccb4eed850086156a1a45a25",
  "source-element:b7e323f0d953ee42110bc6d1c9158266e460494b4442511d5abd36002595674d",
  "source-element:b892e61e4d558df3c7e0bd8a2c6a45ea69358fe5e30ab04635952dacacd0e196",
  "source-element:b89352715bd5b8dbb61019b0932280734608199b369f86ee7a0d300bd0b0a449",
  "source-element:b8c79f7717d3db8e38fb2db48c4b4d0fc2944babbf693bb00b8cb73995191edf",
  "source-element:b9111a664b1ad94f127aae18dd49e7c7cfdecfba7a72ba93b259b4b5e60ded0b",
  "source-element:b922f7aba89c37f05d97018a48404328db8396d5abdb46c7feb08d1eb62b86a6",
  "source-element:b93f1fc1afe9a4f97ab86f4a3346531c914ed8e20c8049ab7b97df028f216bf1",
  "source-element:b9579a47bd42406bf9ab4b371bd9acce8c629a8944e767209cb9b44b12586eb8",
  "source-element:b95fbd4e801a0233f8a52d756bb886566d0b523b30036f0fcb18a3e09c0fae6a",
  "source-element:b9674fd232048db00668196fbabbe436ba7c9bef34348b580b630cd29ef183ac",
  "source-element:b9b0af18805846d1c62df40a6faf461aa44d473f42a521232d801edd38642903",
  "source-element:b9b449023ac44251286455836b2c579d421dec4ea5354f552011b8ca942533c6",
  "source-element:b9de0d2d6b710a4aa819ed2c868b2ac288505362fed7ab34e9d871f7c34847e3",
  "source-element:ba1b555600073a0d07af2d81e112756b16bb29d64cff53e2f3c6658b69074080",
  "source-element:ba2567b75b61085f7377f2861a54815955044cbde1497ecb87abc131cbf45bc0",
  "source-element:ba430ce3eabf25cb16ebe9edba863f57e4ba6f2cf32c52941221044f43d1d0f0",
  "source-element:ba88657f9cb31578d7c0a1360c6adfbaaf95182637aecbb44594d896c97db98d",
  "source-element:bad9b8b5ab9f71fc0e990554ea26fcf7270736771c785d9ce728a11585a2f171",
  "source-element:bae8ab57b4f5ed20870daa9b7c34a6857f7cdfbb82041589fabfb82141cdf42e",
  "source-element:bb1b209d249be4312978fd81cca5d5264574c6a3f70665435d2b9cfbd2242c65",
  "source-element:bb683bc522805ec254c9039b5d5b1fa61493b24d762d4647c9f0492343d5aaf8",
  "source-element:bb761ed7bba1d7e3b3826591028e778279963601713dea7948ff097881125d17",
  "source-element:bbdeba11010fa569861cd7de285ac900ac211675445024e10dd8e9a0da7b0b25",
  "source-element:bc353f9fd0173e614a64ef9ff9e71e210949500b2dfbbe736afe038a48d0d6b2",
  "source-element:bc4ec1cdd8596891f24e123b5390118e7f72a6949186a4392cc7ea5c3daf9fce",
  "source-element:bca096ee91100425361651f39796a2df1b4f1c3275c99e30a456e40ad758f18f",
  "source-element:bcc60c39af29b17689add16de3302c8351dcdd511c44e10682f01d48b8c724a1",
  "source-element:bcced2c132b411c65768300264020f1ad66c6508b5a3d186d97c6f642476431a",
  "source-element:bcf24a2215628b001c88b5ef9964627f00ec0586df390e5d571a2c37673cc29d",
  "source-element:bd44ffdb3f94290c618e2a353b7869d33aa33232ef814c5712693310ba9a9151",
  "source-element:bd765b1860755959b2dcf9859bf9b6fe3b6d3b5a688a3be82283ab7f9a0e2d05",
  "source-element:bd8e5a51add341baca19ea9758381eeb43e81d0846b82210047ff5de7dc21778",
  "source-element:bde7bf963203ed272f96de7539e1360f115fa2713fe184e59a8ffd3a5495ed64",
  "source-element:be1b3538b1cc9ca229bcb037dee2d877d94541642e92e87294a5e5056bdb3d75",
  "source-element:be2c597488e6087b1666f63986f392633d9b2e723e668b1155e4d7e5d5330817",
  "source-element:be2cc0617ce743f3c073fd3893076ddc5142eeffd2fa73dceeafe1adad5e185d",
  "source-element:be423ced29f60977108208d45708cb4047be55a45f0b2cab87b54c183ebdd9ad",
  "source-element:bebd0f714876adcffbe04effb31108acff10f3edb01ada85900f6654e90eabbd",
  "source-element:bec50efdf0835ba9f98db7b70d5dbe3f5b974bc47dcf9aa9ecfaa971cc342e81",
  "source-element:bfa04f2752d23ed7de378657b3a9b171aab6b25c2821d4ebde6fd69cb08a64eb",
  "source-element:bfb83f88f2947e5ed5d2483897eed2a91c72e9f16d62f9dd1774c9fcad9ef674",
  "source-element:bfc2e5453c69da50039165765a3dad1d9030a85528068ca13291ac9894c8f8ce",
  "source-element:bfe545361c7d94726b79202b7a8fe5dd8875c785e4dfefd74706ced308fbaece",
  "source-element:c03d56965db9c4f23f75a589cd81dc049f0ddcd48d94f8f879d06a00bace23ba",
  "source-element:c0585614034917f4da524386d182c4189790338039e2ccf9eb6507ddcd2fdf79",
  "source-element:c09938448615c2c769d81b800ba9eb43c1e591f9b8669d8e75500b24a7a26c98",
  "source-element:c0d29dbcbd7a68534a64f721b83c26cde14b1b67fa0b84b9b1564494c79eb84e",
  "source-element:c111064b4f5c48ae6473803cf84541d51ee4253c4004e705da54e4ed1d76d68c",
  "source-element:c174957f013ed62e60e7dc70ad3d117ffabd6d174f332a6ff620341824022489",
  "source-element:c18b0c97014dcca747a5ba2366f2c630c91a9d2b7628130f000f2476c24718e1",
  "source-element:c198a34aa39a99860f8450ced8cd3e1886940daaf57448660f537de202d1bfad"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L5813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
