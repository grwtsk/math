# modulesSucceeded_append_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "907bb1f003889b543979dd28aeaf1734382f0c9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a680d136-a259-d3e1-1a4c-4fdebc85a20f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b78db14e-4ddb-7be1-242a-6649e973c1a9",
  "kind": "theorem",
  "lexical_name": "modulesSucceeded_append_comm",
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
  "slug": "modulessucceeded-append-comm--96ba33b758a597f3d84d9bb7",
  "source": {
    "blob": "907bb1f003889b543979dd28aeaf1734382f0c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 276,
    "path": "GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96ba33b758a597f3d84d9bb78cfcbe2fb0ebc53a0eb41f33b8f5948438c38378",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/ReplayTargetIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78db14e-4ddb-7be1-242a-6649e973c1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modulesSucceeded_append_comm (source : SourceIdentity)
    (required : List String) (left right : List ModuleTerminalOutcome) :
    ModulesSucceeded source required (left ++ right) ↔
      ModulesSucceeded source required (right ++ left) := by
  have reorder : ∀ (xs ys : List ModuleTerminalOutcome),
      ModulesSucceeded source required (xs ++ ys) →
        ModulesSucceeded source required (ys ++ xs) := by
    intro xs ys succeeded
    apply (modulesSucceeded_append_iff source required ys xs).mpr
    intro moduleName needed
    have fragmented := (modulesSucceeded_append_iff source required xs ys).mp
      succeeded moduleName needed
    cases fragmented with
    | inl leftPass => exact Or.inr ⟨leftPass.2, leftPass.1⟩
    | inr rightPass => exact Or.inl ⟨rightPass.2, rightPass.1⟩
  exact ⟨reorder left right, reorder right left⟩

namespace FragmentFixtures

/-- Two individually complete one-key PASS fragments fail after concatenation.
This is a pure predicate fixture, not a compiler or receipt acceptance test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/ReplayTargetIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907bb1f003889b543979dd28aeaf1734382f0c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
