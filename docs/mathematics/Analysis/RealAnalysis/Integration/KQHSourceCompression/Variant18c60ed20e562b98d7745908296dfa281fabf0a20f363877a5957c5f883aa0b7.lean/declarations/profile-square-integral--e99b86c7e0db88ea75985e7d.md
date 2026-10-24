# profile_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28496b65-bd49-2c8d-2211-f52a62541b4c",
  "kind": "theorem",
  "lexical_name": "profile_square_integral",
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
  "slug": "profile-square-integral--e99b86c7e0db88ea75985e7d",
  "source": {
    "blob": "9fe6c06af4f2344e3fc0e84d3b3053c41d92a47a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variant18c60ed20e562b98d7745908296dfa281fabf0a20f363877a5957c5f883aa0b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e99b86c7e0db88ea75985e7d8a31e46dfc98471cec41b2378902c3d5b3d65add",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variant18c60ed20e562b98d7745908296dfa281fabf0a20f363877a5957c5f883aa0b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28496b65-bd49-2c8d-2211-f52a62541b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_square_integral (A u v : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, profile A u v x ^ 2) = gramForm u v := by
  have hp : 0 < A := by linarith
  have hn := ne_of_gt hp
  have he : (fun x : ℝ => profile A u v x ^ 2) =
      (Set.Icc (-A) A).indicator (fun x : ℝ =>
        (u * unitBump (x / A) + v * unitSecond (x / A)) ^ 2 / A) := by
    rw [profile_eq_indicator A u v hp]
    funext x
    simp only [Set.indicator_apply]
    split_ifs <;> simp [div_pow, Real.sq_sqrt hp.le]
  rw [he, zeroExtension_integral _ (-A) A (by linarith)]
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x : ℝ => (u * unitBump x + v * unitSecond x) ^ 2) hn]
  simp only [neg_div, div_self hn, smul_eq_mul, unit_profile_square_integral]
  exact mul_div_cancel_left₀ _ hn

/-- The new unconditional arithmetic result applies to the actual zeroth
profile compression, including the closed touching endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variant18c60ed20e562b98d7745908296dfa281fabf0a20f363877a5957c5f883aa0b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variant18c60ed20e562b98d7745908296dfa281fabf0a20f363877a5957c5f883aa0b7.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe6c06af4f2344e3fc0e84d3b3053c41d92a47a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
