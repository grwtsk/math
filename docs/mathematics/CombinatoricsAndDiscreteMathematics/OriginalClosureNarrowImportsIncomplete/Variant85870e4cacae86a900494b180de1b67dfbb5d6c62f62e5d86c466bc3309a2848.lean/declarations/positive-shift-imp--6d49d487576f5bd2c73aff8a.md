# positive_shift_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:217309cc-c5ea-4e7f-1eef-d891607a8032",
  "kind": "theorem",
  "lexical_name": "positive_shift_imp",
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
  "slug": "positive-shift-imp--6d49d487576f5bd2c73aff8a",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28880,
    "line": 28859,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d49d487576f5bd2c73aff8a0ed533a2278f6acc91ffeb49caa00bf0c7862afb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217309cc-c5ea-4e7f-1eef-d891607a8032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28859–28880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_shift_imp {x i : Expr S}
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code x))
    (hq : Proves P Γ γ (B.diagonalQ L.code KY.code KP.code x))
    (he : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code i)) : Proves P Γ γ (L.imp (B.relational.le L.code KY.code KP.code i (B.delta L.code KY.code KP.code x)) (B.relational.channel.eval B.relational.probe.carrier i (B.delta L.code KY.code KP.code (B.delta L.code KY.code KP.code x)))) := by
  have dx := H.delta_typed KY KP hx mx
  have ddx := H.delta_typed KY KP dx.1 dx.2
  apply L.imp_intro_future (H.relational_formed.le_formula KY KP hi mi dx.1 dx.2)
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hi mi ddx.1 ddx.2)
  intro Δ δ e ht
  simp only [RelationalCode.le_rename,delta_rename] at ht
  simp only [ChannelCode.eval_rename,ProbeCode.carrier_rename,delta_rename]
  have hu' := hu.rename e
  simp only [RelationalCode.valid_rename] at hu'
  have hq' := hq.rename e
  simp only [diagonalQ_rename] at hq'
  have he' := he.rename e
  simp only [RelationalCode.extensional_rename] at he'
  exact (H.rename e).positive_shift_member (KY.rename e) (KP.rename e) (x_typed_rename (B := B) e hx) (e.moded mx)
    (xPred_typed_rename e hi) (e.moded mi) hu' hq' he' ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L28859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
