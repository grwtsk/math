# derivedNeighborhoodLabelsChunk0030

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e270192bb6e262b6b83c6467bfb93139ec7ab9e70ceb922d7cdc7b49fc800a8",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0030",
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
  "slug": "derivedneighborhoodlabelschunk0030--70352644e3b7cb01f34c593f",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113424,
    "line": 113357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70352644e3b7cb01f34c593ff92f95bd733ddf2b6cd91b3003c213c1161cfc49",
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

Occurrence: `declaration:0e270192bb6e262b6b83c6467bfb93139ec7ab9e70ceb922d7cdc7b49fc800a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113357–113424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0030 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[896]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[897]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[9,69,164,289,351,418,548,691,903,1074,1114,1212,1410,1476,1498,1553,1642]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[901]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[902]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[903]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[904]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[905]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[906]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[907]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[908]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[909]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[910]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[911]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[912]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[913]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[914]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[915,1771]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[915]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[916]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[917,1172]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[917]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[918]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[919]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[920]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[921]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[922,1167,1400,1401,1402,1803]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[922]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[923]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[924]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[925]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[926]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[927]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[928]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[930]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[931]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[932]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[933]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[934]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[935]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[936]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[937]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[938]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[939]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[940]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[941]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[942]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[943]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[944]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[945,1432,1773]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[945]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[946]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[947]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[948]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[949]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[950]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[951]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[952]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[953]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[954]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[955]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[956]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[957]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[958]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L113357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
