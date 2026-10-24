# selectedCandidateIdsChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07465b9ae017fd4b851afebf295e0e6c49d86ce799cc8950a4bf93d3c3638ac0",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0026",
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
  "slug": "selectedcandidateidschunk0026--879b1624b7b714846e675795",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41648,
    "line": 41581,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:879b1624b7b714846e6757957d3ad62dd0cee4774a0cca0f7d15f464dcdfb87f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07465b9ae017fd4b851afebf295e0e6c49d86ce799cc8950a4bf93d3c3638ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41581–41648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0026 : List String :=
[
  "name-candidate:9d311482c3fd2d6abe7d983613183978ecb73b19458e395d329c2133067f5bea",
  "name-candidate:27370b5c26d1a851013196e262a0aa9bb1f75403f8e5a7f27e6e88c9cf8ccdf3",
  "name-candidate:75b7afbd05d714aea1e4d2e1dec8fbfc09906a2db4343e13e5fbc3d199bb948f",
  "name-candidate:57c19c0b7895ed7f3424652a8cf19a62b2bc8ccb41746a83d744daa373e26188",
  "name-candidate:db91a4e4025e9dce118ccaef2853823e415961f677dcaa430e692bb2d7d5e493",
  "name-candidate:28225190a9ba591197f720c6d2916009f0a1de12042af2cfe799497c7c44f0e0",
  "name-candidate:ff1ed35f65b36497a1a175e1f0019b38694b279a3e51928379a3b3d88a757ea2",
  "name-candidate:89b485961116f3cb93f30134ba35e27167593eb9def79d149c8b84777dbdac2e",
  "name-candidate:423f10f95fb114d4a665727c75b95741f1700f38b5fc17481e9c813ca52ae606",
  "name-candidate:f594615c877506dc85382b60b5ac24111b1a3aec15e90faca85426abcaff602c",
  "name-candidate:a1359fa8c68ddfb687a6836d59768b8b6ba01d976d1dbb9f9cad2c15f7f2200f",
  "name-candidate:01e7ae26227b24607d235645920bb73c065c50f22577cbf276998bfe35579482",
  "name-candidate:2e11bba084a59c616f4111fa054a212e208f1f7ab2fc66b99f41ad8088115450",
  "name-candidate:af9c9714d8dd3abcb8cddc1fe8482c2fc1bedf9b5aeef096470dc597882d789e",
  "name-candidate:c0d34a5d1f2012386fc78a2b595abfb1cd3c63abda91211d56acb38e85f22bb5",
  "name-candidate:4b552f3f2f921c47465bd9ea706eeb053deb1c674606216946fe684a1f0136f6",
  "name-candidate:81b592b309cc3fb07b6a14eab5d0d7895298faabf5a6885ea4635d02817f5e48",
  "name-candidate:2bacd5df9a18ef321166a87a55655a4fad972d48720772630a7d2dc3885d4db3",
  "name-candidate:45d753ad6137841e74331c908cade6ef53a5f3e2488cf108d96318429c1d22c2",
  "name-candidate:90ac5d34faec67a4470770f63a728bbb32dbafe5f44d1646888127c9f622eba3",
  "name-candidate:ce182ff041b7cc5761ebbb9d5c6d8071715d071489136a09f5daab43b1976a65",
  "name-candidate:7f8a4b5055eb8aec33ffbaf4caf9fe0fe4e72e6321524eed83972ec3e284e50d",
  "name-candidate:ad9946e7e77c9b990bfe8a98a851ed0e09dc9e0f1ccffd30ba373523cfd6df24",
  "name-candidate:e107b36d003c59466bbd4ee5e741af0f30ed961884453f637556bcf33035192f",
  "name-candidate:0ce03ac8e75c33c9a105b73dd7066b6c429dd575c70e8434b59d63647d8a3265",
  "name-candidate:ed29b64e2530a83ed06bcf4d7ed42640be11ddba4ea138d38da4f90269e872f1",
  "name-candidate:9b3c371e30f61e843f16d9dd13f5b8c7e94a097f18ab89d1b6730b628bb8e7c1",
  "name-candidate:5713bf7f543a1fca52b2daf20baa1d0ed087e564513feac11777b724198cd132",
  "name-candidate:38f5437889d00b17f5b8af36710268bb2d03fd6e9f2e8d53150eac38d69bdfc2",
  "name-candidate:94307445a35eeb0dabea40e68e1550a566664272023fc57c865fc1bcc8e35647",
  "name-candidate:b78515233437dba836754758d45e7b0661563eb28433e2e8adf0832c8f00b843",
  "name-candidate:80511fdabf6dd8a759d876c77e787b23238ba1d158ecf7d4fef2cde18296efec",
  "name-candidate:0d2092d7ccc3c5defc6ec7249d4ceef6d125b1e41e51d33742d6a081a4c2feae",
  "name-candidate:b3c40155c6aeccfe0bbcdf14494d425c4a3142748687ce833d6dbcea9d7da3a7",
  "name-candidate:3b948d353638e7990fcae3bf2f5a9181ac4a36981c711b7eeb4af166be06bd04",
  "name-candidate:2d31e42de549e7facfc9db9840b6df03065d33795a42a7db093fb3ded0174e35",
  "name-candidate:e1c52c4a5ede6b18ba54bc6a084a301320254f8383430cf39856626ba5357f21",
  "name-candidate:c8f86163db63fb4b01aafb1f55d00c13d0a1bfb7297bc9867e876af7b8f31434",
  "name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc",
  "name-candidate:2d45339bcf6d30229d624d1f162f8573727be9ef277b3a0ee3c79e9ad3ee8ec1",
  "name-candidate:e1bcb167240c398561aef08b154d4f5f16ecaf4344d916fae2fa0b7be4717f65",
  "name-candidate:c3c239d333c72f7f053ca5565cddced3e9619a7e15980305160f412a0cb6cccb",
  "name-candidate:cca13d7fd5c89705d05c077d99087201ee09fc310951816d90f1cdbf47c13506",
  "name-candidate:334c7eb523b062f67809ebece06fe53385149e873e4ee5452bf9f974222548cc",
  "name-candidate:769801bd53f5f382a220274a902130d2d244cd0e98a793cc283f731754ec5964",
  "name-candidate:be18980703474063c09be048ce8cbfaa1e8d12929c61f9a9e447ddc92e23ff27",
  "name-candidate:d390e43b0d24491496614455f959bdc4ee250458961227e00af6a11c1b5f3bac",
  "name-candidate:055c072976d808f97e8ce34af638a5dafea74413b6d9c9a192ba83a63024354e",
  "name-candidate:e251a5e7235538026a9b2096b94cd7f5e21bc91a892522b84eea0f1b82e11c6b",
  "name-candidate:d8b645ca9ab91202458f8795949d5f73d247ee1767242d73ed870734fdf421b1",
  "name-candidate:6eee0427cca3d81942ea5d956d875024bda9f02b0ef917b2b2e1f2496c98dd9b",
  "name-candidate:1fd37878426421434540c4d10358f522b73567aa352e13f24018117f319e5fdb",
  "name-candidate:59f7e2673fb4a69d51f756bad5d9959845cd29095d3be5e46f7dac49b7933aa7",
  "name-candidate:0f428f18063281b41f7666654f742e99741b64bcc426c321b5445eb3f2227b50",
  "name-candidate:a4a443fdd308464741b29d731789e95baf3cf32102efacabbab49f4c463439fc",
  "name-candidate:acf9d5af3439e570d21247e06fedb4ee0ddc05b5fc23681dc17782a21c11180e",
  "name-candidate:07d3537eee1e150fa96f13ae601c04b3a7a26f12a93f7e64ce0bfa3bce2f5dcc",
  "name-candidate:f1f76d58af4615a0ada4129a0083cdfd46c83dbf59cae4fa52dceb8dc7e7a4f2",
  "name-candidate:08750c90ccde86fdd175c0923db37a72d6b6bbc0ba0dd830f60145b6f0e1d390",
  "name-candidate:91c7dfa09813020218468ac8851fc62ffb4b344e5c73b4e69dbbc869e190765d",
  "name-candidate:00b42fe31f3169a98add002e9e4c13fb0fb276b456261fecc1acecf7f839d7e3",
  "name-candidate:656901b3d55799a8f865a2435e6125f7912d09dd5ea3694a06a1e1b53e3e3ba7",
  "name-candidate:3dc6dea3749ae61f8c43357b23a5a943a2547c2a48834e40eace39bc288b1723",
  "name-candidate:09d21f9dc344b22a9a490afdad0075243743d7f7c13d6dc958fce04d533e7390"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L41581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
