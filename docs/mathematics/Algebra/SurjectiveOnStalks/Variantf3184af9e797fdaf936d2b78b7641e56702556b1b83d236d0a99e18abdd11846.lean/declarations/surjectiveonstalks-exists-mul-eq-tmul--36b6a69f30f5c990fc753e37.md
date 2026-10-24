# SurjectiveOnStalks.exists_mul_eq_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd14de14123cbc177410b4aa595cda5031d74060",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:981de699-bba0-f615-843b-1d295c5d4048",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92710978-68db-4928-928c-18929f088a0b",
  "kind": "lemma",
  "lexical_name": "SurjectiveOnStalks.exists_mul_eq_tmul",
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
  "slug": "surjectiveonstalks-exists-mul-eq-tmul--36b6a69f30f5c990fc753e37",
  "source": {
    "blob": "dd14de14123cbc177410b4aa595cda5031d74060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 134,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36b6a69f30f5c990fc753e3799222b8feaa10b425d9d365d8c2a220740333014",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92710978-68db-4928-928c-18929f088a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SurjectiveOnStalks.exists_mul_eq_tmul
    (hf₂ : (algebraMap R T).SurjectiveOnStalks)
    (x : S ⊗[R] T) (J : Ideal T) (hJ : J.IsPrime) :
    ∃ (t : T) (r : R) (a : S), (r • t ∉ J) ∧
      (1 : S) ⊗ₜ[R] (r • t) * x = a ⊗ₜ[R] t := by
  induction x with
  | tmul x₁ x₂ =>
    obtain ⟨y, s, c, hs, hc, e⟩ := (surjective_localRingHom_iff _).mp (hf₂ J hJ) x₂
    simp_rw [Algebra.smul_def]
    refine ⟨c, s, y • x₁, J.primeCompl.mul_mem hc hs, ?_⟩
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, mul_comm _ c, e,
      TensorProduct.smul_tmul, Algebra.smul_def, mul_comm]
  | add x₁ x₂ hx₁ hx₂ =>
    obtain ⟨t₁, r₁, a₁, hr₁, e₁⟩ := hx₁
    obtain ⟨t₂, r₂, a₂, hr₂, e₂⟩ := hx₂
    have : (r₁ * r₂) • (t₁ * t₂) = (r₁ • t₁) * (r₂ • t₂) := by
      simp_rw [← smul_eq_mul]; rw [smul_smul_smul_comm]
    refine ⟨t₁ * t₂, r₁ * r₂, r₂ • a₁ + r₁ • a₂, this.symm ▸ J.primeCompl.mul_mem hr₁ hr₂, ?_⟩
    rw [this, ← one_mul (1 : S), ← Algebra.TensorProduct.tmul_mul_tmul, mul_add, mul_comm (_ ⊗ₜ _),
      mul_assoc, e₁, Algebra.TensorProduct.tmul_mul_tmul, one_mul, smul_mul_assoc,
      ← TensorProduct.smul_tmul, mul_comm (_ ⊗ₜ _), mul_assoc, e₂,
      Algebra.TensorProduct.tmul_mul_tmul, one_mul, smul_mul_assoc, ← TensorProduct.smul_tmul,
      TensorProduct.add_tmul, mul_comm t₁ t₂]

variable (S) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd14de14123cbc177410b4aa595cda5031d74060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
