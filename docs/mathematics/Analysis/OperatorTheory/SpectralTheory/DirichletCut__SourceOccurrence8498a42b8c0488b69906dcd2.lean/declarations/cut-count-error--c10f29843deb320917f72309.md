# cut_count_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f20de70d-6801-e850-0855-01124f84be67",
  "kind": "theorem",
  "lexical_name": "cut_count_error",
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
  "slug": "cut-count-error--c10f29843deb320917f72309",
  "source": {
    "blob": "34190c193433b7b9fa7cd8c46beade45352fcd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/Spectral/DirichletCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10f29843deb320917f723098a49a3f02982f20c270c1001c6940c3c8da90165",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f20de70d-6801-e850-0855-01124f84be67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cut_count_error (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (c : ℕ) (E : ℝ) :
    |(cutCount N α V ξ origin c E : ℝ) - (sturmianCount N α V ξ origin E : ℝ)| ≤ 2 := by
  have h := eigenvalueCount_difference_bounds_of_kernel
    (hamiltonian_isHermitian N α V ξ origin)
    (cutHamiltonian_isHermitian N α V ξ origin c) (boundaryCoordinates N c)
    (by
      intro v hv
      have he : (joiningEdge N c).toEuclideanLin v = 0 := by
        rw [joiningEdge_factor, LinearMap.comp_apply, hv, map_zero]
      change (hamiltonian N α V ξ origin).toEuclideanLin v =
        (hamiltonian N α V ξ origin - joiningEdge N c).toEuclideanLin v
      simp only [Matrix.toEuclideanLin, map_sub, LinearMap.sub_apply]
      change _ = _ - (joiningEdge N c).toEuclideanLin v
      rw [he, sub_zero]) E
  simpa [cutCount, sturmianCount] using h

/-- Reindexing the actual cut gives the two consecutive restrictions, with
the second origin shifted by the full first volume. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/DirichletCut.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34190c193433b7b9fa7cd8c46beade45352fcd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
