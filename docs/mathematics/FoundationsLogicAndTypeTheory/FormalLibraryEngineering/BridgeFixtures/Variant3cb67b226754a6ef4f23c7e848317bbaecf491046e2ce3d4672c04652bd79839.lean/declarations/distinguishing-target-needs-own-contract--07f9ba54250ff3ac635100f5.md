# distinguishing_target_needs_own_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "144f0d99e5401bdd8e470d279c7b0f3708fa79dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cb67b226754a6ef4f23c7e848317bbaecf491046e2ce3d4672c04652bd79839.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b434959a-67d9-d93f-ef84-03170dc6c392",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c86b53bf-44f3-e689-fbd7-6c8578ed41b5",
  "kind": "theorem",
  "lexical_name": "distinguishing_target_needs_own_contract",
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
  "slug": "distinguishing-target-needs-own-contract--07f9ba54250ff3ac635100f5",
  "source": {
    "blob": "144f0d99e5401bdd8e470d279c7b0f3708fa79dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant3cb67b226754a6ef4f23c7e848317bbaecf491046e2ce3d4672c04652bd79839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f9ba54250ff3ac635100f5d7fa25b51d3d9072ebae897c2053c59beb8e05d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant3cb67b226754a6ef4f23c7e848317bbaecf491046e2ce3d4672c04652bd79839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86b53bf-44f3-e689-fbd7-6c8578ed41b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinguishing_target_needs_own_contract :
    ¬ equivalenceGraph.TargetInvariant (fun x : Bool => x) := by
  intro h
  have := equivalenceGraph.leaf_transport_preserves_targets (fun x : Bool => x)
    h proved_equivalence_same_leaf
  exact Bool.false_ne_true this

end FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant3cb67b226754a6ef4f23c7e848317bbaecf491046e2ce3d4672c04652bd79839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant3cb67b226754a6ef4f23c7e848317bbaecf491046e2ce3d4672c04652bd79839.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `144f0d99e5401bdd8e470d279c7b0f3708fa79dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
