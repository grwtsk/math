# abs_Kinf_sub_Kfun_le

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
      "line": 671,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf15853b-3e30-9c90-45cc-a794560fb653",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caebc088-f03c-8653-2eda-af5d78653c11",
  "kind": "theorem",
  "lexical_name": "abs_Kinf_sub_Kfun_le",
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
  "slug": "abs-kinf-sub-kfun-le--1cfa42e03943224d57ddab4a",
  "source": {
    "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 671,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cfa42e03943224d57ddab4a01d2a47d163eaa7be5b28d9adb7268812b4e8f0c",
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

Occurrence: `result:caebc088-f03c-8653-2eda-af5d78653c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Kinf_sub_Kfun_le (hF : LocalHypsCoreW cϱ p F) (τ τ' : ℝ) {s : ℝ} (hs : 0 < s) :
    |Kinf p F τ τ' - Kfun p F τ τ'| ≤ (s * rho p F τ + rho p F τ' / s) / 2 := by
  set f : {k : ℤ // k ∉ Finset.Ico (0 : ℤ) p.d} → ℝ :=
    fun k => F.phiHat (τ - p.tau k) * F.phiHat (τ' - p.tau k) with hf
  have hK := hasSum_Kout hF τ τ'
  have hρ := hasSum_rho hF τ
  have hρ' := hasSum_rho hF τ'
  -- majorant
  have hmaj : HasSum (fun k : {k : ℤ // k ∉ Finset.Ico (0 : ℤ) p.d} =>
      (s * F.phiHat (τ - p.tau k) ^ 2 + F.phiHat (τ' - p.tau k) ^ 2 / s) / 2)
      ((s * rho p F τ + rho p F τ' / s) / 2) :=
    ((hρ.mul_left s).add (hρ'.div_const s)).div_const 2
  have hle : ∀ k, |f k| ≤ (s * F.phiHat (τ - p.tau k) ^ 2 + F.phiHat (τ' - p.tau k) ^ 2 / s) / 2 :=
    fun k => abs_mul_le_weighted _ _ hs
  have habs : Summable (fun k => |f k|) :=
    Summable.of_nonneg_of_le (fun k => abs_nonneg _) hle hmaj.summable
  rw [← hK.tsum_eq]
  calc |∑' k, f k| ≤ ∑' k, |f k| := by
        have := norm_tsum_le_tsum_norm (f := f) (by simpa [Real.norm_eq_abs] using habs)
        simpa [Real.norm_eq_abs] using this
    _ ≤ (s * rho p F τ + rho p F τ' / s) / 2 :=
        hasSum_le hle habs.hasSum hmaj

end Kbounds


end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
