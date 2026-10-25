# probe_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c92e6925-ef22-f0b7-1c56-95d91f769f00",
  "kind": "theorem",
  "lexical_name": "probe_exact",
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
  "slug": "probe-exact--f2e5aa3cdc4b8c45bfca0885",
  "source": {
    "blob": "cccb4039dc0f871b97a118e81bc5316902aebfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 865,
    "line": 845,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e5aa3cdc4b8c45bfca088574c34ca91d18814472e986a3e714c85bb7114470",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92e6925-ef22-f0b7-1c56-95d91f769f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–865.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probe_exact {i y : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hex : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code i)) :
    Equivalent P Γ γ (B.diamond L.code KY.code KP.code (B.relational.probeFor L.code KY.code
      KP.code i) y)
      (B.relational.channel.eval B.relational.probe.carrier i (B.lift L.code KY.code KP.code
        y)) := by
  have hr := H.round_typed hy my
  have hlr := H.lift_typed KY KP hr.1 hr.2
  have hl := H.lift_typed KY KP hy my
  have hz := H.relational_formed.probeFor_typed KY KP hi mi
  have ee := H.relational_formed.extensional_elim KY KP hi mi hlr.1 hlr.2 hl.1 hl.2 hex
    (H.lift_congr KY KP hr.1 hr.2 hy my (H.round_relation KY KP hy my))
  have fr := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode hi mi hlr.1 hlr.2
  have fy := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode hi mi hl.1 hl.2
  exact (H.diamond_formula KY KP hz.1 hz.2 hy my).equivalent_trans fr fy (H.probe_rounded KY
    KP hi mi hy my) ee

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccb4039dc0f871b97a118e81bc5316902aebfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
