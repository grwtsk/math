# deriv_z_coth_z_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d5df16c-58eb-0b31-2e42-1c1e8c8474b9",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_le_one",
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
  "slug": "deriv-z-coth-z-le-one--965b5c1c4907c05daf592072",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5879,
    "line": 5856,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965b5c1c4907c05daf59207208bf462a94f8f4c12cb952850d118daec7c3035b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d5df16c-58eb-0b31-2e42-1c1e8c8474b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5856–5879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_z_coth_z_le_one (w : ℂ) (hw : |w.im| ≤ π / 4) :
    ‖deriv (fun z ↦ z * coth z) w‖ ≤ 1 := by
  set f := fun z : ℂ ↦ deriv (fun w : ℂ ↦ w * coth w) z
  have h_anal : AnalyticOn ℂ (fun z ↦ deriv (fun w ↦ w * coth w) z) (im ⁻¹' Set.Icc (-(π / 4)) (π / 4)) := by
    apply analyticOn_deriv_z_coth_z
    intro v hv; simp only [Set.mem_preimage, Set.mem_Icc] at hv
    simp_rw [abs_lt]; constructor <;> linarith [Real.pi_pos]
  apply PhragmenLindelof.horizontal_strip (a := -(π / 4)) (b := π / 4) (C := 1)
  · constructor
    · exact (h_anal.mono (Set.preimage_mono Set.Ioo_subset_Icc_self)).differentiableOn
    · rw [Complex.closure_preimage_im, closure_Ioo (by linarith [Real.pi_pos])]
      exact h_anal.continuousOn
  · exact deriv_z_coth_z_growth_bound
  · intro v hv; dsimp [f]
    rw [← neg_neg v, deriv_z_coth_z_odd, norm_neg]
    rw [show v = v.re + ↑(-(π / 4)) * Complex.I by apply Complex.ext <;> simp [hv],
        show -(↑v.re + ↑(-(π / 4)) * Complex.I) = ↑(-v.re) + ↑(π / 4) * Complex.I by apply Complex.ext <;> simp]
    exact le_of_lt (deriv_z_coth_z_bound_boundary (-v.re))
  · intro v hv; dsimp [f]
    rw [show v = v.re + ↑(π/4) * Complex.I by apply Complex.ext <;> simp [hv]]
    exact le_of_lt (deriv_z_coth_z_bound_boundary v.re)
  · rw [abs_le] at hw; linarith
  · rw [abs_le] at hw; linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
