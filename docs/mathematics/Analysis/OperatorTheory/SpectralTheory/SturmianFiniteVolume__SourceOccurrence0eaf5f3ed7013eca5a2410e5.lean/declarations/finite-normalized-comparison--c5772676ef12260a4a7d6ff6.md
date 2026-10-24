# finite_normalized_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76184552-b900-3619-1c37-0dfc9805c073",
  "kind": "theorem",
  "lexical_name": "finite_normalized_comparison",
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
  "slug": "finite-normalized-comparison--c5772676ef12260a4a7d6ff6",
  "source": {
    "blob": "b231e7ce39eb2cb0196d56e7ad9190fd8326d34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Spectral/SturmianFiniteVolume.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5772676ef12260a4a7d6ff6c7097ead2eba80c2ef2d30d4a5eba3eefd775501",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76184552-b900-3619-1c37-0dfc9805c073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_normalized_comparison (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeNormalizedCount N (E - max V 0) ≤ sturmianNormalizedCount N α V ξ origin E ∧
    sturmianNormalizedCount N α V ξ origin E ≤ freeNormalizedCount N (E - min V 0) := by
  have h := finite_count_comparison N α V ξ origin E
  constructor
  · exact div_le_div_of_nonneg_right (by exact_mod_cast h.1) (Nat.cast_nonneg N)
  · exact div_le_div_of_nonneg_right (by exact_mod_cast h.2) (Nat.cast_nonneg N)

/-- Pass the proved comparisons to actual pointwise count limits. This theorem
does not assert that either limit exists or identifies it with a spectral IDS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/SturmianFiniteVolume.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b231e7ce39eb2cb0196d56e7ad9190fd8326d34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
