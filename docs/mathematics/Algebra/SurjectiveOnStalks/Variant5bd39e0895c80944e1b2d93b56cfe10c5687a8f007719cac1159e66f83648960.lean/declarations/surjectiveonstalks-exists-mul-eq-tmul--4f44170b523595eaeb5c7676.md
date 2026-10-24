# SurjectiveOnStalks.exists_mul_eq_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96ab2e3141c2da1d6157186f67d7df74bd91d71c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f89e7bb9-5a29-c047-f98e-1830df08c796",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:313e28da-6d1b-47a5-8358-26116f0950e0",
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
  "slug": "surjectiveonstalks-exists-mul-eq-tmul--4f44170b523595eaeb5c7676",
  "source": {
    "blob": "96ab2e3141c2da1d6157186f67d7df74bd91d71c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 122,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f44170b523595eaeb5c76766ee93d07cc09e72d7c76052d40f1509de3b4b43c",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:313e28da-6d1b-47a5-8358-26116f0950e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SurjectiveOnStalks.exists_mul_eq_tmul
    (hf₂ : (algebraMap R T).SurjectiveOnStalks)
    (x : S ⊗[R] T) (J : Ideal T) (hJ : J.IsPrime) :
    ∃ (t : T) (r : R) (a : S), (r • t ∉ J) ∧
      (1 : S) ⊗ₜ[R] (r • t) * x = a ⊗ₜ[R] t := by
  induction x with
  | zero =>
    exact ⟨1, 1, 0, by rw [one_smul]; exact J.primeCompl.one_mem,
      by rw [mul_zero, TensorProduct.zero_tmul]⟩
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

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ab2e3141c2da1d6157186f67d7df74bd91d71c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
