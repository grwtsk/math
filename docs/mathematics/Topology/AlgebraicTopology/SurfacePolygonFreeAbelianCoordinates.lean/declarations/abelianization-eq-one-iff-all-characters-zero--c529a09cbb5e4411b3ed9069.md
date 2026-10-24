# abelianization_eq_one_iff_all_characters_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42724956-9cbb-8947-1ce0-bdc54860397e",
  "kind": "theorem",
  "lexical_name": "abelianization_eq_one_iff_all_characters_zero",
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
  "slug": "abelianization-eq-one-iff-all-characters-zero--c529a09cbb5e4411b3ed9069",
  "source": {
    "blob": "231ff750ba448b37ec1e4d19bc17d778b248ede5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 196,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c529a09cbb5e4411b3ed90691b9270bc729cb9ee6fecb8ba5bf0981b84ec10a1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42724956-9cbb-8947-1ce0-bdc54860397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abelianization_eq_one_iff_all_characters_zero (k : ℕ)
    (w : FreeGroup (GenusLetter k)) :
    (Abelianization.of w :
        Abelianization (FreeGroup (GenusLetter k))) = 1 ↔
      ∀ x : GenusLetter k,
        ((exponentCharacter k x) w).toAdd = 0 := by
  constructor
  · intro hw x
    have h := canonicalCoordinates_eq_exponentCharacter k w x
    rw [hw] at h
    simpa using h.symm
  · intro h
    apply (canonicalAbelianizationCoordinates k).injective
    have hzero :
        (canonicalAbelianizationCoordinates k
          (Abelianization.of w)) = 1 := by
      apply Multiplicative.toAdd.injective
      funext x
      calc
        ((canonicalAbelianizationCoordinates k)
          (Abelianization.of w)).toAdd x =
            ((exponentCharacter k x) w).toAdd :=
          canonicalCoordinates_eq_exponentCharacter k w x
        _ = 0 := h x
        _ = (1 : Multiplicative (OneCellChains k)).toAdd x := rfl
    simpa using hzero

/-- Source-bound hostile test: a word missing its inverse b-edge
has NONZERO coordinates in the complete canonical quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231ff750ba448b37ec1e4d19bc17d778b248ede5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
