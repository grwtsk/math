# integrableOn_Ioi_exp_neg_mul_sq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:145a43a2-e168-dc3f-de97-d3bf61b137ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aebed9b-0588-43a5-5176-bc41ff81fe57",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioi_exp_neg_mul_sq_iff",
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
  "slug": "integrableon-ioi-exp-neg-mul-sq-iff--3e407b26cb22cc0f5ded821f",
  "source": {
    "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e407b26cb22cc0f5ded821fd7f14ede7e8b90eee14bbb3893049a8ef11c7a42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aebed9b-0588-43a5-5176-bc41ff81fe57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioi_exp_neg_mul_sq_iff {b : ℝ} :
    IntegrableOn (fun x : ℝ => exp (-b * x ^ 2)) (Ioi 0) ↔ 0 < b := by
  refine ⟨fun h => ?_, fun h => (integrable_exp_neg_mul_sq h).integrableOn⟩
  by_contra! hb
  have : ∫⁻ _ : ℝ in Ioi 0, 1 ≤ ∫⁻ x : ℝ in Ioi 0, ‖exp (-b * x ^ 2)‖₊ := by
    apply lintegral_mono (fun x ↦ _)
    simp only [neg_mul, ENNReal.one_le_coe_iff, ← toNNReal_one, toNNReal_le_iff_le_coe,
      Real.norm_of_nonneg (exp_pos _).le, coe_nnnorm, one_le_exp_iff, Right.nonneg_neg_iff]
    exact fun x ↦ mul_nonpos_of_nonpos_of_nonneg hb (sq_nonneg x)
  simpa using this.trans_lt h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3038cda35f1c8daaaac127fae8010a711397d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
