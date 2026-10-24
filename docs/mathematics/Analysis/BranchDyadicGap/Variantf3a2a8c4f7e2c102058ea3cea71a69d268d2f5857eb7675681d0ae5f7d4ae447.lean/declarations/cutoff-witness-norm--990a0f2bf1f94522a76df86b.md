# cutoff_witness_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8584f09d-4034-c9ad-5944-b15efc7e300e",
  "kind": "theorem",
  "lexical_name": "cutoff_witness_norm",
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
  "slug": "cutoff-witness-norm--990a0f2bf1f94522a76df86b",
  "source": {
    "blob": "1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:990a0f2bf1f94522a76df86bc9f20aa6d82463a4db3d965a77e7a38631186194",
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

Occurrence: `result:8584f09d-4034-c9ad-5944-b15efc7e300e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_witness_norm (θ ε : ℝ) (hθ : 0 ≤ θ) (x v : H)
    (hv : ‖v‖ = 1) (hx : ‖x‖ ≤ ε) : θ - ε ≤ ‖x + θ • v‖ := by
  have h := norm_sub_norm_le (θ • v) (-x)
  simp only [norm_smul, Real.norm_eq_abs, abs_of_nonneg hθ, hv, mul_one,
    norm_neg, sub_neg_eq_add] at h
  rw [add_comm] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
