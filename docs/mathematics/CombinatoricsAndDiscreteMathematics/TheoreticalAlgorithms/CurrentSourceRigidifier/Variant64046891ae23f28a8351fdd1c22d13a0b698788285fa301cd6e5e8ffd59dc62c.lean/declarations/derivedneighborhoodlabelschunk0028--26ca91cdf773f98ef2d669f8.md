# derivedNeighborhoodLabelsChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00b4a020837b1557cf9a47b364d0c986b19ee58ce272997ea3ef17f6b3816192",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0028",
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
  "slug": "derivedneighborhoodlabelschunk0028--26ca91cdf773f98ef2d669f8",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127218,
    "line": 127151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26ca91cdf773f98ef2d669f843dceb8b780bf5d009d442260c43366f155e2ff3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00b4a020837b1557cf9a47b364d0c986b19ee58ce272997ea3ef17f6b3816192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127151–127218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0028 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[580,885,1098,1099,1136,1567]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[580]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[581,688,1812]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[581]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[582]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[585,1353]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[585]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[58]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[59,64,65,156,217,218,219,234,461,649,700,735,1088,1121,1204,1346,1347,1375,1573,1653,1754,1825,1855,1905,1906]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[59,64,65,156,217,218,219,234,461,649,700,735,1088,1121,1346,1347,1573,1653,1754,1825,1855,1905,1906]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[59]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[604]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[606]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[607]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[60]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[610]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[618]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[625]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[629]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[632]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[633]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[639]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[640,645]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[640]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[641]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[644,647]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[644]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[645]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[646]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[647]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[648]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[649]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[64]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[650]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[652]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[658]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[65]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[66,67,169,269,441,481,932,1176,1834]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[66]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[673]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[674]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[675]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[679]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[67]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[680]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[681]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[682]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[683]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[684]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[686]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[688]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[690]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[691]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[692]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[693]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[694]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[700]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[701]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[704]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[706]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[709]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[70]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[716,722]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[716]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L127151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
