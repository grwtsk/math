# quadrant_II

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5c1a498-7441-ddb6-bdc8-8d380ac08ffd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afe39b2d-0649-8bcb-4bb5-32e018e3795a",
  "kind": "theorem",
  "lexical_name": "quadrant_II",
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
  "slug": "quadrant-ii--c9eb53a4c4272c8ced03211d",
  "source": {
    "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 469,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9eb53a4c4272c8ced03211d0cb7a9b7c298115ed22c4e3dba5c20a137b93a10",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afe39b2d-0649-8bcb-4bb5-32e018e3795a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadrant_II (hd : DiffContOnCl ℂ f (Iio 0 ×ℂ Ioi 0))
    (hB : ∃ c < (2 : ℝ), ∃ B,
      f =O[comap Complex.abs atTop ⊓ 𝓟 (Iio 0 ×ℂ Ioi 0)] fun z => expR (B * abs z ^ c))
    (hre : ∀ x : ℝ, x ≤ 0 → ‖f x‖ ≤ C) (him : ∀ x : ℝ, 0 ≤ x → ‖f (x * I)‖ ≤ C) (hz_re : z.re ≤ 0)
    (hz_im : 0 ≤ z.im) : ‖f z‖ ≤ C := by
  obtain ⟨z, rfl⟩ : ∃ z', z' * I = z; exact ⟨z / I, div_mul_cancel _ I_ne_zero⟩
  simp only [mul_I_re, mul_I_im, neg_nonpos] at hz_re hz_im
  change ‖(f ∘ (· * I)) z‖ ≤ C
  have H : MapsTo (· * I) (Ioi 0 ×ℂ Ioi 0) (Iio 0 ×ℂ Ioi 0) := fun w hw ↦ by
    simpa only [mem_reProdIm, mul_I_re, mul_I_im, neg_lt_zero, mem_Iio] using hw.symm
  rcases hB with ⟨c, hc, B, hO⟩
  refine' quadrant_I (hd.comp (differentiable_id.mul_const _).diffContOnCl H) ⟨c, hc, B, ?_⟩ him
    (fun x hx => _) hz_im hz_re
  · simpa only [(· ∘ ·), map_mul, abs_I, mul_one]
      using hO.comp_tendsto ((tendsto_mul_right_cobounded I_ne_zero).inf H.tendsto)
  · rw [comp_apply, mul_assoc, I_mul_I, mul_neg_one, ← ofReal_neg]
    exact hre _ (neg_nonpos.2 hx)
set_option linter.uppercaseLean3 false in
#align phragmen_lindelof.quadrant_II PhragmenLindelof.quadrant_II

/-- **Phragmen-Lindelöf principle** in the second quadrant. Let `f : ℂ → E` be a function such that

* `f` is differentiable in the open second quadrant and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * (abs z) ^ c)` on the open second quadrant
  for some `A`, `B`, and `c < 2`;
* `f` is equal to zero on the boundary of the second quadrant.

Then `f` is equal to zero on the closed second quadrant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0378b6cac22f885a9ebd8bc29154c7e788f5a2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
