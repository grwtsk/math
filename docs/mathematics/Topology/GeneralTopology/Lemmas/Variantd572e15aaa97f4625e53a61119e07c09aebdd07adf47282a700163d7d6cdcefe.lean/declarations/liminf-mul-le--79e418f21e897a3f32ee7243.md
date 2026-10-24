# liminf_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d6f20a3-c407-48e9-3295-015f9f0dcb33",
  "kind": "lemma",
  "lexical_name": "liminf_mul_le",
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
  "slug": "liminf-mul-le--79e418f21e897a3f32ee7243",
  "source": {
    "blob": "fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e418f21e897a3f32ee7243ca339d12239747d72e671531bd79af710816d845",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6f20a3-c407-48e9-3295-015f9f0dcb33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liminf_mul_le [NeBot f] (hu : 0 ≤ᶠ[f] u) (hv : 0 ≤ᶠ[f] v)
    (h₁ : limsup u f ≠ 0 ∨ liminf v f ≠ ⊤) (h₂ : limsup u f ≠ ⊤ ∨ liminf v f ≠ 0) :
    liminf (u * v) f ≤ limsup u f * liminf v f := by
  replace h₁ : 0 < limsup u f ∨ liminf v f ≠ ⊤ := by
    refine h₁.imp_left fun h ↦ lt_of_le_of_ne ?_ h.symm
    exact le_of_eq_of_le (limsup_const 0).symm (limsup_le_limsup hu)
  replace h₂ : limsup u f ≠ ⊤ ∨ 0 < liminf v f := by
    refine h₂.imp_right fun h ↦ lt_of_le_of_ne ?_ h.symm
    exact le_of_eq_of_le (liminf_const 0).symm (liminf_le_liminf hv)
  refine le_mul_of_forall_lt h₁ h₂ fun a a_u b b_v ↦ (liminf_le_iff).2 fun c c_ab ↦ ?_
  refine (((frequently_lt_of_liminf_lt) b_v).and_eventually <| (eventually_lt_of_limsup_lt a_u).and
    <| hu.and hv).mono fun x ⟨x_v, x_u, u_0, v_0⟩ ↦ ?_
  exact (mul_le_mul x_u.le x_v.le v_0 (u_0.trans x_u.le)).trans_lt c_ab

end LimInfSup

/-! ### Continuity of addition -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
