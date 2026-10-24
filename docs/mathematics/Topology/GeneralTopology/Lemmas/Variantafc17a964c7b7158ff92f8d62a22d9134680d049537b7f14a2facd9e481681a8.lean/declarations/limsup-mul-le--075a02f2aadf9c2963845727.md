# limsup_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c05325f9aa7d9d4fd41ba864b7eb4460e43e9255",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38e4dc7d-27da-db22-47e6-8d39d770b456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd95960d-f79a-2f01-8646-d5b11fb28fd2",
  "kind": "lemma",
  "lexical_name": "limsup_mul_le",
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
  "slug": "limsup-mul-le--075a02f2aadf9c2963845727",
  "source": {
    "blob": "c05325f9aa7d9d4fd41ba864b7eb4460e43e9255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:075a02f2aadf9c2963845727f8cf094d4087da7f237818c5e9c607252140b946",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd95960d-f79a-2f01-8646-d5b11fb28fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_mul_le (hu : ∃ᶠ x in f, 0 ≤ u x) (hv : 0 ≤ᶠ[f] v)
    (h₁ : limsup u f ≠ 0 ∨ limsup v f ≠ ⊤) (h₂ : limsup u f ≠ ⊤ ∨ limsup v f ≠ 0) :
    limsup (u * v) f ≤ limsup u f * limsup v f := by
  rcases f.eq_or_neBot with rfl | _
  · rw [limsup_bot]; exact bot_le
  have u_0 : 0 ≤ limsup u f := le_limsup_of_frequently_le hu
  replace h₁ : 0 < limsup u f ∨ limsup v f ≠ ⊤ := h₁.imp_left fun h ↦ lt_of_le_of_ne u_0 h.symm
  replace h₂ : limsup u f ≠ ⊤ ∨ 0 < limsup v f :=
    h₂.imp_right fun h ↦ lt_of_le_of_ne (le_limsup_of_frequently_le hv.frequently) h.symm
  refine le_mul_of_forall_lt h₁ h₂ fun a a_u b b_v ↦ (limsup_le_iff).2 fun c c_ab ↦ ?_
  filter_upwards [eventually_lt_of_limsup_lt a_u, eventually_lt_of_limsup_lt b_v, hv]
    with x x_a x_b v_0
  apply lt_of_le_of_lt _ c_ab
  rcases lt_or_ge (u x) 0 with hux | hux
  · apply (mul_nonpos_iff.2 (.inr ⟨hux.le, v_0⟩)).trans
    exact mul_nonneg (u_0.trans a_u.le) (v_0.trans x_b.le)
  · exact mul_le_mul x_a.le x_b.le v_0 (hux.trans x_a.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05325f9aa7d9d4fd41ba864b7eb4460e43e9255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
