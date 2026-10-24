# fixedSubmodule_transvection_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:608cb903-5b44-443d-d7d3-0f67f1812080",
  "kind": "theorem",
  "lexical_name": "fixedSubmodule_transvection_mul",
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
  "slug": "fixedsubmodule-transvection-mul--1e89311d844a35bb4bbbc92a",
  "source": {
    "blob": "25f131af9a73adb314d09ac209d2f389d8587063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e89311d844a35bb4bbbc92a638854337b1101ef1f971acf42f8c8d13c7654a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:608cb903-5b44-443d-d7d3-0f67f1812080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedSubmodule_transvection_mul {f : Dual K V} {v : V}
    (hv : v ∉ e.fixedSubmodule) (hf : e.fixedSubmodule.map f = ⊥)
    (hfv : f (v - e v) = 0) (hfv' : f (e v) = 1) :
    (transvection hfv * e).fixedSubmodule = e.fixedSubmodule ⊔ K ∙ v := by
  symm
  suffices e.fixedSubmodule ⊔ K ∙ v ≤ (transvection hfv * e).fixedSubmodule by
    apply Submodule.eq_of_le_of_finrank_le this
    rw [finrank_sup_span_singleton hv, add_comm]
    apply finrank_fixedSubmodule_dilatransvection_mul_le
    exact transvection_mem_dilatransvections hfv
  simp only [sup_le_iff, Submodule.span_singleton_le_iff_mem]
  have ht : e.fixedSubmodule ≤ (transvection hfv).fixedSubmodule := fun x hx ↦ by
    rw [mem_fixedSubmodule_transvection_iff, smul_eq_zero]
    left
    rw [← Submodule.mem_bot K, ← hf]
    exact mem_map_of_mem hx
  constructor
  · -- e.fixedSubmodule ≤ e'.fixedSubmodule
    intro x hx
    simp only [mem_fixedSubmodule_iff, LinearEquiv.coe_toLinearMap, LinearEquiv.mul_apply]
    suffices transvection hfv x = x by
      simp only [mem_fixedSubmodule_iff, LinearEquiv.coe_toLinearMap] at hx
      simp only [hx, this]
    rw [← LinearEquiv.coe_toLinearMap, ← mem_fixedSubmodule_iff]
    exact ht hx
  · -- u ∈ e.fixedSubmodule
    simp only [mem_fixedSubmodule_iff, LinearEquiv.coe_toLinearMap,
      LinearEquiv.mul_apply, transvection.apply]
    simp [hfv']

/-- A linear equivalence `u : V ≃ₗ[K] V` is exceptional if
it is a nontrivial homothety modulo `u.fixedSubmodule`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f131af9a73adb314d09ac209d2f389d8587063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
