# thetaGaussianFromFour_rankFour_tsum_le

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
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b64ae70-2edf-5a1d-30c2-40f4e0ceb14d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dd0c731-a534-1bef-cad6-977f012dafeb",
  "kind": "theorem",
  "lexical_name": "thetaGaussianFromFour_rankFour_tsum_le",
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
  "slug": "thetagaussianfromfour-rankfour-tsum-le--13bc4119836d1df69fafcbb9",
  "source": {
    "blob": "c523903a76bf7b37738979ffd62cca5684f61a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 261,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13bc4119836d1df69fafcbb994c491d35e9b78de3c0a52f95e94316f2fe1785b",
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

Occurrence: `result:5dd0c731-a534-1bef-cad6-977f012dafeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianFromFour_rankFour_tsum_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) :
    (∑' m : ℕ,
      ((m : ℝ) + 4) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1))) ≤
      2 * 4 ^ p * Real.exp (-15 * A) := by
  have h :=
    (thetaGaussianFromFour_rankFour_summable
      hA p hp).tsum_le_tsum
        (rankFourGaussianFromFour_geometric
          hA p hp)
        ((summable_geometric_of_norm_lt_one
          (by norm_num :
            ‖(1 / 2 : ℝ)‖ < 1)).mul_left
          (rankFourGaussianFromFour A p 0))
  rw [tsum_mul_left,
    tsum_geometric_of_norm_lt_one
      (by norm_num :
        ‖(1 / 2 : ℝ)‖ < 1)] at h
  change
    (∑' m, rankFourGaussianFromFour A p m) ≤ _
  apply h.trans_eq
  simp only [rankFourGaussianFromFour,
    Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- Exact coefficient in the seven-coordinate n >= 4 remainder box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5cf0dad1912cfd2e1ed9b344ace9a9526166cc8fd87f7525acb2b77f1a59b8ad.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c523903a76bf7b37738979ffd62cca5684f61a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
