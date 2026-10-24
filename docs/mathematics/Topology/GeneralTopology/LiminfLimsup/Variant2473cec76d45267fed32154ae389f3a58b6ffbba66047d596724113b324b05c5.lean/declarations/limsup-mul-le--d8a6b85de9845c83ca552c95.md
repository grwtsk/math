# limsup_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f1ca252-831a-5867-d32f-df81f5d3688d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08ae74fb-a46d-3536-21c0-b722285aef7c",
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
  "slug": "limsup-mul-le--d8a6b85de9845c83ca552c95",
  "source": {
    "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8a6b85de9845c83ca552c9578d400fc92c7af79eea4273eefade4491fa74ea1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ae74fb-a46d-3536-21c0-b722285aef7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_mul_le (h₁ : ∃ᶠ x in f, 0 ≤ u x) (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u)
    (h₃ : 0 ≤ᶠ[f] v) (h₄ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f v) :
    limsup (u * v) f ≤ (limsup u f) * limsup v f := by
  have h := IsCoboundedUnder.of_frequently_ge (a := 0)
    <| (h₁.and_eventually h₃).mono fun x ⟨ux_0, vx_0⟩ ↦ mul_nonneg ux_0 vx_0
  have h' := isBoundedUnder_le_mul_of_nonneg h₁ h₂ h₃ h₄
  refine le_mul_of_forall_lt₀ fun a a_u b b_v ↦ (limsup_le_iff h h').2 fun c c_ab ↦ ?_
  filter_upwards [eventually_lt_of_limsup_lt a_u, eventually_lt_of_limsup_lt b_v, h₃]
    with x x_a x_b v_0
  apply lt_of_le_of_lt _ c_ab
  rcases lt_or_ge (u x) 0 with u_0 | u_0
  · apply (mul_nonpos_of_nonpos_of_nonneg u_0.le v_0).trans
    exact mul_nonneg ((le_limsup_of_frequently_le h₁ h₂).trans a_u.le) (v_0.trans x_b.le)
  · exact mul_le_mul x_a.le x_b.le v_0 (u_0.trans x_a.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc69167b8b51091fd109d35c49d559c2852b729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
