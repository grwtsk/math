# curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee17fc70-cfa9-4314-b920-3ced17136d29",
  "kind": "theorem",
  "lexical_name": "curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric",
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
  "slug": "curveintegral-segment-add-eq-of-hasfderivwithinat-symmetric--2b52202d08e94ebe23e5c1fb",
  "source": {
    "blob": "c515e8e039695cbb48aa58af65271ef278faf615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b52202d08e94ebe23e5c1fb9063a559befcd3f32a9f4244d20f65013162e374",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee17fc70-cfa9-4314-b920-3ced17136d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric (hs : Convex ℝ s)
    (hω : ∀ x ∈ s, HasFDerivWithinAt ω (dω x) s x)
    (hdω : ∀ a ∈ s, ∀ x ∈ tangentConeAt ℝ s a, ∀ y ∈ tangentConeAt ℝ s a, dω a x y = dω a y x)
    (ha : a ∈ s) (hb : b ∈ s) (hc : c ∈ s) :
    (∫ᶜ x in .segment a b, ω x) + ∫ᶜ x in .segment b c, ω x = ∫ᶜ x in .segment a c, ω x := by
  set φ := ContinuousMap.Homotopy.affine (Path.segment a b : C(I, E)) (Path.segment a c)
  have hφs : range φ ⊆ s := by
    rw [range_subset_iff]
    intro x
    simp [φ, ha, hb, hc, hs.lineMap_mem]
  have := φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt (t := range φ) (ω := ω)
    (dω := dω) ?_ ?_ ?_ ?_ ?_
  · convert! this using 2
    · dsimp [φ]
      rw [← Path.cast_segment (lineMap_apply_one a b) (lineMap_apply_one a c), curveIntegral_cast]
    · dsimp [φ]
      rw [← Path.cast_segment (lineMap_apply_zero a b) (lineMap_apply_zero a c)]
      simp
  · intros
    apply mem_range_self
  · exact fun x hx ↦ (hω x (hφs hx)).mono hφs
  · rw [(isCompact_range <| map_continuous _).isClosed.closure_eq]
    exact fun x hx ↦ (hω x <| hφs hx).continuousWithinAt.mono hφs
  · intro x hx u hu v hv
    apply hdω <;> grw [← hφs] <;> assumption
  · have : EqOn (fun x : ℝ × ℝ ↦ IccExtend zero_le_one (φ.extend x.1) x.2)
        (fun x ↦ lineMap (lineMap a b x.2) (lineMap a c x.2) x.1) (Icc 0 1) := by
      rw [Icc_prod_eq]
      rintro ⟨x, y⟩ ⟨hx, hy⟩
      lift x to I using hx
      lift y to I using hy
      simp [φ]
    exact .congr (by fun_prop) this

variable [CompleteSpace F]

/-- If `ω` is a closed `1`-form on a convex set `s`,
then the function given by `F b = ∫ᶜ x in Path.segment a b, ω x` is a primitive of `ω` on `s`,
i.e., `dF = ω`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c515e8e039695cbb48aa58af65271ef278faf615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
