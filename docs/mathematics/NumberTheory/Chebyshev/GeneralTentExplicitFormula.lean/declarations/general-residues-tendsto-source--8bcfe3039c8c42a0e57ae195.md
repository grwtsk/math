# general_residues_tendsto_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c965426-a10f-7b12-7d35-1fbd0dd8f77b",
  "kind": "theorem",
  "lexical_name": "general_residues_tendsto_source",
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
  "slug": "general-residues-tendsto-source--8bcfe3039c8c42a0e57ae195",
  "source": {
    "blob": "1029daef4e33c6e277ab5dfd86840ac977cefb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bcfe3039c8c42a0e57ae195e93191ef9d44f476a2cc97df8462ae1a4ee29e7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c965426-a10f-7b12-7d35-1fbd0dd8f77b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem general_residues_tendsto_source (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => (h : ℂ) -
      (∑ z ∈ heightHead (separatedHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) atTop (𝓝 (tentMangoldt x h)) := by
  have ht := (separated_right_tendsto_tentMangoldt x h hh ha).sub
    (combined_rays_tendsto_zero x h hh ha)
  have he : (fun N : ℕ => vertical (integrand x h) 2 (separatedHeight N) /
      ((2 * Real.pi : ℝ) : ℂ) -
      (horizontalRay x h (separatedHeight N) - horizontalRay x h (-separatedHeight N)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) =ᶠ[atTop]
    (fun N : ℕ => (h : ℂ) -
      (∑ z ∈ heightHead (separatedHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) := by
    apply Eventually.of_forall
    intro N
    dsimp only
    rw [right_eq_residues_add_horizontalRays x h (separatedHeight N) hh ha
      (separatedHeight_pos N) (separatedHeight_avoids N)]
    ring
  simpa only [sub_zero] using (tendsto_congr' he).mp ht

/-- All source, counting, summability and contour-limit premises are discharged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1029daef4e33c6e277ab5dfd86840ac977cefb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
