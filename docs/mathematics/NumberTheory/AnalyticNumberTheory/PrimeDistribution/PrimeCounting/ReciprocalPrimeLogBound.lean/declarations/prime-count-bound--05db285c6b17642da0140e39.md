# prime_count_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91e77e3a-e4e4-ed62-31f9-a072eec9a006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12e1d0df-089c-187c-0e46-f91b3fa9a0f0",
  "kind": "theorem",
  "lexical_name": "prime_count_bound",
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
  "slug": "prime-count-bound--05db285c6b17642da0140e39",
  "source": {
    "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 32,
    "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05db285c6b17642da0140e39d40f79d1afc6163550568af325f3b3b87b69cf85",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12e1d0df-089c-187c-0e46-f91b3fa9a0f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_count_bound {x : ℝ} (hx : 2 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤ countConstant * x / Real.log x := by
  have hxpos : 0 < x := by linarith
  have hxone : 1 < x := by linarith
  have hlogpos : 0 < Real.log x := Real.log_pos hxone
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr hxpos
  have hlogsqrt := Real.log_le_sub_one_of_pos hspos
  have heq : Real.log (Real.sqrt x) = Real.log x / 2 :=
    Real.log_sqrt hxpos.le
  have hlogupper : Real.log x ≤ 2 * Real.sqrt x := by
    rw [heq] at hlogsqrt
    linarith
  have hmul := mul_le_mul_of_nonneg_left hlogupper hspos.le
  have hsq : Real.sqrt x ^ 2 = x := Real.sq_sqrt hxpos.le
  have hsupper : Real.sqrt x ≤ 2 * x / Real.log x := by
    apply (le_div_iff₀ hlogpos).mpr
    nlinarith
  have hcount := Chebyshev.pi_le_log4_mul_div hxone
  rw [heq] at hcount
  calc
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤
        Real.log 4 * x / (Real.log x / 2) + Real.sqrt x := hcount
    _ ≤ Real.log 4 * x / (Real.log x / 2) + 2 * x / Real.log x :=
      by linarith
    _ = countConstant * x / Real.log x := by
      unfold countConstant
      field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
