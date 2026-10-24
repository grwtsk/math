# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32d37afb-ff07-1a9f-01fe-2359656a78d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e25a89ac-4aa2-0197-1240-baf315991367",
  "kind": "lemma",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--f93719cf460fd8a611ca12ac",
  "source": {
    "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 340,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f93719cf460fd8a611ca12ac22a49004b8a9269810b6671fb52bb4eff7f6ecb2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25a89ac-4aa2-0197-1240-baf315991367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_on {w : σ → M} {m : M}
    {motive : (p : MvPolynomial σ R) → p.IsWeightedHomogeneous w m → Prop}
    (zero : motive 0 (isWeightedHomogeneous_zero R w m))
    (add : ∀ p q hp hq, motive p hp → motive q hq → motive (p + q) (hp.add hq))
    (monomial : ∀ (d : σ →₀ ℕ) (r : R) (hr : Finsupp.weight w d = m),
      motive ((monomial d) r) (isWeightedHomogeneous_monomial w d r hr))
    {p : MvPolynomial σ R} (hp : p.IsWeightedHomogeneous w m) :
    motive p hp := by
  suffices h : ∀ a, motive (C a * p) (.C_mul hp _) by simpa using h 1
  let A : Submodule R (MvPolynomial σ R) :=
    { carrier := { p | ∃ hp, ∀ a, motive (C a * p) (.C_mul hp _) }
      add_mem' := fun ⟨_, hx⟩ ⟨_, hy⟩ ↦
        ⟨.add ‹_› ‹_›, fun a ↦ by simp [mul_add, add _ _ _ _ (hx a) (hy a)]⟩
      zero_mem' := ⟨isWeightedHomogeneous_zero R w m, by simp [zero]⟩
      smul_mem' := fun a x ⟨_, hx⟩ ↦ ⟨by simp [Algebra.smul_def, C_mul ‹_› a], fun a ↦ by
        simp_rw [Algebra.smul_def, algebraMap_eq, ← mul_assoc, ← map_mul]
        apply hx⟩ }
  rw [← mem_weightedHomogeneousSubmodule, weightedHomogeneousSubmodule_eq_finsupp_supported,
    AddMonoidAlgebra.supported_eq_span_single] at hp
  refine (Submodule.span_le (p := A) |>.mpr ?_ hp).2
  rw [Set.image_subset_iff]
  intro d hd
  simp only [MvPolynomial, Submodule.coe_set_mk, AddSubmonoid.coe_set_mk,
    AddSubsemigroup.coe_set_mk, preimage_ofPred_eq, mem_ofPred_eq, A]
  refine ⟨isWeightedHomogeneous_monomial w d 1 hd, fun a ↦ ?_⟩
  simpa only [single_eq_monomial, ← MvPolynomial.C_mul_monomial] using monomial _ (a * 1) hd

end IsWeightedHomogeneous

variable {R}

/-- The weighted homogeneous submodules form a graded monoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c4fb410c8eefe73cdfb95ff517de8036ea4277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
