# rodriguesFrobenius_semilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc60a95-61c9-b5a2-8c9d-6fa3cf2cb03c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c8068d4-e35a-4379-4619-811cee8e2330",
  "kind": "theorem",
  "lexical_name": "rodriguesFrobenius_semilinear",
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
  "slug": "rodriguesfrobenius-semilinear--b05cbf90e5a04e8b8b9f8aa5",
  "source": {
    "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05cbf90e5a04e8b8b9f8aa5bc8c0ec92101f0f9e906d4a8fc68bedd2ab5817d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c8068d4-e35a-4379-4619-811cee8e2330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rodriguesFrobenius_semilinear
    (operator : RodriguesFrobenius H)
    (coefficient : ℝ)
    (value : H) :
    rodriguesFrobenius operator (coefficient • value) =
      operator.frobenius.scalar coefficient •
        rodriguesFrobenius operator value := by
  unfold rodriguesFrobenius
  rw [operator.frobenius.map_smul]
  exact operator.rodrigues.rotation.map_smul _ _

/-- The declared Frobenius pairing law holds for the combined operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e20714831b2902952d8cecd5183c607ba55b7d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
