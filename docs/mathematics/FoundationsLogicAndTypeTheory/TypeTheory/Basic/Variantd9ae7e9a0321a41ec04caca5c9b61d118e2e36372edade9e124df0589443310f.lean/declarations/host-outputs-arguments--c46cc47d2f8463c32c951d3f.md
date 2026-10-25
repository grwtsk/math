# host_outputs_arguments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc9b82d30a9ca2fffd998b21b050143f4675afe9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ApplicationHostRefinement/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96bca433-4b80-760c-f3b6-668672ce82d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e49ff1ef-f5dc-c9ed-9d0a-f7f8bf85c04a",
  "kind": "theorem",
  "lexical_name": "host_outputs_arguments",
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
  "slug": "host-outputs-arguments--c46cc47d2f8463c32c951d3f",
  "source": {
    "blob": "cc9b82d30a9ca2fffd998b21b050143f4675afe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c46cc47d2f8463c32c951d3fc61435aa8c70d55b15288bf308df3b87bbcdfefa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49ff1ef-f5dc-c9ed-9d0a-f7f8bf85c04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem host_outputs_arguments {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (host context primitive reject).verifyOutputs state = .ok (receipt,final)) :
    primitive.verifyOutputs context.plan context.journal state.native = .ok (receipt,final.native) ∧ final.paths = state.paths := by
  simp only [host] at accepted
  cases called : primitive.verifyOutputs context.plan context.journal state.native with
  | error error => simp [called] at accepted
  | ok pair =>
      rcases pair with ⟨observed,native⟩
      have same : observed = receipt ∧ {state with native} = final := by simpa [called] using accepted
      rcases same with ⟨rfl,rfl⟩
      exact ⟨rfl,rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9b82d30a9ca2fffd998b21b050143f4675afe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
