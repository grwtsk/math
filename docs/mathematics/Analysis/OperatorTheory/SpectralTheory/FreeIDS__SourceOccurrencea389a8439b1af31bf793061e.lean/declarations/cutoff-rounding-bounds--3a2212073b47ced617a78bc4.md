# cutoff_rounding_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a965c8c-9ddc-c1d2-1852-30d37b132fc7",
  "kind": "theorem",
  "lexical_name": "cutoff_rounding_bounds",
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
  "slug": "cutoff-rounding-bounds--3a2212073b47ced617a78bc4",
  "source": {
    "blob": "c343a7fcc959f20cd8c08ab7e51fbbe269360adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a2212073b47ced617a78bc43db1a0dfce0d17c00a7ad4561f6e68d8056e02fe",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a965c8c-9ddc-c1d2-1852-30d37b132fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cutoff_rounding_bounds (N : ℕ) (E : ℝ) :
    cutoff N E - 1 ≤ ((Nat.ceil (cutoff N E)-1:ℕ):ℝ) ∧
      ((Nat.ceil (cutoff N E)-1:ℕ):ℝ) ≤ cutoff N E := by
  have hx := (cutoff_bounds N E).1
  by_cases hc : Nat.ceil (cutoff N E) = 0
  · have he : cutoff N E = 0 := le_antisymm (Nat.ceil_eq_zero.mp hc) hx
    simp [he]
  · have hn : 1 ≤ Nat.ceil (cutoff N E) := by omega
    rw [Nat.cast_sub hn, Nat.cast_one]
    exact ⟨by linarith [Nat.le_ceil (cutoff N E)],
      by linarith [(Nat.ceil_lt_add_one hx).le]⟩

/-- A uniform one-over-volume error for the actual eigenvalue count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c343a7fcc959f20cd8c08ab7e51fbbe269360adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
