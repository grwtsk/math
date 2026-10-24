# norm_right_residue_defect_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45a094bc-7942-8ec4-9821-c5d73b497204",
  "kind": "theorem",
  "lexical_name": "norm_right_residue_defect_le",
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
  "slug": "norm-right-residue-defect-le--93db009fd23ca40d3c6b72e2",
  "source": {
    "blob": "135a5c01991efd725d2b4a10102db71dac32fa04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93db009fd23ca40d3c6b72e258c1ff0c98f9e8ea5374f2ac6be7209f0e4c1cf6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45a094bc-7942-8ec4-9821-c5d73b497204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_right_residue_defect_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) :
    ‖vertical (integrand x h) 2 (separatedHeight N) / ((2 * Real.pi : ℝ) : ℂ) -
      ((h : ℂ) - (∑ z ∈ heightHead (separatedHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (rationalTentCorrection x h : ℂ))‖ ≤
      selectedRayBudget x h N / Real.pi := by
  rw [right_eq_residues_add_horizontalRays x h (separatedHeight N) hh ha
    (separatedHeight_pos N) (separatedHeight_avoids N)]
  simpa only [add_sub_cancel_left] using norm_combined_selected_rays_le x h hh ha N hN

/-- Fixed arithmetic interval: no zero-count, source-identity or summability input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135a5c01991efd725d2b4a10102db71dac32fa04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
