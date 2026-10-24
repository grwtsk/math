# ExpressionReferencesResolved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c3fa9b90a3adc7dd8d2bca812432d2f196ada38086ec90f7a19fd33b434dc6d",
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
  "slug": "expressionreferencesresolved--88eccb669020ff79cf797eb7",
  "source": {
    "blob": "673b4d1a376cb81457047c269b7c4808e85a8889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta4131e87d36b8a8b019feaef6a7a6b32b6f28f1573f19d728999f582c6a5bdc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88eccb669020ff79cf797eb7371927a4011eb518ebab8569924bdef06ebccac4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta4131e87d36b8a8b019feaef6a7a6b32b6f28f1573f19d728999f582c6a5bdc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c3fa9b90a3adc7dd8d2bca812432d2f196ada38086ec90f7a19fd33b434dc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta4131e87d36b8a8b019feaef6a7a6b32b6f28f1573f19d728999f582c6a5bdc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta4131e87d36b8a8b019feaef6a7a6b32b6f28f1573f19d728999f582c6a5bdc5.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673b4d1a376cb81457047c269b7c4808e85a8889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
