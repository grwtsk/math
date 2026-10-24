# thetaLogError_eventual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50f9219d73a14d76665463c39fdb274862f1f669",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4244ede2-9f24-62d5-a374-46dea48af373",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7789cb24-82cf-29d4-8871-efeaf6f6d277",
  "kind": "theorem",
  "lexical_name": "thetaLogError_eventual_bound",
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
  "slug": "thetalogerror-eventual-bound--2188ecb48a22c79739b94adb",
  "source": {
    "blob": "50f9219d73a14d76665463c39fdb274862f1f669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2188ecb48a22c79739b94adb7a970bf04fd22a4f36d3aa6806206b45f31cd3d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7789cb24-82cf-29d4-8871-efeaf6f6d277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_eventual_bound : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ u ≥ T, |thetaLogError u| ≤ C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) +
      2 * u * Real.exp (-u / 2) := by
  obtain ⟨c, hc, C, hC, T, hT, hb⟩ := errorProfile_quantitative_tail
  refine ⟨c, hc, C, hC, T, hT, ?_⟩
  intro u hu
  apply (thetaLogError_abs_le_psi_error u (by linarith)).trans
  apply add_le_add _ le_rfl
  calc
    _ ≤ (C * Real.exp u * Real.exp (-c * u ^ ((1 : ℝ) / 10))) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right (hb u hu u le_rfl) (Real.exp_pos _).le
    _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) := by
      calc
        _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) * (Real.exp u * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f9219d73a14d76665463c39fdb274862f1f669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
