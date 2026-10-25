# host_receipt_arguments

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
      "line": 293,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ApplicationHostRefinement/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8d7604b-c5c8-baca-07a9-ee90e966be30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:361d325f-16a8-6f9a-526f-dcef8ba22cc5",
  "kind": "theorem",
  "lexical_name": "host_receipt_arguments",
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
  "slug": "host-receipt-arguments--695e0c0540372bdcbe9706b8",
  "source": {
    "blob": "cc9b82d30a9ca2fffd998b21b050143f4675afe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:695e0c0540372bdcbe9706b879dfc48f4a09ea212397e046edf108427f2d5203",
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

Occurrence: `result:361d325f-16a8-6f9a-526f-dcef8ba22cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem host_receipt_arguments {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (host context primitive reject).recordReceipt receipt state = .ok final) :
    primitive.recordReceipt context.journal receipt state.native = .ok final.native ∧ final.paths = state.paths := by
  simp only [host] at accepted
  cases called : primitive.recordReceipt context.journal receipt state.native with
  | error error => simp [called] at accepted
  | ok native =>
      have same : {state with native} = final := by simpa [called] using accepted
      subst final
      exact ⟨rfl,rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantd9ae7e9a0321a41ec04caca5c9b61d118e2e36372edade9e124df0589443310f.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9b82d30a9ca2fffd998b21b050143f4675afe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
