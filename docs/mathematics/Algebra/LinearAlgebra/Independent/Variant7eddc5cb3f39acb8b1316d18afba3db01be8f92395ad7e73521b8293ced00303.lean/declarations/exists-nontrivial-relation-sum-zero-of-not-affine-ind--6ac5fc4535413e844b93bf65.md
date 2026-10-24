# exists_nontrivial_relation_sum_zero_of_not_affine_ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c04fb4-b9b2-33b2-1415-ae7a267bd60d",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_relation_sum_zero_of_not_affine_ind",
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
  "slug": "exists-nontrivial-relation-sum-zero-of-not-affine-ind--6ac5fc4535413e844b93bf65",
  "source": {
    "blob": "cbdbc0e00222ec1efb7a6f5a9996548a64749fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 622,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac5fc4535413e844b93bf6541dc38da8be462eea0bf042619c190a3ee510373",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c04fb4-b9b2-33b2-1415-ae7a267bd60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_relation_sum_zero_of_not_affine_ind {t : Finset V}
    (h : ¬AffineIndependent k ((↑) : t → V)) :
    ∃ f : V → k, ∑ e ∈ t, f e • e = 0 ∧ ∑ e ∈ t, f e = 0 ∧ ∃ x ∈ t, f x ≠ 0 := by
  classical
    rw [affineIndependent_iff_of_fintype] at h
    simp only [exists_prop, not_forall] at h
    obtain ⟨w, hw, hwt, i, hi⟩ := h
    simp only [Finset.weightedVSub_eq_weightedVSubOfPoint_of_sum_eq_zero _ w ((↑) : t → V) hw 0,
      vsub_eq_sub, Finset.weightedVSubOfPoint_apply, sub_zero] at hwt
    let f : ∀ x : V, x ∈ t → k := fun x hx => w ⟨x, hx⟩
    refine ⟨fun x => if hx : x ∈ t then f x hx else (0 : k), ?_, ?_, by use i; simp [f, hi]⟩
    on_goal 1 =>
      suffices (∑ e ∈ t, dite (e ∈ t) (fun hx => f e hx • e) fun _ => 0) = 0 by
        convert! this
        rename V => x
        by_cases hx : x ∈ t <;> simp [hx]
    all_goals
      simp only [f, Finset.sum_dite_of_true fun _ h => h, Finset.mk_coe, hwt, hw]

variable {s : Finset ι} {w w₁ w₂ : ι → k} {p : ι → V}

/-- Viewing a module as an affine space modelled on itself, we can characterise affine independence
in terms of linear combinations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbdbc0e00222ec1efb7a6f5a9996548a64749fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
