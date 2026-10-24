# inverse_probe_denominator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6be03458-6a01-7a0f-cc56-538032327063",
  "kind": "theorem",
  "lexical_name": "inverse_probe_denominator",
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
  "slug": "inverse-probe-denominator--2e4ddc3dabc9af3434f6cb9c",
  "source": {
    "blob": "ca6125fb40ad765b2c5061f856974228c7a5b6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e4ddc3dabc9af3434f6cb9ca0055660f687e4465cbd29c4a09ea2c091e4e2ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be03458-6a01-7a0f-cc56-538032327063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_probe_denominator (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    denominator (inverseQ a b hab k (heightProbe k)) = FreyCechPrimeBudget.clearing a b k := by
  let D := denominator (inverseQ a b hab k (heightProbe k))
  let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
  let w : ℤ := (-(a*b))^k
  have hw : w ≠ 0 := pow_ne_zero _ (neg_ne_zero.mpr hab)
  have h3 : 3*w ∣ (D : ℤ) := by
    apply (clears_reciprocal_iff D (3*w) (mul_ne_zero (by norm_num) hw)).mp
    have h := denominator_clears (inverseQ a b hab k (heightProbe k)) (i,0)
    rw [congrFun (inverse_block a b hab k (heightProbe k) i) 0] at h
    simpa [i, w, inverseBlock, rawCoordinates, heightProbe, FreyWeightedLattice.weight] using h
  have h4 : 4*w ∣ (D : ℤ) := by
    apply (clears_reciprocal_iff D (4*w) (mul_ne_zero (by norm_num) hw)).mp
    have h := denominator_clears (inverseQ a b hab k (heightProbe k)) (i,2)
    rw [congrFun (inverse_block a b hab k (heightProbe k) i) 2] at h
    simpa [i, w, inverseBlock, rawCoordinates, heightProbe, FreyWeightedLattice.weight] using h
  apply Nat.dvd_antisymm
  · simpa only [(heightProbe_data k).1, mul_one] using denominator_inverse a b hab k (heightProbe k)
  · have hc : (FreyCechPrimeBudget.clearing a b k : ℤ) = |12*w| := by
      simp [FreyCechPrimeBudget.clearing, w, Int.natCast_natAbs, abs_mul, abs_pow]
    apply Int.natCast_dvd_natCast.mp
    rw [hc, abs_dvd]
    exact three_four_common w D hw h3 h4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca6125fb40ad765b2c5061f856974228c7a5b6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
