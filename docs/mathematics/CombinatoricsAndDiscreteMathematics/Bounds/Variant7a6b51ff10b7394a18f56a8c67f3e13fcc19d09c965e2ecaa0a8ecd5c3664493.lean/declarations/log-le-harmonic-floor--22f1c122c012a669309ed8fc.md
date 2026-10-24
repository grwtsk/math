# log_le_harmonic_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac208572-4720-a78c-ab76-4c37c1c97c63",
  "kind": "theorem",
  "lexical_name": "log_le_harmonic_floor",
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
  "slug": "log-le-harmonic-floor--22f1c122c012a669309ed8fc",
  "source": {
    "blob": "809e2753eac72c907d1a657b0e0c060cd7844cbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f1c122c012a669309ed8fcab9506d6b26c35170f63612e3fd064c64735472d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac208572-4720-a78c-ab76-4c37c1c97c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_le_harmonic_floor (y : ℝ) (hy : 0 ≤ y) :
    Real.log y ≤ harmonic ⌊y⌋₊ := by
  by_cases h0 : y = 0
  · simp [h0]
  · calc
      _ ≤ Real.log ↑(Nat.floor y + 1) := ?_
      _ ≤ _ := log_add_one_le_harmonic _
    gcongr
    apply (Nat.le_ceil y).trans
    norm_cast
    exact Nat.ceil_le_floor_add_one y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809e2753eac72c907d1a657b0e0c060cd7844cbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
