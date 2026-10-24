# ODE_solution_unique_of_mem_Icc_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf78588-5840-fa32-e5d8-e8a681008fba",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique_of_mem_Icc_left",
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
  "slug": "ode-solution-unique-of-mem-icc-left--962524aaaa7ecd1ac54b1057",
  "source": {
    "blob": "1102f10f0adef1deeef865a1744bc8a58343f7f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:962524aaaa7ecd1ac54b10570f2cb094af53d69ba30c22a4304babba023de665",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf78588-5840-fa32-e5d8-e8a681008fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique_of_mem_Icc_left
    (hv : ∀ t ∈ Ioc a b, LipschitzOnWith K (v t) (s t))
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ioc a b, HasDerivWithinAt f (v t (f t)) (Iic t) t)
    (hfs : ∀ t ∈ Ioc a b, f t ∈ s t)
    (hg : ContinuousOn g (Icc a b))
    (hg' : ∀ t ∈ Ioc a b, HasDerivWithinAt g (v t (g t)) (Iic t) t)
    (hgs : ∀ t ∈ Ioc a b, g t ∈ s t)
    (hb : f b = g b) :
    EqOn f g (Icc a b) := by
  have hv' : ∀ t ∈ Ico (-b) (-a), LipschitzOnWith K (Neg.neg ∘ (v (-t))) (s (-t)) := by
    intro t ht
    replace ht : -t ∈ Ioc a b := by
      simp at ht ⊢
      constructor <;> linarith
    rw [← one_mul K]
    exact LipschitzWith.id.neg.comp_lipschitzOnWith (hv _ ht)
  have hmt1 : MapsTo Neg.neg (Icc (-b) (-a)) (Icc a b) :=
    fun _ ht ↦ ⟨le_neg.mp ht.2, neg_le.mp ht.1⟩
  have hmt2 : MapsTo Neg.neg (Ico (-b) (-a)) (Ioc a b) :=
    fun _ ht ↦ ⟨lt_neg.mp ht.2, neg_le.mp ht.1⟩
  have hmt3 (t : ℝ) : MapsTo Neg.neg (Ici t) (Iic (-t)) :=
    fun _ ht' ↦ mem_Iic.mpr <| neg_le_neg ht'
  suffices EqOn (f ∘ Neg.neg) (g ∘ Neg.neg) (Icc (-b) (-a)) by
    rw [eqOn_comp_right_iff] at this
    convert this
    simp
  apply ODE_solution_unique_of_mem_Icc_right hv'
    (hf.comp continuousOn_neg hmt1) _ (fun _ ht ↦ hfs _ (hmt2 ht))
    (hg.comp continuousOn_neg hmt1) _ (fun _ ht ↦ hgs _ (hmt2 ht)) (by simp [hb])
  · intros t ht
    convert HasFDerivWithinAt.comp_hasDerivWithinAt t (hf' (-t) (hmt2 ht))
      (hasDerivAt_neg t).hasDerivWithinAt (hmt3 t)
    simp
  · intros t ht
    convert HasFDerivWithinAt.comp_hasDerivWithinAt t (hg' (-t) (hmt2 ht))
      (hasDerivAt_neg t).hasDerivWithinAt (hmt3 t)
    simp

/-- A version of `ODE_solution_unique_of_mem_Icc_right` for uniqueness in a closed interval whose
interior contains the initial time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1102f10f0adef1deeef865a1744bc8a58343f7f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
