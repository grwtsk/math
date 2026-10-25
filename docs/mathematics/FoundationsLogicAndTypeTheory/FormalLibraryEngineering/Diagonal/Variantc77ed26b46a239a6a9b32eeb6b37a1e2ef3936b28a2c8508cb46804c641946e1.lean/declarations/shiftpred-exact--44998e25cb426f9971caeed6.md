# shiftPred_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dfbc7bb-8951-662e-8d50-666217462a30",
  "kind": "theorem",
  "lexical_name": "shiftPred_exact",
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
  "slug": "shiftpred-exact--44998e25cb426f9971caeed6",
  "source": {
    "blob": "05824c89348203f442239a609d1e1bf4bed1e2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 555,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44998e25cb426f9971caeed6577f29460b47791f93f75a1a21868fd9f13fef67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dfbc7bb-8951-662e-8d50-666217462a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftPred_exact {v x : Expr S}
    (hv : HasType P Γ v B.xPredType) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hr : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code v)) :
    Equivalent P Γ γ (B.relational.channel.eval B.relational.probe.carrier (B.shiftPred L.code
      KY.code KP.code v) x)
      (B.relational.channel.eval B.relational.probe.carrier v (B.delta L.code KY.code KP.code
        x)) := by
  have rx := H.relational_formed.channel.round_typed H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode hx mx
  have dx := H.delta_typed KY KP hx mx
  have dr := H.delta_typed KY KP rx.1 rx.2
  have iv := H.shiftPred_typed KY KP hv mv
  have ee := H.relational_formed.extensional_elim KY KP hv mv dx.1 dx.2 dr.1 dr.2 hr
    (H.delta_congr KY KP hx mx rx.1 rx.2 (H.relational_formed.xCompare_round KY KP hx mx))
  exact (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode iv.1 iv.2 hx mx).equivalent_trans
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
      H.relational_formed.probe.carrier_mode hv mv dr.1 dr.2)
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
      H.relational_formed.probe.carrier_mode hv mv dx.1 dx.2)
    (H.shiftPred_evaluation KY KP hv mv hx mx) ee.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05824c89348203f442239a609d1e1bf4bed1e2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
