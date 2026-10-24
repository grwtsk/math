# finitePrefixSum_sq_le_properCarlesonEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9733111f-b4cf-3583-d600-ca4b42d1e80d",
  "kind": "theorem",
  "lexical_name": "finitePrefixSum_sq_le_properCarlesonEnergy",
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
  "slug": "finiteprefixsum-sq-le-propercarlesonenergy--0c4e9738093e690043f0b63f",
  "source": {
    "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 238,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4e9738093e690043f0b63fd7ac78b1b599bad499d1a9d3d6ec29f85ca5882c",
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

Occurrence: `result:9733111f-b4cf-3583-d600-ca4b42d1e80d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finitePrefixSum_sq_le_properCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N < 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := by
  induction m generalizing a N with
  | zero =>
      have hzero : N = 0 := by
        norm_num at hN
        omega
      subst N
      simp [finitePrefixSum, alignedDyadicProperCarlesonEnergy]
  | succ m ih =>
      let H : ℕ := 2 ^ m
      let right : ℕ → ℝ := shiftedSequence a H
      have hpow : 2 ^ Nat.succ m = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      rw [hpow] at hN
      by_cases hleft : N < H
      · have hprefix := ih a N (by simpa [H] using hleft)
        have hproper := alignedDyadicProperCarlesonEnergy_le_succ m a
        have hnonneg :=
          alignedDyadicProperCarlesonEnergy_nonneg (m + 1) a
        calc
          finitePrefixSum a N ^ 2 ≤
              (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := hprefix
          _ ≤ (m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a :=
            mul_le_mul_of_nonneg_left hproper (Nat.cast_nonneg m)
          _ ≤ (Nat.succ m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
            exact mul_le_mul_of_nonneg_right
              (by exact_mod_cast Nat.le_succ m) hnonneg
      · have hHle : H ≤ N := Nat.le_of_not_gt hleft
        have hrem : N - H < H := by omega
        have hrightPrefix := ih right (N - H)
          (by simpa [H] using hrem)
        have hdecomp : H + (N - H) = N := Nat.add_sub_of_le hHle
        have hsplit :
            finitePrefixSum a N =
              finitePrefixSum a H + finitePrefixSum right (N - H) := by
          calc
            finitePrefixSum a N = finitePrefixSum a (H + (N - H)) := by
              rw [hdecomp]
            _ = finitePrefixSum a H +
                finitePrefixSum right (N - H) := by
              simpa [right] using finitePrefixSum_add a H (N - H)
        have hcombine :
            (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 ≤
              ((m : ℝ) + 1) *
                (finitePrefixSum a H ^ 2 +
                  alignedDyadicProperCarlesonEnergy m right) :=
          add_sq_le_succ_weight
            (Nat.cast_nonneg m)
            (alignedDyadicProperCarlesonEnergy_nonneg m right)
            hrightPrefix
        have hcontain :
            finitePrefixSum a H ^ 2 +
                alignedDyadicProperCarlesonEnergy m right ≤
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
          simpa [right, H] using
            topBlock_sq_add_shiftedProperEnergy_le_succ m a
        calc
          finitePrefixSum a N ^ 2 =
              (finitePrefixSum a H +
                finitePrefixSum right (N - H)) ^ 2 := by rw [hsplit]
          _ ≤ ((m : ℝ) + 1) *
              (finitePrefixSum a H ^ 2 +
                alignedDyadicProperCarlesonEnergy m right) := hcombine
          _ ≤ ((m : ℝ) + 1) *
              alignedDyadicProperCarlesonEnergy (m + 1) a :=
            mul_le_mul_of_nonneg_left hcontain (by positivity)
          _ = (Nat.succ m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
            rw [Nat.cast_succ]

/-- Every finite prefix is controlled by `m+1` times the max-per-scale
Carleson energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419fe18fbf54d5842c11da5176674023e905e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
