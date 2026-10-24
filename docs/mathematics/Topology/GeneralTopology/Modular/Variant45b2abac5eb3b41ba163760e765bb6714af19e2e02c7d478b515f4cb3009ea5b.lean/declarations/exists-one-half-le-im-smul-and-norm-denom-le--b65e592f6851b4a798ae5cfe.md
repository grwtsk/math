# exists_one_half_le_im_smul_and_norm_denom_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc2b6462-6d7f-c6a1-d557-78bb7060e929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de757f2d-6edf-99e4-16d1-50a1021dee10",
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
  "slug": "exists-one-half-le-im-smul-and-norm-denom-le--b65e592f6851b4a798ae5cfe",
  "source": {
    "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 518,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b65e592f6851b4a798ae5cfeffab0d7b7dc496671e4ea86f3749f4c8c37480bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de757f2d-6edf-99e4-16d1-50a1021dee10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–530.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11af827f4bf5f7597004c39e36c8528150e8111d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
