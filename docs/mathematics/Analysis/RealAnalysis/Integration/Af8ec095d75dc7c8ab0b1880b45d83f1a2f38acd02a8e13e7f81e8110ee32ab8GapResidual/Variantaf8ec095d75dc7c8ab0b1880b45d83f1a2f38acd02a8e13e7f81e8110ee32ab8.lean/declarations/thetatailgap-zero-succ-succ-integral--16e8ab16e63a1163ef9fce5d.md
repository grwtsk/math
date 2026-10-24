# thetaTailGap_zero_succ_succ_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26de299173ce69a8e0c5656ebb59b446764d84ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5df86bf8-8fa1-fa24-6a91-afaad282c455",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41e4e9fc-61e5-6409-79b5-1e90861d1fca",
  "kind": "theorem",
  "lexical_name": "thetaTailGap_zero_succ_succ_integral",
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
  "slug": "thetatailgap-zero-succ-succ-integral--16e8ab16e63a1163ef9fce5d",
  "source": {
    "blob": "26de299173ce69a8e0c5656ebb59b446764d84ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e8ab16e63a1163ef9fce5d154b0fd91dd561e2b4d4686ea42c09b2727b6213",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e4e9fc-61e5-6409-79b5-1e90861d1fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailGap_zero_succ_succ_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTailGap 0 (s + 2) t =
      (∫ u in Ici t, (((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u))) := by
  rw [thetaTailGap_zero_succ (s + 1)]
  have hp := thetaTail_integrable (s + 1) ht
  have hd : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_deriv_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have heq : (fun u => ((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) =
      fun u => deriv thetaPhi t *
        (thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) -
        thetaPhi t * (deriv thetaPhi u * (u - t) ^ (s + 1) /
          ((s + 1).factorial : ℝ)) := by
    funext u
    ring
  rw [heq, integral_sub (hp.const_mul _) (hd.const_mul _), integral_const_mul,
    integral_const_mul, thetaPhi_deriv_tailKernel_integral s ht]
  have ht2 : thetaTail (s + 2) t =
      (∫ u in Ici t, (thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))) := rfl
  rw [← ht2]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26de299173ce69a8e0c5656ebb59b446764d84ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
