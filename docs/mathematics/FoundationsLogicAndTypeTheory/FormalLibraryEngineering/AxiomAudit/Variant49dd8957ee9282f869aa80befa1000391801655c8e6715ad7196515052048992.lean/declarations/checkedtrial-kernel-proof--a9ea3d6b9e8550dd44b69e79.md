# CheckedTrial.kernel_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b853c852dfb96f5f7686703879ff7516c8eea632",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fe083ab-8e94-e902-660b-bab13c9ed3bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d5c535a-8d6e-aa4f-b9af-48465c5bb69a",
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
  "slug": "checkedtrial-kernel-proof--a9ea3d6b9e8550dd44b69e79",
  "source": {
    "blob": "b853c852dfb96f5f7686703879ff7516c8eea632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ea3d6b9e8550dd44b69e7984c13527adbdde26a87b6f48783a69daddcf2267",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d5c535a-8d6e-aa4f-b9af-48465c5bb69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

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
  let moduleSurface := env.constants.toList |>.filter (fun entry => (env.getModuleIdxFor? entry.1).isNone) |>.map (fun entry => entry.1.toString ++ "\u001f" ++ (if entry.2.isAxiom then "axiom" else if entry.2.isTheorem then "theorem" else "declaration") ++ "\u001f" ++ toString entry.2.type) |>.mergeSort (· < ·)
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("declaration", toJson "Surface.Core.verifyStatementPreservation_sound"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications), ("isTheorem", toJson info.isTheorem), ("moduleDeclarationSurface", toJson moduleSurface)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b853c852dfb96f5f7686703879ff7516c8eea632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
