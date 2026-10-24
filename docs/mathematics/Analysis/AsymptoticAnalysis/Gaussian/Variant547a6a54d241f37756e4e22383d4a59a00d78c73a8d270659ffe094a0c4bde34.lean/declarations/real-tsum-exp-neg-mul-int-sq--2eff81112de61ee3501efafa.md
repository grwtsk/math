# Real.tsum_exp_neg_mul_int_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31a37c44-6d87-1cbc-3735-fc0d16fbacb0",
  "kind": "theorem",
  "lexical_name": "Real.tsum_exp_neg_mul_int_sq",
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
  "slug": "real-tsum-exp-neg-mul-int-sq--2eff81112de61ee3501efafa",
  "source": {
    "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 631,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eff81112de61ee3501efafac6c9affbf25ba304177295055ead19067dc33c9c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31a37c44-6d87-1cbc-3735-fc0d16fbacb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tsum_exp_neg_mul_int_sq {a : ℝ} (ha : 0 < a) :
    (∑' n : ℤ, exp (-π * a * (n : ℝ) ^ 2)) =
      (1 : ℝ) / a ^ (1 / 2 : ℝ) * (∑' n : ℤ, exp (-π / a * (n : ℝ) ^ 2)) := by
  simpa only [← ofReal_inj, ofReal_mul, ofReal_tsum, ofReal_exp, ofReal_div, ofReal_pow,
    ofReal_int_cast, ofReal_neg, ofReal_cpow ha.le, ofReal_ofNat, ofReal_one] using
    Complex.tsum_exp_neg_mul_int_sq (by rwa [ofReal_re] : 0 < (a : ℂ).re)
#align real.tsum_exp_neg_mul_int_sq Real.tsum_exp_neg_mul_int_sq

end GaussianPoisson
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
