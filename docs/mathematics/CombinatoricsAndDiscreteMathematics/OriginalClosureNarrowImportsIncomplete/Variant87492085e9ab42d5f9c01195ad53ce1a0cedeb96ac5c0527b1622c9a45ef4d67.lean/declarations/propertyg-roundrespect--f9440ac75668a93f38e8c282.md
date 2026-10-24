# propertyG_roundRespect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d6eced7-6ee7-4bcd-6545-283c5c323079",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60b58f60-ecad-1cd6-39eb-a6c43f878d3b",
  "kind": "theorem",
  "lexical_name": "propertyG_roundRespect",
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
  "slug": "propertyg-roundrespect--f9440ac75668a93f38e8c282",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25398,
    "line": 25371,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9440ac75668a93f38e8c2821358387c24f84e14de4b2a42d20725ef35a55605",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60b58f60-ecad-1cd6-39eb-a6c43f878d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25371–25398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem propertyG_roundRespect {v : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hp : Proves P Γ γ (B.propertyG L.code KY.code KP.code v)) :
    Proves P Γ γ (B.relational.channel.roundRespect L.code KY.code B.baseType v) := by
  obtain ⟨s,hs⟩ := KY.triple.domain.1
  apply L.all_intro_future KY (H.relational_formed.channel.logical_sorted H.base_sorted)
    (H.relational_formed.channel.logical_mode H.base_mode)
    (H.relational_formed.channel.logical_sorted H.base_sorted s hs)
    (H.relational_formed.channel.roundRespectBody_family H.base_sorted H.base_mode hv mv)
  intro Δ δ e y hy my
  rw [ChannelCode.roundRespectBody_rename,ChannelCode.roundRespectBody_instantiate]
  have hp' := hp.rename e
  simp only [propertyG_rename] at hp'
  have hy' : HasType P Δ y (B.rename e.names).yType := by
    rw [(H.rename e).shape]
    simpa only [ChannelCode.logicalType_rename,baseType_rename,SpecializedCode.rename,relational,ObservationCode.rename,RelationalCode.channel,
      RelationalCode.rename,ChannelCode.rename,ProbeCode.rename] using hy
  have hv' := v_typed_rename (B := B) e hv
  have hr := (H.rename e).round_typed hy' my
  have hf := (L.rename e).iff_of_equivalent ((H.rename e).ev_formula hv' (e.moded mv) hy' my)
    ((H.rename e).ev_formula hv' (e.moded mv) hr.1 hr.2)
    ((H.rename e).propertyG_round (KY.rename e) (KP.rename e) hv' (e.moded mv) hy' my hp')
  simpa only [ev,round,baseType_rename,SpecializedCode.rename,relational,ObservationCode.rename,RelationalCode.channel,
    RelationalCode.rename,ChannelCode.rename,ProbeCode.rename,←LogicSetup.code_rename,LogicSetup.code_iff] using hf
end SpecializedCode.Formed

namespace SpecializedCode
variable (B : SpecializedCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L25371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
