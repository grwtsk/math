# thetaPhiThreeModeRemainderTerm7_tsum_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c523903a76bf7b37738979ffd62cca5684f61a0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cda37cb-d9ab-0701-7104-dbf64896aa0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ab3ff35-2746-f79b-f16d-b5e74f9eb686",
  "kind": "theorem",
  "lexical_name": "thetaPhiThreeModeRemainderTerm7_tsum_abs_le",
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
  "slug": "thetaphithreemoderemainderterm7-tsum-abs-le--52f60f7dda4fd48aa919fe66",
  "source": {
    "blob": "c523903a76bf7b37738979ffd62cca5684f61a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 352,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f60f7dda4fd48aa919fe660114112b03ccbbf1d4080281e97fda5098a07111",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ab3ff35-2746-f79b-f16d-b5e74f9eb686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiThreeModeRemainderTerm7_tsum_abs_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ,
        thetaPhiThreeModeRemainderTerm7 k A m| ≤
      thetaPhiThreeModeTailErrorCoefficient k *
        A ^ (k.val + 1) *
          Real.exp (-15 * A) := by
  have hnorm :
      Summable
        (fun m =>
          ‖thetaPhiThreeModeRemainderTerm7
            k A m‖) :=
    ((thetaGaussianFromFour_rankFour_summable
      hA (2 * k.val + 4)
        (by omega)).mul_left
      (2 * 4 ^ k.val *
        A ^ (k.val + 1))).of_nonneg_of_le
      (fun m => norm_nonneg _)
      (thetaPhiThreeModeRemainderTerm7_norm_le
        k hA)
  have hsum := hnorm.tsum_le_tsum
    (thetaPhiThreeModeRemainderTerm7_norm_le
      k hA)
    ((thetaGaussianFromFour_rankFour_summable
      hA (2 * k.val + 4)
        (by omega)).mul_left
      (2 * 4 ^ k.val *
        A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ =
        ‖∑' m,
          thetaPhiThreeModeRemainderTerm7
            k A m‖ :=
      (Real.norm_eq_abs _).symm
    _ ≤
        ∑' m,
          ‖thetaPhiThreeModeRemainderTerm7
            k A m‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (∑' m : ℕ,
          ((m : ℝ) + 4) ^
              (2 * k.val + 4) *
            Real.exp
              (-A *
                (((m : ℝ) + 4) ^ 2 - 1))) :=
      hsum
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (2 * 4 ^ (2 * k.val + 4) *
          Real.exp (-15 * A)) :=
      mul_le_mul_of_nonneg_left
        (thetaGaussianFromFour_rankFour_tsum_le
          hA (2 * k.val + 4)
            (by omega))
        (by positivity)
    _ = _ := by
      unfold
        thetaPhiThreeModeTailErrorCoefficient
      ring

/-- Source-specialized n >= 4 remainder box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c523903a76bf7b37738979ffd62cca5684f61a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
