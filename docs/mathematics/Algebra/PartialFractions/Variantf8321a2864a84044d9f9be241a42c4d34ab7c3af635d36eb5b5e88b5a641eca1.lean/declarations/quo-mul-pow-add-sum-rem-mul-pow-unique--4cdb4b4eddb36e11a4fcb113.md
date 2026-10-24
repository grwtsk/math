# quo_mul_pow_add_sum_rem_mul_pow_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:769ee46a-2b52-c283-9529-091719ccb1ee",
  "kind": "theorem",
  "lexical_name": "quo_mul_pow_add_sum_rem_mul_pow_unique",
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
  "slug": "quo-mul-pow-add-sum-rem-mul-pow-unique--4cdb4b4eddb36e11a4fcb113",
  "source": {
    "blob": "a7d428a0106e2389422edfbed7ffe3a903f744e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 130,
    "path": "GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cdb4b4eddb36e11a4fcb1139466ccc1878789c572b8f9cb608d8901019ea84a",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769ee46a-2b52-c283-9529-091719ccb1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_mul_pow_add_sum_rem_mul_pow_unique {g : R[X]} (hg : g.Monic) {n : ℕ}
    {q₁ q₂ : R[X]} {r₁ r₂ : Fin n → R[X]}
    (hr₁ : ∀ i, (r₁ i).degree < g.degree) (hr₂ : ∀ i, (r₂ i).degree < g.degree)
    (hf : q₁ * g ^ n + ∑ i, r₁ i * g ^ i.1 = q₂ * g ^ n + ∑ i, r₂ i * g ^ i.1) :
    q₁ = q₂ ∧ r₁ = r₂ := by
  induction n generalizing q₁ q₂ with
  | zero => exact ⟨by simpa using hf, funext Fin.rec0⟩
  | succ n ih =>
    cases r₁ using Fin.snocCases with | snoc rs₁ r₁
    cases r₂ using Fin.snocCases with | snoc rs₂ r₂
    simp only [Fin.sum_univ_castSucc, Fin.snoc_castSucc,
      Fin.val_castSucc, Fin.snoc_last, Fin.val_last] at hf
    rw [← add_rotate' (r₁ * g ^ n), ← add_rotate' (r₂ * g ^ n), pow_succ', ← mul_assoc, ← mul_assoc,
      ← add_assoc, ← add_assoc, ← add_mul, ← add_mul, ← mul_comm g, ← mul_comm g] at hf
    obtain ⟨hqr, hrs⟩ := ih
      (fun i => by simpa using hr₁ i.castSucc)
      (fun i => by simpa using hr₂ i.castSucc) hf
    obtain ⟨hq₁, hrr₁⟩ := div_modByMonic_unique q₁ r₁ hg ⟨rfl, by simpa using hr₁ (Fin.last n)⟩
    obtain ⟨hq₂, hrr₂⟩ := div_modByMonic_unique q₂ r₂ hg ⟨rfl, by simpa using hr₂ (Fin.last n)⟩
    exact ⟨hq₁.symm.trans (hqr ▸ hq₂), congrArg₂ Fin.snoc hrs (hrr₁.symm.trans (hqr ▸ hrr₂))⟩

end OneDenominator

section ManyDenominators

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`.
Then `f` can be written in the form `(∏ i ∈ s, g i) * (q + ∑ i ∈ s, r i / g i)`, where
`degree (r i) < degree (g i)` and the denominator cancels formally.
See `quo_mul_prod_add_sum_rem_mul_prod_unique` for the uniqueness of this representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d428a0106e2389422edfbed7ffe3a903f744e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
