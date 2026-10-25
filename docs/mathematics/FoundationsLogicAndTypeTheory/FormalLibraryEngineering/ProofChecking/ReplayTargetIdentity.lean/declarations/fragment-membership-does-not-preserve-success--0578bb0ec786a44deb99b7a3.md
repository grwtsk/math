# fragment_membership_does_not_preserve_success

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
      "line": 620,
      "path": "GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c465b38-d1fe-39bd-ae47-53606b35f516",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba3206ab-a51a-f9cf-4a56-7d5fb99ae7f5",
  "kind": "theorem",
  "lexical_name": "fragment_membership_does_not_preserve_success",
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
  "slug": "fragment-membership-does-not-preserve-success--0578bb0ec786a44deb99b7a3",
  "source": {
    "blob": "907bb1f003889b543979dd28aeaf1734382f0c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 620,
    "path": "GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0578bb0ec786a44deb99b7a346352419163343de25dc4abf0a8ebcbb08a728e5",
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

Occurrence: `result:ba3206ab-a51a-f9cf-4a56-7d5fb99ae7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fragment_membership_does_not_preserve_success
    (source : SourceIdentity) (moduleName : String) :
    (∀ fragment : List ModuleTerminalOutcome,
      fragment ∈ [[passingOutcome source moduleName]] ↔
        fragment ∈ [[passingOutcome source moduleName],
          [passingOutcome source moduleName]]) ∧
      ModulesSucceeded source [moduleName]
        (combineModuleFragments [[passingOutcome source moduleName]]) ∧
      ¬ ModulesSucceeded source [moduleName]
        (combineModuleFragments [[passingOutcome source moduleName],
          [passingOutcome source moduleName]]) := by
  constructor
  · intro fragment
    simp
  · constructor
    · intro key needed
      have same : key = moduleName := by simpa using needed
      subst key
      simp [combineModuleFragments, matchingModuleOutcomes, passingOutcome]
    · intro succeeded
      have impossible := succeeded moduleName (by simp)
      simp [combineModuleFragments, matchingModuleOutcomes, passingOutcome] at impossible

end FragmentPermutationFixtures

namespace Fixtures

/-- Symbolic fixture tokens, NOT a checked Git checkout or actual receipt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/ReplayTargetIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907bb1f003889b543979dd28aeaf1734382f0c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
