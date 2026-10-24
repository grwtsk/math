# hasSum_signedTouchard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adc3fca299e04e0f0a89d955be5712c244f2c507",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93c75a39-1032-e615-3bcf-8fbeb5e9b2e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ebb8d2d-98e1-d75e-4fd9-1d7f67d794ce",
  "kind": "theorem",
  "lexical_name": "hasSum_signedTouchard",
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
  "slug": "hassum-signedtouchard--e7821dca850d503f53d764cf",
  "source": {
    "blob": "adc3fca299e04e0f0a89d955be5712c244f2c507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7821dca850d503f53d764cffd06275fa7f2b50edd7f1f167a89f3c10f7f9c9c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ebb8d2d-98e1-d75e-4fd9-1d7f67d794ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_signedTouchard
    (n : ℕ) (y : ℝ) :
    HasSum
      (fun l : ℕ =>
        (l : ℝ) ^ n * (-y) ^ l /
          (l.factorial : ℝ))
      (Real.exp (-y) *
        thetaPhiSignedTouchardValue n y) := by
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ j ∈ Finset.range (n + 1),
            (Nat.stirlingSecond n j : ℝ) *
              ((l.descFactorial j : ℝ) *
                (-y) ^ l / (l.factorial : ℝ)))
        (∑ j ∈ Finset.range (n + 1),
          (Nat.stirlingSecond n j : ℝ) *
            ((-y) ^ j * Real.exp (-y))) := by
    exact hasSum_sum fun j hj =>
      (hasSum_descFactorial_mul_pow_div_factorial
        j (-y)).mul_left (Nat.stirlingSecond n j : ℝ)
  convert hsum using 1
  · funext l
    have hp :
        (l : ℝ) ^ n =
          ∑ j ∈ Finset.range (n + 1),
            (Nat.stirlingSecond n j : ℝ) *
              (l.descFactorial j : ℝ) := by
      exact_mod_cast
        pow_eq_sum_stirlingSecond_mul_descFactorial_local l n
    rw [hp, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  · unfold thetaPhiSignedTouchardValue
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring

/-- The generalized signed Touchard value associated with the affine support
4*l+5. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adc3fca299e04e0f0a89d955be5712c244f2c507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
