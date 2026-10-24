# not_dvd_differentIdeal_of_intTrace_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 752,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c80c46-6d8d-10b1-b8cc-97a1d4237891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea26c03b-0acd-29f0-b230-3daec04b5d97",
  "kind": "theorem",
  "lexical_name": "not_dvd_differentIdeal_of_intTrace_not_mem",
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
  "slug": "not-dvd-differentideal-of-inttrace-not-mem--8ecae54f5b80632d1ca275ea",
  "source": {
    "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 752,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecae54f5b80632d1ca275ea85ac9ab7502faeedd6097749c705750cb2b4153c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea26c03b-0acd-29f0-b230-3daec04b5d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_differentIdeal_of_intTrace_not_mem
    [Algebra.IsSeparable (FractionRing A) (FractionRing B)]
    {p : Ideal A} (P Q : Ideal B) (hP : P * Q = Ideal.map (algebraMap A B) p)
    (x : B) (hxQ : x ∈ Q) (hx : Algebra.intTrace A B x ∉ p) :
    ¬ P ∣ differentIdeal A B := by
  by_cases hp : p = ⊥
  · subst hp
    simp only [Ideal.map_bot, Ideal.mul_eq_bot] at hP
    obtain (rfl | rfl) := hP
    · rw [← Ideal.zero_eq_bot, zero_dvd_iff]
      exact differentIdeal_ne_bot
    · obtain rfl := hxQ
      simp at hx
  let : Algebra (A ⧸ p) (B ⧸ Q) := Ideal.Quotient.algebraQuotientOfLEComap (by
      rw [← Ideal.map_le_iff_le_comap, ← hP]
      exact Ideal.mul_le_right)
  let K := FractionRing A
  let L := FractionRing B
  have : IsLocalization (Algebra.algebraMapSubmonoid B A⁰) L :=
    IsIntegralClosure.isLocalization _ K _ _
  have : FiniteDimensional K L := .of_isLocalization A B A⁰
  rw [Ideal.dvd_iff_le]
  intro H
  replace H := (mul_le_mul_left H Q).trans_eq hP
  replace H := (FractionalIdeal.coeIdeal_le_coeIdeal' _ (P := L) le_rfl).mpr H
  rw [FractionalIdeal.coeIdeal_mul, coeIdeal_differentIdeal A K] at H
  replace H := mul_le_mul_right H (FractionalIdeal.dual A K 1)
  have hne : (1 : FractionalIdeal B⁰ L) ≠ 0 := one_ne_zero
  rw [mul_inv_cancel_left₀ (FractionalIdeal.dual_ne_zero A K hne)] at H
  apply hx
  suffices Algebra.trace K L (algebraMap B L x) ∈ (p : FractionalIdeal A⁰ K) by
    obtain ⟨y, hy, e⟩ := this
    rw [← Algebra.algebraMap_intTrace (A := A), Algebra.linearMap_apply,
      (IsLocalization.injective _ le_rfl).eq_iff] at e
    exact e ▸ hy
  refine FractionalIdeal.mul_induction_on (H ⟨_, hxQ, rfl⟩) ?_ ?_
  · rintro x hx _ ⟨y, hy, rfl⟩
    induction hy using Submodule.span_induction generalizing x with
    | mem y h =>
      obtain ⟨y, hy, rfl⟩ := h
      obtain ⟨z, hz⟩ :=
        (FractionalIdeal.mem_dual (by simp)).mp hx 1 ⟨1, trivial, (algebraMap B L).map_one⟩
      simp only [Algebra.traceForm_apply, mul_one] at hz
      refine ⟨z * y, Ideal.mul_mem_left _ _ hy, ?_⟩
      rw [Algebra.linearMap_apply, Algebra.linearMap_apply, mul_comm x,
        ← IsScalarTower.algebraMap_apply,
        ← Algebra.smul_def, LinearMap.map_smul_of_tower, ← hz,
        Algebra.smul_def, map_mul, mul_comm]
    | zero => simp
    | add y z _ _ hy hz =>
      simp only [map_add, mul_add]
      exact Submodule.add_mem _ (hy x hx) (hz x hx)
    | smul y z hz IH =>
      simpa [Algebra.smul_def, mul_assoc, -FractionalIdeal.mem_coeIdeal, mul_left_comm x] using
        IH _ (Submodule.smul_mem _ y hx)
  · simp only [map_add]
    exact fun _ _ h₁ h₂ ↦ Submodule.add_mem _ h₁ h₂

open nonZeroDivisors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de3057323522e4a6bd480e44dd388fe06b7f2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
