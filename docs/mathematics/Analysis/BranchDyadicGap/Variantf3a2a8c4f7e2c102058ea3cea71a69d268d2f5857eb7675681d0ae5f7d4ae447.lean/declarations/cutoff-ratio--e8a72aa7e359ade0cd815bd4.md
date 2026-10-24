# cutoff_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7df5f13c-d60a-4b48-87a3-c1bfa4388c21",
  "kind": "theorem",
  "lexical_name": "cutoff_ratio",
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
  "slug": "cutoff-ratio--e8a72aa7e359ade0cd815bd4",
  "source": {
    "blob": "1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 116,
    "path": "GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a72aa7e359ade0cd815bd449ec8da1349efd3d4fdf3ae8e3ec6c7ba3f457aa",
  "verification": {
    "reference": "docs/verification/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df5f13c-d60a-4b48-87a3-c1bfa4388c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_ratio (θ ε : ℝ) (hθ : 0 ≤ θ) (hε : 0 ≤ ε)
    (hεθ : ε < θ) (L : H →ₗ[ℝ] H) (x v : H)
    (hv : ‖v‖ = 1) (hx : ‖x‖ ≤ ε) (hLx : L x = v) (hLv : L v = 0) :
    ‖difference θ L (x + θ • v)‖ ^ 2 / ‖x + θ • v‖ ^ 2 ≤
      ε ^ 2 / (θ - ε) ^ 2 := by
  rw [cutoff_witness θ L x v hLx hLv]
  have hf := cutoff_witness_norm θ ε hθ x v hv hx
  have hd : 0 < ‖x + θ • v‖ := lt_of_lt_of_le (sub_pos.mpr hεθ) hf
  apply (div_le_div_iff₀ (sq_pos_of_pos hd) (sq_pos_of_pos (sub_pos.mpr hεθ))).mpr
  have hx2 : ‖x‖ ^ 2 ≤ ε ^ 2 := by nlinarith [norm_nonneg x]
  have hf2 : (θ - ε) ^ 2 ≤ ‖x + θ • v‖ ^ 2 := by nlinarith
  exact (mul_le_mul_of_nonneg_right hx2 (sq_nonneg _)).trans
    (mul_le_mul_of_nonneg_left hf2 (sq_nonneg _))

end FormalResearch.RiemannHypothesis.Conversation.BranchDyadicGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
