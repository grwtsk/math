# ExpressionReferencesResolved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c85321d326ee000218a57fb96cfed3c2f6180c66d7eac89f056368f947ad3e66",
  "kind": "def",
  "lexical_name": "ExpressionReferencesResolved",
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
  "slug": "expressionreferencesresolved--9b070a2077b595a56e1ac947",
  "source": {
    "blob": "49a7420d8e7983342dd66d85014351d90ca9da7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b070a2077b595a56e1ac94756de4aee2396ff53025ad4e6a8a2b3c5a47d8c2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c85321d326ee000218a57fb96cfed3c2f6180c66d7eac89f056368f947ad3e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExpressionReferencesResolved (extraction : EnvironmentExtraction) : Prop :=
  extraction.expressionIds.Nodup ∧
  (∀ expression ∈ extraction.expressions,
    ∀ child ∈ expression.semanticRoot.childIds,
      child ∈ extraction.expressionIds) ∧
  ∀ declaration ∈ extraction.declarations,
    (∀ rootId, declaration.typeExprId = some rootId →
      rootId ∈ extraction.expressionIds) ∧
    (∀ rootId, declaration.valueExprId = some rootId →
      rootId ∈ extraction.expressionIds)

/-- Canonical expressions form an acyclic graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a7420d8e7983342dd66d85014351d90ca9da7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
