# integral_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c1a9d74-9884-76d7-3858-81689f4ab33f",
  "kind": "theorem",
  "lexical_name": "integral_phi_le",
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
  "slug": "integral-phi-le--11c634c4da8cb0296a171e25",
  "source": {
    "blob": "ac44c49c44d5089268b23a66c0bd640550a8efe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c634c4da8cb0296a171e259747c153982022d470508fd3e4d32e6225037939",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c1a9d74-9884-76d7-3858-81689f4ab33f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_phi_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, phi ϱ L w u ≤ L := by
  have hL : 0 ≤ L := by linarith
  have hle : ∀ u, phi ϱ L w u ≤ (Icc (-(L / 2)) (L / 2)).indicator (fun _ => (1 : ℝ)) u := by
    intro u
    by_cases hu : u ∈ Icc (-(L / 2)) (L / 2)
    · rw [indicator_of_mem hu]; exact phi_le_one hϱ u
    · rw [indicator_of_notMem hu]
      have : u ∉ Function.support (phi ϱ L w) := fun h => hu (phi_support_subset hϱ hw h)
      rw [Function.notMem_support] at this
      rw [this]
  calc ∫ u, phi ϱ L w u ≤ ∫ u, (Icc (-(L / 2)) (L / 2)).indicator (fun _ => (1 : ℝ)) u := by
        apply integral_mono (phi_integrable hϱ hw hwL) _ hle
        exact (integrable_indicator_iff measurableSet_Icc).mpr (integrableOn_const (by simp))
    _ = L := by
        rw [integral_indicator_const _ measurableSet_Icc, measureReal_def, Real.volume_Icc,
          ENNReal.toReal_ofReal (by linarith), smul_eq_mul, mul_one]
        ring

/-- [eq:hfbound] for φ, 0-th order: `‖φ̂(z)‖ ≤ e^{|Im z|·L/2} · ‖φ‖₁ ≤ e^{|Im z| L/2} · L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac44c49c44d5089268b23a66c0bd640550a8efe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
