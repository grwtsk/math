# moebius_inversion_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18829c3e77c70d45911215890a2ec673cafd78f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aca41f9-8e2e-a5af-508d-e635045b8130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80ff911c-6fa0-927c-1715-5738a273a35f",
  "kind": "lemma",
  "lexical_name": "moebius_inversion_top",
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
  "slug": "moebius-inversion-top--7d0789492cc18984bc7778eb",
  "source": {
    "blob": "18829c3e77c70d45911215890a2ec673cafd78f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 539,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d0789492cc18984bc7778eb6b9c867e354d1908b5aae255e835da3a76fe1264",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ff911c-6fa0-927c-1715-5738a273a35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moebius_inversion_top (f g : α → 𝕜) (h : ∀ x, g x = ∑ y ∈ Ici x, f y) (x : α) :
    f x = ∑ y ∈ Ici x, mu 𝕜 x y * g y := by
  let : DecidableLE α := Classical.decRel _
  symm
  calc
    ∑ y ∈ Ici x, mu 𝕜 x y * g y = ∑ y ∈ Ici x, mu 𝕜 x y * ∑ z ∈ Ici y, f z := by simp_rw [h]
    _ = ∑ y ∈ Ici x, mu 𝕜 x y * ∑ z ∈ Ici y, zeta 𝕜 y z * f z := by
      congr with y
      rw [sum_congr rfl fun z hz ↦ ?_]
      rw [zeta_apply, ite_eq_left (mem_Ici.mp ‹_›), one_mul]
    _ = ∑ y ∈ Ici x, ∑ z ∈ Ici y, mu 𝕜 x y * zeta 𝕜 y z * f z := by simp [mul_sum]
    _ = ∑ z ∈ Ici x, ∑ y ∈ Icc x z, mu 𝕜 x y * zeta 𝕜 y z * f z := by
      rw [sum_sigma' (Ici x) fun y ↦ Ici y]
      rw [sum_sigma' (Ici x) fun z ↦ Icc x z]
      simp only [mul_boole, zero_mul, ite_mul, zeta_apply]
      apply sum_nbij' (fun ⟨a, b⟩ ↦ ⟨b, a⟩) (fun ⟨a, b⟩ ↦ ⟨b, a⟩) <;>
        aesop (add simp mul_assoc) (add unsafe le_trans)
    _ = ∑ z ∈ Ici x, (mu 𝕜 * zeta 𝕜 : IncidenceAlgebra 𝕜 α) x z * f z := by
      simp_rw [mul_apply, sum_mul]
    _ = ∑ y ∈ Ici x, ∑ z ∈ Ici y, (1 : IncidenceAlgebra 𝕜 α) x z * f z := by
      simp only [mu_mul_zeta 𝕜, one_apply, ite_mul, one_mul, zero_mul, sum_ite_eq, mem_Ici, le_refl,
        ↓reduceIte, ← add_sum_Ioi_eq_sum_Ici, left_eq_add]
      exact sum_eq_zero fun y hy ↦ ite_eq_right (mem_Ioi.mp hy).not_ge
    _ = f x := by
      simp only [one_apply, ite_mul, one_mul, zero_mul, sum_ite_eq, mem_Ici,
        ← add_sum_Ioi_eq_sum_Ici, le_refl, ↓reduceIte, add_eq_left]
      exact sum_eq_zero fun y hy ↦ ite_eq_right (mem_Ioi.mp hy).not_ge

end InversionTop

section InversionBot
variable [Ring 𝕜] [PartialOrder α] [OrderBot α] [LocallyFiniteOrder α] [DecidableEq α]

set_option backward.isDefEq.respectTransparency false in
/-- A general form of Möbius inversion. Based on lemma 2.1.3 of Incidence Algebras by Spiegel and
O'Donnell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18829c3e77c70d45911215890a2ec673cafd78f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
