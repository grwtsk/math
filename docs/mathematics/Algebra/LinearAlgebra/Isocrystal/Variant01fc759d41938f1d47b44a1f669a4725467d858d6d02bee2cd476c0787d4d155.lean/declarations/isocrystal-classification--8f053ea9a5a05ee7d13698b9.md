# isocrystal_classification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7acece3f-1119-fb30-e929-c38717c8d312",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d38557b-c5ff-67a7-f821-469e134ebd5a",
  "kind": "theorem",
  "lexical_name": "isocrystal_classification",
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
  "slug": "isocrystal-classification--8f053ea9a5a05ee7d13698b9",
  "source": {
    "blob": "c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 185,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f053ea9a5a05ee7d13698b9a365a246348f4528b09c795ab921192245ffb08b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d38557b-c5ff-67a7-f821-469e134ebd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isocrystal_classification (k : Type*) [Field k] [IsAlgClosed k] [CharP k p] (V : Type*)
    [AddCommGroup V] [Isocrystal p k V] (h_dim : finrank K(p, k) V = 1) :
    ∃ m : ℤ, Nonempty (StandardOneDimIsocrystal p k m ≃ᶠⁱ[p, k] V) := by
  haveI : Nontrivial V := Module.nontrivial_of_finrank_eq_succ h_dim
  obtain ⟨x, hx⟩ : ∃ x : V, x ≠ 0 := exists_ne 0
  have : Φ(p, k) x ≠ 0 := by simpa only [map_zero] using Φ(p, k).injective.ne hx
  obtain ⟨a, ha, hax⟩ : ∃ a : K(p, k), a ≠ 0 ∧ Φ(p, k) x = a • x := by
    rw [finrank_eq_one_iff_of_nonzero' x hx] at h_dim
    obtain ⟨a, ha⟩ := h_dim (Φ(p, k) x)
    refine ⟨a, ?_, ha.symm⟩
    intro ha'
    apply this
    simp only [← ha, ha', zero_smul]
  obtain ⟨b, hb, m, hmb⟩ := WittVector.exists_frobenius_solution_fractionRing p ha
  replace hmb : φ(p, k) b * a = (p : K(p, k)) ^ m * b := by convert hmb
  use m
  let F₀ : StandardOneDimIsocrystal p k m →ₗ[K(p, k)] V := LinearMap.toSpanSingleton K(p, k) V x
  let F : StandardOneDimIsocrystal p k m ≃ₗ[K(p, k)] V := by
    refine LinearEquiv.ofBijective F₀ ⟨?_, ?_⟩
    · rw [← LinearMap.ker_eq_bot]
      exact LinearMap.ker_toSpanSingleton K(p, k) V hx
    · rw [← LinearMap.range_eq_top]
      rw [← (finrank_eq_one_iff_of_nonzero x hx).mp h_dim]
      rw [LinearMap.span_singleton_eq_range]
  refine ⟨⟨(LinearEquiv.smulOfNeZero K(p, k) _ _ hb).trans F, fun c ↦ ?_⟩⟩
  rw [LinearEquiv.trans_apply, LinearEquiv.trans_apply, LinearEquiv.smulOfNeZero_apply,
    LinearEquiv.smulOfNeZero_apply, LinearEquiv.map_smul, LinearEquiv.map_smul,
    LinearEquiv.ofBijective_apply, LinearEquiv.ofBijective_apply,
    StandardOneDimIsocrystal.frobenius_apply]
  unfold StandardOneDimIsocrystal
  rw [LinearMap.toSpanSingleton_apply K(p, k) V x c, LinearMap.toSpanSingleton_apply K(p, k) V x]
  simp only [hax, LinearEquiv.ofBijective_apply, LinearMap.toSpanSingleton_apply,
    LinearEquiv.map_smulₛₗ, Algebra.id.smul_eq_mul]
  simp only [← mul_smul]
  congr 1
  linear_combination φ(p, k) c * hmb

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
