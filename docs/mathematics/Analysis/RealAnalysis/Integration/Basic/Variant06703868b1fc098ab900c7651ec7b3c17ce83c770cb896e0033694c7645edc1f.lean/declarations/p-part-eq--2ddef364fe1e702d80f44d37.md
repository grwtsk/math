# P_part_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8172746a-94ea-2a2a-1889-b2900334f49a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff1a5c01-63e1-7449-736f-43925edc02fd",
  "kind": "lemma",
  "lexical_name": "P_part_eq",
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
  "slug": "p-part-eq--2ddef364fe1e702d80f44d37",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1158,
    "line": 1140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ddef364fe1e702d80f44d375a0a7df0511a1ccaf142a63f5ff9e1a0e564318d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff1a5c01-63e1-7449-736f-43925edc02fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1140–1158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma P_part_eq (hF : LocalHypsCore cϱ p F) (t : ℝ) :
    ∫ r, F.phiHat r ^ 2 * Zeta23.PX p.X (t + r)
      = -2 * ∑ n ∈ primeRange p.X, acoef n * F.Aphi (ycoef n) * Real.cos (t * ycoef n) := by
  have h1 : (fun r => F.phiHat r ^ 2 * Zeta23.PX p.X (t + r))
      = fun r => ∑ n ∈ primeRange p.X,
          (-(1 / Real.pi) * acoef n) * (F.phiHat r ^ 2 * Real.cos ((t + r) * ycoef n)) := by
    funext r
    rw [PX_eq, Finset.mul_sum, Finset.mul_sum]
    exact Finset.sum_congr rfl fun n _ => by ring
  rw [h1, integral_finsetSum _ (fun n _ =>
    ((hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop) (fun x => Real.abs_cos_le_one _)).const_mul _))]
  simp_rw [integral_const_mul, integral_phiHat_sq_mul_cos_shift hF]
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun n _ => ?_
  field_simp

/-- **μ-part of [prop:trace] at one grid point** (§5.2: `G^μ_kk = 2πaL μ(τ_k) + O(log L/T)`):
for `t ≥ 2`, `|∫ φ̂(r)² μ(t+r) dr − 2πaL·μ(t)| ≤ (K ∫φ̂²|r| + 10 ∫φ̂²r²)/t`, with `K` from
`mu_increment_bound`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L1140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
