# exists_one_half_le_im_smul_and_norm_denom_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea93f8d2-69ca-c5de-4acf-fddb4112e066",
  "kind": "lemma",
  "lexical_name": "exists_one_half_le_im_smul_and_norm_denom_le",
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
  "slug": "exists-one-half-le-im-smul-and-norm-denom-le--01302df071c178e537db121f",
  "source": {
    "blob": "0b65e86e231f39c0a13cd4f3f817f39ac55e169e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01302df071c178e537db121fb251923e297035819b0b16fc0e84e12e67454f5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea93f8d2-69ca-c5de-4acf-fddb4112e066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_one_half_le_im_smul_and_norm_denom_le (τ : ℍ) :
    ∃ γ : SL(2, ℤ), 1 / 2 ≤ im (γ • τ) ∧ ‖denom γ τ‖ ≤ 1 := by
  rcases le_total (1 / 2) τ.im with h | h
  · exact ⟨1, (one_smul SL(2, ℤ) τ).symm ▸ h, by
      simp only [map_one, denom_one, norm_one, le_refl]⟩
  · refine (exists_one_half_le_im_smul τ).imp (fun γ hγ ↦ ⟨hγ, ?_⟩)
    have h1 : τ.im ≤ (γ • τ).im := h.trans hγ
    rw [im_smul_eq_div_normSq, le_div_iff₀ (normSq_denom_pos γ τ.im_ne_zero),
      normSq_eq_norm_sq] at h1
    simpa only [sq_le_one_iff_abs_le_one, abs_norm] using
      (mul_le_iff_le_one_right τ.2).mp h1

end ModularGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b65e86e231f39c0a13cd4f3f817f39ac55e169e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
