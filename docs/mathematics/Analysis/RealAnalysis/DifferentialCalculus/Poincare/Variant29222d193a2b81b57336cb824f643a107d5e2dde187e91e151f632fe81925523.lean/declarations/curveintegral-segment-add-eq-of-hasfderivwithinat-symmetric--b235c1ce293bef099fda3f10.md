# curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d610b410-20c1-b28b-0d8c-9286ba365fe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63c7e6c1-b04b-e80b-4e54-5e56e6b8ba8e",
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
  "slug": "curveintegral-segment-add-eq-of-hasfderivwithinat-symmetric--b235c1ce293bef099fda3f10",
  "source": {
    "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b235c1ce293bef099fda3f108ff1708266eeb293eca59476fdfbdf82a46f0e5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c7e6c1-b04b-e80b-4e54-5e56e6b8ba8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–342.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a87cb3a0d2a5d2dc3cc452a7319962a792d91dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
