# decorative_expression_keeps_exact_fan_in

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "954c3e20eac02e83f510b750b25aacfa1642ef66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae062e56-e935-baca-2a13-9ce33636cc94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29ffa4fb-3013-a511-0ffe-a8bf2c76c6d7",
  "kind": "theorem",
  "lexical_name": "decorative_expression_keeps_exact_fan_in",
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
  "slug": "decorative-expression-keeps-exact-fan-in--f5edc436a22aa4a1a7728a82",
  "source": {
    "blob": "954c3e20eac02e83f510b750b25aacfa1642ef66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5edc436a22aa4a1a7728a823c0d1e17e99ddcb10b783eeade2e2de352070931",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ffa4fb-3013-a511-0ffe-a8bf2c76c6d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decorative_expression_keeps_exact_fan_in :
    ∃ left right : decorativeDerivation.SourceIndex,
      left ≠ right ∧
      decorativeDerivation.sourceNode left ≠ decorativeDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    decorativeDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

#check decorativeDerivation
#check decorative_expression_covers_both
#check decorative_expression_keeps_exact_fan_in

end FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954c3e20eac02e83f510b750b25aacfa1642ef66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
