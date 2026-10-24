# homogeneous_mem_or_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2711aa8c-8c5b-4a44-06c2-394afe627ebf",
  "kind": "theorem",
  "lexical_name": "homogeneous_mem_or_mem",
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
  "slug": "homogeneous-mem-or-mem--4c6a2e1b205161a8234d9a06",
  "source": {
    "blob": "b00483a529a1dd1a56e609942771b3f25c5f5a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 181,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c6a2e1b205161a8234d9a06a13f2b0ea711f77015f14f9f13bd9a5122932258",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2711aa8c-8c5b-4a44-06c2-394afe627ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_mem_or_mem {x y : R × R} (hx : SetLike.Homogeneous (grading R) x)
    (hy : SetLike.Homogeneous (grading R) y) (hxy : x * y ∈ I) : x ∈ I ∨ y ∈ I := by
  -- Porting note: added `h2` for later use; the proof is hideous
  have h2 : Prime (2:R) := by
    unfold Prime
    simp only [true_and]
    intro a b
    have aux2 : (Fin.mk 2 _ : R) = 2 := rfl
    have aux3 : (Fin.mk 3 _ : R) = -1 := rfl
    fin_cases a <;>
      simp (config := {contextual := true}) only
        [Fin.mk_zero, zero_mul, dvd_zero, true_or, or_true, implies_true, forall_true_left,
          Fin.mk_one, one_mul, aux2, dvd_refl]
    fin_cases b <;>
      simp (config := {contextual := true}) only
        [Fin.mk_zero, zero_mul, dvd_zero, true_or, or_true, implies_true, forall_true_left,
          Fin.mk_one, mul_one, aux2, dvd_refl, aux3, or_self, neg_one_mul, neg_neg, dvd_neg]
  simp only [I, Ideal.mem_span_singleton] at hxy ⊢
  cases' x; cases' y
  obtain ⟨_ | ⟨⟨⟩⟩, hx : _ = _⟩ := hx <;> obtain ⟨_ | ⟨⟨⟩⟩, hy : _ = _⟩ := hy <;>
    dsimp at hx hy <;>
    cases hx <;>
    cases hy <;>
    -- Porting note: proof was `tauto`
    simp only [prod_dvd_iff, dvd_zero, true_and, and_self,
      Prod.mk_mul_mk, mul_zero, zero_mul] at hxy ⊢ <;>
    apply h2.dvd_or_dvd hxy
#align counterexample.counterexample_not_prime_but_homogeneous_prime.homogeneous_mem_or_mem Counterexample.CounterexampleNotPrimeButHomogeneousPrime.homogeneous_mem_or_mem

end CounterexampleNotPrimeButHomogeneousPrime

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00483a529a1dd1a56e609942771b3f25c5f5a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
