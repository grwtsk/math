# rPred_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1981a318-23b8-0ccb-fdec-21f4a0fcf501",
  "kind": "theorem",
  "lexical_name": "rPred_evaluation",
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
  "slug": "rpred-evaluation--7265287a4916873ccf298a0c",
  "source": {
    "blob": "b5f21e36507710d4ab09326615af7cc30053d552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2000,
    "line": 1987,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7265287a4916873ccf298a0c38a28136afb6f63448ddc4ace38643f5c66d6ef5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1981a318-23b8-0ccb-fdec-21f4a0fcf501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1987–2000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rPred_evaluation {v x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data) :
    Equivalent P Γ γ (B.relational.channel.eval B.relational.probe.carrier (B.rPred L.code
      KY.code KP.code v) x)
      (B.rPredStep L.code KY.code KP.code v (B.relational.channel.round
        B.relational.probe.carrier x)) := by
  obtain ⟨s,hs⟩ := H.relational_formed.probe.funTriple.domain.1
  have he := H.relational_formed.channel.pred_evaluation
    H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode
    (H.rPredBody_family KY KP hv mv) (H.relational_formed.probe.raw.sorted
      H.relational_formed.probe.carrier_sorted s hs) hx mx
  simpa only [rPredBody_instantiate,rPred] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean#L1987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f21e36507710d4ab09326615af7cc30053d552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
