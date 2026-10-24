# sum_sq_realBucket_eq_signedQuarticCollision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0833140a-c551-e40c-646e-7766f3d1a058",
  "kind": "theorem",
  "lexical_name": "sum_sq_realBucket_eq_signedQuarticCollision",
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
  "slug": "sum-sq-realbucket-eq-signedquarticcollision--c0e1468e866cd933a1597b60",
  "source": {
    "blob": "ebc689c713c4dbf69e54c97b594ba519c2f5bd4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e1468e866cd933a1597b604426ba71caae0b064fec14d5891abb367d969b49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0833140a-c551-e40c-646e-7766f3d1a058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sq_realBucket_eq_signedQuarticCollision
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      parityHalfShiftSignedResidueRealBucket b d r H s ^ 2) =
      parityHalfShiftSignedQuarticCollision b d r H := by
  classical
  unfold parityHalfShiftSignedResidueRealBucket
    parityHalfShiftSignedQuarticCollision
  simp only [mul_pow]
  norm_num only [show (2 : ℝ) ^ 2 = 4 by norm_num]
  rw [← Finset.mul_sum]
  congr 1
  simp only [pow_two, Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  conv_lhs =>
    arg 2
    ext h
    rw [Finset.sum_comm]
    arg 2
    ext g
    rw [Finset.sum_comm]
    arg 2
    ext u
    rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Finset.sum_congr rfl
  intro v _hv
  simp_rw [ite_mul, zero_mul, mul_ite, mul_zero]
  by_cases hcoord :
      parityAffineShiftResidueCoordinate d u h =
        parityAffineShiftResidueCoordinate d v g
  · rw [hcoord]
    simp [mul_assoc]
  · simp [hcoord, Ne.symm hcoord]

/-- Generic complex residue energy equals the signed quartic collision sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc689c713c4dbf69e54c97b594ba519c2f5bd4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
