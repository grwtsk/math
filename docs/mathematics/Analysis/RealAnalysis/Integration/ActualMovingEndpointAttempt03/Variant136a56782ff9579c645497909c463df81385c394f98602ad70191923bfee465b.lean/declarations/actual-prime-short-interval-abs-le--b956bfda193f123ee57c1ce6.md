# actual_prime_short_interval_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:354eb5f5-d476-d4e5-6d84-2361f2e63486",
  "kind": "theorem",
  "lexical_name": "actual_prime_short_interval_abs_le",
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
  "slug": "actual-prime-short-interval-abs-le--b956bfda193f123ee57c1ce6",
  "source": {
    "blob": "c556f70cfd1e98d377efb8ca04f519139232c99d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variant136a56782ff9579c645497909c463df81385c394f98602ad70191923bfee465b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b956bfda193f123ee57c1ce66c0b66941da7ae9aad955cfb2bffb65426829368",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variant136a56782ff9579c645497909c463df81385c394f98602ad70191923bfee465b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:354eb5f5-d476-d4e5-6d84-2361f2e63486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_short_interval_abs_le {K A y : ℝ} (hK : 0 ≤ K)
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |∫ t in (2*A-y)..(2*A), actualPrimeRemainder t| ≤ K*y/A^2 := by
  have hpos : 0 < A := by linarith
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (f:=actualPrimeRemainder) (a:=2*A-y) (b:=2*A) (C:=K/A^2) (fun t ht => ?_)
  · rw [Real.norm_eq_abs,show 2*A-(2*A-y)=y by ring,abs_of_nonneg hy] at h
    convert! h using 1
    ring
  · rw [uIoc_of_le (by linarith : 2*A-y ≤ 2*A)] at ht
    have hAt : A ≤ t := by linarith [ht.1]
    have hsq : A^2 ≤ t^2 := pow_le_pow_left₀ hpos.le hAt 2
    rw [Real.norm_eq_abs]
    exact (hdecay t (by linarith)).trans
      (div_le_div_of_nonneg_left hK (sq_pos_of_pos hpos) hsq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variant136a56782ff9579c645497909c463df81385c394f98602ad70191923bfee465b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variant136a56782ff9579c645497909c463df81385c394f98602ad70191923bfee465b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c556f70cfd1e98d377efb8ca04f519139232c99d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
