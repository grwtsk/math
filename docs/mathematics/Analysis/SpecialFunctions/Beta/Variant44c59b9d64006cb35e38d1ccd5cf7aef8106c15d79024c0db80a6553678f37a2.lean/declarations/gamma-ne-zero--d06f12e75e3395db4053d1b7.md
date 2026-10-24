# Gamma_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12d71ab9-6f9a-bbf7-d8f8-30a179762a28",
  "kind": "theorem",
  "lexical_name": "Gamma_ne_zero",
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
  "slug": "gamma-ne-zero--d06f12e75e3395db4053d1b7",
  "source": {
    "blob": "8205d98c464988b5b42b312a91dbbd200b08876a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 458,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d06f12e75e3395db4053d1b7fef949f64e20cac42fbe89be4bb2f82e9b52e11c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d71ab9-6f9a-bbf7-d8f8-30a179762a28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_ne_zero {s : ℂ} (hs : ∀ m : ℕ, s ≠ -m) : Gamma s ≠ 0 := by
  by_cases h_im : s.im = 0
  · have : s = ↑s.re := by
      conv_lhs => rw [← Complex.re_add_im s]
      rw [h_im, ofReal_zero, zero_mul, add_zero]
    rw [this, Gamma_ofReal, ofReal_ne_zero]
    refine' Real.Gamma_ne_zero fun n => _
    specialize hs n
    contrapose! hs
    rwa [this, ← ofReal_nat_cast, ← ofReal_neg, ofReal_inj]
  · have : sin (↑π * s) ≠ 0 := by
      rw [Complex.sin_ne_zero_iff]
      intro k
      apply_fun im
      rw [ofReal_mul_im, ← ofReal_int_cast, ← ofReal_mul, ofReal_im]
      exact mul_ne_zero Real.pi_pos.ne' h_im
    have A := div_ne_zero (ofReal_ne_zero.mpr Real.pi_pos.ne') this
    rw [← Complex.Gamma_mul_Gamma_one_sub s, mul_ne_zero_iff] at A
    exact A.1
#align complex.Gamma_ne_zero Complex.Gamma_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8205d98c464988b5b42b312a91dbbd200b08876a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
