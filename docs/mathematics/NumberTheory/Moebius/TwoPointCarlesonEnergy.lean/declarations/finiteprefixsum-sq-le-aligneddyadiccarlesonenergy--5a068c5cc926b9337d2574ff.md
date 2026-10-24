# finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db529c24-e7f6-7e17-ada6-de6ac13c0ced",
  "kind": "theorem",
  "lexical_name": "finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy",
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
  "slug": "finiteprefixsum-sq-le-aligneddyadiccarlesonenergy--5a068c5cc926b9337d2574ff",
  "source": {
    "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 317,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a068c5cc926b9337d2574ff6d3661252a6b7e99bbbb8e99236442256f46007a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db529c24-e7f6-7e17-ada6-de6ac13c0ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
  by_cases hfull : N = 2 ^ m
  · subst N
    have htopAbs :
        |alignedDyadicBlockSum a m 0| ≤
          alignedDyadicScaleMaximum m m a :=
      abs_alignedDyadicBlockSum_le_scaleMaximum
        m m a (q := 0) (by simp)
    have htop :
        finitePrefixSum a (2 ^ m) ^ 2 ≤
          alignedDyadicScaleMaximum m m a ^ 2 := by
      have hs := (sq_le_sq₀
        (abs_nonneg (alignedDyadicBlockSum a m 0))
        (alignedDyadicScaleMaximum_nonneg m m a)).2 htopAbs
      simpa [sq_abs] using hs
    have htopEnergy :
        alignedDyadicScaleMaximum m m a ^ 2 ≤
          alignedDyadicCarlesonEnergy m a := by
      rw [alignedDyadicCarlesonEnergy_eq_proper_add_top]
      exact le_add_of_nonneg_left
        (alignedDyadicProperCarlesonEnergy_nonneg m a)
    have henergy := alignedDyadicCarlesonEnergy_nonneg m a
    calc
      finitePrefixSum a (2 ^ m) ^ 2 ≤
          alignedDyadicScaleMaximum m m a ^ 2 := htop
      _ ≤ alignedDyadicCarlesonEnergy m a := htopEnergy
      _ ≤ ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
        nlinarith [show (0 : ℝ) ≤ (m : ℝ) from Nat.cast_nonneg m]
  · have hproper : N < 2 ^ m := lt_of_le_of_ne hN hfull
    have hprefix :=
      finitePrefixSum_sq_le_properCarlesonEnergy m a N hproper
    have hproperEnergy :
        alignedDyadicProperCarlesonEnergy m a ≤
          alignedDyadicCarlesonEnergy m a := by
      rw [alignedDyadicCarlesonEnergy_eq_proper_add_top]
      exact le_add_of_nonneg_right (sq_nonneg _)
    have henergy := alignedDyadicCarlesonEnergy_nonneg m a
    calc
      finitePrefixSum a N ^ 2 ≤
          (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := hprefix
      _ ≤ (m : ℝ) * alignedDyadicCarlesonEnergy m a :=
        mul_le_mul_of_nonneg_left hproperEnergy (Nat.cast_nonneg m)
      _ ≤ ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
        nlinarith

/-- The exact maximum over all prefixes satisfies the same Carleson bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419fe18fbf54d5842c11da5176674023e905e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
