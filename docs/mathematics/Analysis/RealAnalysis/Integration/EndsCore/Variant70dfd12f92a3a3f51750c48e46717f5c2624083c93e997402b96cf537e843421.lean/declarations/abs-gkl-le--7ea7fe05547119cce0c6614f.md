# abs_gkl_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d18f6be4-2ee8-5923-3b00-8f87524cbd7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c22e180-a758-3594-2f32-fe6fb0b2ab7c",
  "kind": "theorem",
  "lexical_name": "abs_gkl_le",
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
  "slug": "abs-gkl-le--7ea7fe05547119cce0c6614f",
  "source": {
    "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea7fe05547119cce0c6614fa19b0eb5f33e5fba4c0fbe44d9c529d08227b29c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c22e180-a758-3594-2f32-fe6fb0b2ab7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_gkl_le (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν) (hT : 1 ≤ p.T) (hB : 0 ≤ B)
    (k l : ℤ) (τ : ℝ) :
    |gkl p F ν k l τ| ≤ (4 * (p.L + cϱ / p.w) ^ 2 * (1 + p.tau k ^ 2) * (1 + p.tau l ^ 2)
      * (B + 1)) * (1 + τ ^ 2)⁻¹ := by
  have hM : 0 ≤ p.L + cϱ / p.w := by
    have := abs_phiHat_mul_one_add_sq_le hF 0; nlinarith [abs_nonneg (F.phiHat 0)]
  have ha := abs_phiHat_shift_le hF τ (p.tau k)
  have hb := abs_phiHat_shift_le hF τ (p.tau l)
  have hn := abs_nuX_le_linear hν hT τ
  have hpos : 0 < 1 + τ ^ 2 := by positivity
  -- (B + |τ|) ≤ (B + 1)(1 + τ²)
  have hlin : B + |τ| ≤ (B + 1) * (1 + τ ^ 2) := by
    have : |τ| ≤ 1 + τ ^ 2 := by
      rcases le_or_gt |τ| 1 with h | h
      · nlinarith [sq_nonneg τ]
      · have : |τ| ≤ |τ| ^ 2 := by nlinarith
        rw [sq_abs] at this; linarith
    nlinarith
  unfold gkl
  rw [abs_mul, abs_mul]
  have hn' : |ν τ| ≤ (B + 1) * (1 + τ ^ 2) := le_trans hn hlin
  calc |F.phiHat (τ - p.tau k)| * |F.phiHat (τ - p.tau l)| * |ν τ|
      ≤ (2 * (p.L + cϱ / p.w) * (1 + p.tau k ^ 2) / (1 + τ ^ 2))
        * (2 * (p.L + cϱ / p.w) * (1 + p.tau l ^ 2) / (1 + τ ^ 2))
        * ((B + 1) * (1 + τ ^ 2)) := by
        apply mul_le_mul (mul_le_mul ha hb (abs_nonneg _) (by positivity)) hn' (abs_nonneg _)
          (by positivity)
    _ = _ := by field_simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
