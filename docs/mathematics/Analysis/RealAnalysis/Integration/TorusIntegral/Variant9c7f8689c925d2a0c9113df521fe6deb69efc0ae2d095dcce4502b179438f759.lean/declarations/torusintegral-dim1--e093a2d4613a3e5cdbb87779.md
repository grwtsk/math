# torusIntegral_dim1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02860db94b2dec66df69cc4863a6c9f592bf5e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93f00a54-f5e9-e88c-9934-3a262be0cb96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07f52175-1713-3d06-0bdc-43b5a0c1fe38",
  "kind": "theorem",
  "lexical_name": "torusIntegral_dim1",
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
  "slug": "torusintegral-dim1--e093a2d4613a3e5cdbb87779",
  "source": {
    "blob": "02860db94b2dec66df69cc4863a6c9f592bf5e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e093a2d4613a3e5cdbb87779d7fb4ec0cf220bdfc2bb6b2a838874523dd4b8cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f52175-1713-3d06-0bdc-43b5a0c1fe38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torusIntegral_dim1 (f : ℂ¹ → E) (c : ℂ¹) (R : ℝ¹) :
    (∯ x in T(c, R), f x) = ∮ z in C(c 0, R 0), f fun _ => z := by
  have H₁ : (((MeasurableEquiv.funUnique _ _).symm) ⁻¹' Icc 0 fun _ => 2 * π) = Icc 0 (2 * π) :=
    (OrderIso.funUnique (Fin 1) ℝ).symm.preimage_Icc _ _
  have H₂ : torusMap c R = fun θ _ ↦ circleMap (c 0) (R 0) (θ 0) := by
    ext θ i : 2
    rw [Subsingleton.elim i 0]; rfl
  rw [torusIntegral, circleIntegral, intervalIntegral.integral_of_le Real.two_pi_pos.le,
    Measure.restrict_congr_set Ioc_ae_eq_Icc,
    ← ((volume_preserving_funUnique (Fin 1) ℝ).symm _).setIntegral_preimage_emb
      (MeasurableEquiv.measurableEmbedding _), H₁, H₂]
  simp [circleMap_zero]

/-- Recurrent formula for `torusIntegral`, see also `torusIntegral_succ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02860db94b2dec66df69cc4863a6c9f592bf5e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
