# integrable_mul_logDeriv_L_of_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:799c847f-9f28-b1ad-566a-70620a2f3df0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3f2ecc7-7062-5dc4-c815-5ae8da7c99d4",
  "kind": "theorem",
  "lexical_name": "integrable_mul_logDeriv_L_of_decay",
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
  "slug": "integrable-mul-logderiv-l-of-decay--442e74568db33d7808475e18",
  "source": {
    "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 351,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442e74568db33d7808475e18328d975fd26ca043868735896b68d7fa9ea3b39e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3f2ecc7-7062-5dc4-c815-5ae8da7c99d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_mul_logDeriv_L_of_decay (hχ1 : χ ≠ 1) {φ : ℝ → ℂ} (hφc : Continuous φ) {C : ℝ}
    (hφ : ∀ t, ‖φ t‖ ≤ C / (1 + t ^ 2)) {c : ℝ} (hc1 : 1 < c) :
    Integrable (fun t : ℝ => φ t * logDeriv χ.LFunction ((c : ℂ) + t * I)) := by
  obtain ⟨M, hM0, hM⟩ := norm_logDeriv_L_le_of_one_lt_re hχ1 hc1
  have hC0 : 0 ≤ C := by
    have := le_trans (norm_nonneg _) (hφ 0); simpa using this
  refine Integrable.mono' ((integrable_inv_one_add_sq.const_mul (C * M)))
    (hφc.mul (continuous_logDeriv_L_line hχ1 hc1)).aestronglyMeasurable
    (Eventually.of_forall fun t => ?_)
  rw [norm_mul]
  calc ‖φ t‖ * ‖logDeriv χ.LFunction ((c : ℂ) + t * I)‖
      ≤ (C / (1 + t ^ 2)) * M := mul_le_mul (hφ t) (hM t) (norm_nonneg _) (by positivity)
    _ = C * M * (1 + t ^ 2)⁻¹ := by ring

/-- **Integrability of `H(c+it)·L'/L(χ)(c+it)`** on re = c ∈ (1, 3/2] (`hintL`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416a67313657b74c4c490f7fc262e07c4d0ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
