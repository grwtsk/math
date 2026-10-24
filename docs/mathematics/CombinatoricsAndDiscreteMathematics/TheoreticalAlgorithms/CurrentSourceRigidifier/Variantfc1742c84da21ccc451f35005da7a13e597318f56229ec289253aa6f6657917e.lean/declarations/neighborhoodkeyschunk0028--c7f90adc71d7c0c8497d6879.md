# neighborhoodKeysChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98509fae8f40779e909adb685a63fcc537bd14760308618c50c7e55d6fedd52c",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0028",
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
  "slug": "neighborhoodkeyschunk0028--c7f90adc71d7c0c8497d6879",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110795,
    "line": 110728,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7f90adc71d7c0c8497d68798087c45f10695357ae8448343d933bc990d4323d",
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

Occurrence: `declaration:98509fae8f40779e909adb685a63fcc537bd14760308618c50c7e55d6fedd52c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110728–110795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0028 : List String :=
[
  "formal-neighborhood:dd23c18dff9feb107e663805166604c0e32062507e9104cde746a56a40237bd5",
  "formal-neighborhood:dd37db3a1fa4588ceba27f3ef0cebca01cc11f43174d97a4c893d7560a602ba3",
  "formal-neighborhood:dd8392ce462e5e0ff78239b31c2cb53a7c1fd906467166e01ad8f450a69e514c",
  "formal-neighborhood:dda3ebc3c4f66e059e161749a4981b331c18fc400fe248d575d53eca94151c4a",
  "formal-neighborhood:dda5169ab9c8104d0c6f5784a7c265f1f86a5a4b157f955f4d1741b7364a061b",
  "formal-neighborhood:ddb556b255d9188beb00101a2220152781af503b0085e98065fc1537be33a455",
  "formal-neighborhood:de7359efd1b2f17092375959ae4e0a7f509ef852eb0985ef3ab98c794cb80cbb",
  "formal-neighborhood:debe99b24173878883b3efcf27091032382f0b392db53e07cd386bac3fb94223",
  "formal-neighborhood:def97dd15b10fe8a0fc091efd631832cafd9d621c5e9883ddcab9e90427da1d0",
  "formal-neighborhood:defca23869c78b939d18bf22ffb80179dbdc80e55c809f2a804253aae6d34e97",
  "formal-neighborhood:df25f8ac68bd7e391670a349a68078a2e0a82e0664754e764b635196005e3c5c",
  "formal-neighborhood:df9148a96cc72d373864dcfe3819a0680f9a8210cb9edab423fabb38ebffbbbe",
  "formal-neighborhood:dfcf5e9e1ab7f15f99915ffb03528f81c1da36d423f825497ee4fccbff7d9ec5",
  "formal-neighborhood:dff2b0218339d9d581c8d2ccaaf1a168172d12a15796d3c3860ba7ada852144f",
  "formal-neighborhood:e01078701a5a17aa953948496285df6afc3d47a1624bc51beaaf0cadba4d8a24",
  "formal-neighborhood:e018c78280759e918297d7a304abf6baba8113343dac4b290af5bc3d102d52b5",
  "formal-neighborhood:e03c5afe2063573dd1b7f999c8748c85107bcb1ca930cd2067cd0cf55c2ca12f",
  "formal-neighborhood:e0630a514fbc4ad59e3d656cccac905b4cb8d5ee2cbbe1770fe2da767fcde33c",
  "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6",
  "formal-neighborhood:e0830e42b19c02772163e72e7736e9a5251686e086041155551288fecf84a0df",
  "formal-neighborhood:e0a278fb7da077decef64ce7acb8bb94ae6172de90b5e3510d8432c2d7dce1f4",
  "formal-neighborhood:e0c78a5390d9b72f6c10a2d3c62e61c2237797cba8362f291b84a7293226ec10",
  "formal-neighborhood:e0d733452ae3b1ff6c99026c5d0752e734df4e9bd50032313eae1094cbf13832",
  "formal-neighborhood:e10a607d50bd0bc690f8f7081d1f0841f6d6b35a009b86ff616439ed93a45a96",
  "formal-neighborhood:e10e6a271ab733c985f36e4ee1c0e7f85e398db329ec5f32b3910d8b86786ad0",
  "formal-neighborhood:e1249f2fa19350dbc529306a4c2d8c5009e0e8686ba72dc7dc60a80d0824a09f",
  "formal-neighborhood:e1334455903e5887798f7c79e80ebfdac4e73903bcde1ab04799f4ba98b51ede",
  "formal-neighborhood:e136ebe2795ae08272dd3766a805cc1ece3eaa9cb8764576e9d1ef0242ae6894",
  "formal-neighborhood:e1411609baec66adc93428ba489ba0ea8a22c5a2bd89a6708ba467863ecdd6fc",
  "formal-neighborhood:e1457e6766bf7220bb27d028ecea028306c889bdd568f2f3881cdbffdfc77c32",
  "formal-neighborhood:e1cb01816548fe51ed140f740a1ba50cc565d47c0f6e8612cf25b481f84f03f1",
  "formal-neighborhood:e214180d7eef58079049dd7a6077bcbfa4c5f7b2edd68d3cac117a11206b9184",
  "formal-neighborhood:e227f0c6cbe8aa3cd6de9a500e58273b47b24df0cf64a144a6f98a8c9773849d",
  "formal-neighborhood:e23ace156be5a8da2768aa30f8206313c76d030495e8d8381afa612f1dbc7b8a",
  "formal-neighborhood:e23ed9d058b5af9371ef9e117b64b458c507516f1cd19ee8d86e905c97d1b6b4",
  "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83",
  "formal-neighborhood:e29e58a00db8e547316324a36d1e465947b6e8b0266b58971718209d2e05bba5",
  "formal-neighborhood:e2cd8cf0fec6243ee0079d21a6b612b87458cd61dba4f2dd09d3c4aa764b2930",
  "formal-neighborhood:e2d319d956546235f937a66e8403df6162cb577cf5441eb17422ffa21cdbd9e8",
  "formal-neighborhood:e2f2d3df4f60bd301b425bd9d36825c00f19e23bcb0d163d2d9d140dd91df094",
  "formal-neighborhood:e35a388cdbdbf22cd1bf4dfbf71e39ac18718b5d5fecd07d9297b193c2da9305",
  "formal-neighborhood:e3625c2a14ead4d8166740779861888729e1563a11592b89d14b61b07b3f0c11",
  "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569",
  "formal-neighborhood:e38c8c08032a6bd5f5d339d4b10c96ad1f542fbd62a6d615aa014dc2b077c7e5",
  "formal-neighborhood:e39a1da376b86b56ae5b0be06fdc61a4221ff4016e2b611a53846ad22610a9c8",
  "formal-neighborhood:e39f823e964358ad3b64c19fca46de6aff61678e57ae1786dcb9af24c60af628",
  "formal-neighborhood:e3e2afd9f2342d51e4368c4a0261ab9541d564f0f4c563dcd400b1f278f034b6",
  "formal-neighborhood:e3f22b17ea252329b0c9b25eb2bc7b53bbaae2594ee68a3da59bab654f493069",
  "formal-neighborhood:e44e42f7bbe525a36931aa510414ba3f171c801e68f059ee6259d32a846c9773",
  "formal-neighborhood:e4ea6668b012035d36175c6df5ee859b42c4d44365ff88bad5bc593223611111",
  "formal-neighborhood:e55b2f35a50d043dabaf4b48fa137f6e3bc18cf7d94c1e95535ca687993da2b1",
  "formal-neighborhood:e58c8ceba4f4985ca891af20da0c8ca64490087733a619178bc183977619abfa",
  "formal-neighborhood:e5b3a4b4e3ff9153b460825660aa7b43ee3c29c016cc63156069dc564e0422b3",
  "formal-neighborhood:e5c69f8604dc29d447a75976ab734f84d96775cdc8973771ceff31c8353cbccb",
  "formal-neighborhood:e5d1e2f6bd707cbb2852c445b8c38d553e2a8b64f7d5fc3012a3eed3490abc48",
  "formal-neighborhood:e5e0abf3084169e731ee017a05c802975b400f2c4666db9b9aab10a1cabeedbb",
  "formal-neighborhood:e60992b47b12ac2434edd9a7f70cca093dd145070a1f70e6e050e4c1371f0a25",
  "formal-neighborhood:e632dd4e5d2cdb00818290c5981d4458906bf034a397df168c50c6cdf1327b21",
  "formal-neighborhood:e674d30a04e8eb2cab5dbf955fb6921bf4ae1625327514df02caf2d2d63dac8a",
  "formal-neighborhood:e67689e9e100bee2ec8efb4431461a5d32e9d83640e34232386f107b51bc8c5d",
  "formal-neighborhood:e694b9bd989902f72d531a1e49afd74cdaa4f2e1a0ec1595f6d57af8df93b1dd",
  "formal-neighborhood:e6c0a5a54f070580bf8153f7fdb615f44b5ecd113782c1f6e8ac21c25d4c495b",
  "formal-neighborhood:e6cad853498af17a2c624b859b055627a1b165800e12b8f625dc9d5c42df2f78",
  "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L110728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
