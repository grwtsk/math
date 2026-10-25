# CheckedTrial.kernel_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ec974cc6302a27acf8f818717f7a8b72a48aa6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a4f1254-8f44-d171-c189-9192562711e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ebb353a-f90c-6fb4-e5ce-1ca817448795",
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
  "slug": "checkedtrial-kernel-proof--6234309c197fd66aa305c840",
  "source": {
    "blob": "4ec974cc6302a27acf8f818717f7a8b72a48aa6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6234309c197fd66aa305c8400f019ebc37e7d0e222d4b9a990fd2e44b2e24c18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ebb353a-f90c-6fb4-e5ce-1ca817448795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–79.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec974cc6302a27acf8f818717f7a8b72a48aa6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
