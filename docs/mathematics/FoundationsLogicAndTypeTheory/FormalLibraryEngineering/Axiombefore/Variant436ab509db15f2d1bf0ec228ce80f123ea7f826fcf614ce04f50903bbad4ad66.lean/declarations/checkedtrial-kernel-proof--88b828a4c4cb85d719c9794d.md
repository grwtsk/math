# CheckedTrial.kernel_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7aadd9d-bc01-0660-a676-e4a6ecb5257a",
  "kind": "theorem",
  "lexical_name": "CheckedTrial.kernel_proof",
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
  "slug": "checkedtrial-kernel-proof--88b828a4c4cb85d719c9794d",
  "source": {
    "blob": "6b2afe12d5ba51ba0b80f55db4bcb9daea0def91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b828a4c4cb85d719c9794dc57f72783b20c7353c752ae941b64157dcfc63e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7aadd9d-bc01-0660-a676-e4a6ecb5257a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CheckedTrial.kernel_proof (trial : CheckedTrial) :
    trial.task.proposition :=
  trial.checkedProof

end Surface.Core


open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Surface.Core.verifyStatementPreservation_sound
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Surface.Core.verifyStatementPreservation_sound
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2afe12d5ba51ba0b80f55db4bcb9daea0def91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
