# eq_pow_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f87d666b65f60fffd27dcd2be911526e4dd3f783",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:166aac8d-200d-18d5-23d4-f285d7ec8499",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6045d6af-d540-1a1a-1729-3239d3dc5030",
  "kind": "theorem",
  "lexical_name": "eq_pow_of_nonneg",
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
  "slug": "eq-pow-of-nonneg--c96d4b0d04ef055f758582cf",
  "source": {
    "blob": "f87d666b65f60fffd27dcd2be911526e4dd3f783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 593,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96d4b0d04ef055f758582cfe08f0c67308313be9927fb787e708b3c7a796ee5",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6045d6af-d540-1a1a-1729-3239d3dc5030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_of_nonneg {a₁ : Solution₁ d} (h : IsFundamental a₁) {a : Solution₁ d} (hax : 0 < a.x)
    (hay : 0 ≤ a.y) : ∃ n : ℕ, a = a₁ ^ n := by
  lift a.x to ℕ using hax.le with ax hax'
  induction ax using Nat.strong_induction_on generalizing a with | h x ih =>
  rcases hay.eq_or_lt with hy | hy
  · -- case 1: `a = 1`
    refine ⟨0, ?_⟩
    simp only [pow_zero]
    ext <;> simp only [x_one, y_one]
    · have prop := a.prop
      rw [← hy, sq (0 : ℤ), zero_mul, mul_zero, sub_zero,
        sq_eq_one_iff] at prop
      refine prop.resolve_right fun hf => ?_
      have := (hax.trans_eq hax').le.trans_eq hf
      norm_num at this
    · exact hy.symm
  · -- case 2: `a ≥ a₁`
    have hx₁ : 1 < a.x := by nlinarith [a.prop, h.d_pos]
    have hxx₁ := h.mul_inv_x_pos hx₁ hy
    have hxx₂ := h.mul_inv_x_lt_x hx₁ hy
    have hyy := h.mul_inv_y_nonneg hx₁ hy
    lift (a * a₁⁻¹).x to ℕ using hxx₁.le with x' hx'
    obtain ⟨n, hn⟩ := ih x' (mod_cast hxx₂.trans_eq hax'.symm) hyy hx' hxx₁
    exact ⟨n + 1, by rw [pow_succ', ← hn, mul_comm a, ← mul_assoc, mul_inv_cancel, one_mul]⟩

/-- Every solution is, up to a sign, a power of a given fundamental solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87d666b65f60fffd27dcd2be911526e4dd3f783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
