# alias_interpretation_is_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "688670cef0b8d8cf9f40267cf67fcd8f9972e04c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9aad0a4c-b8f2-d821-4b00-4f9b4d185da5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e56e0053-1668-f176-e1c6-a077ae2a5be2",
  "kind": "theorem",
  "lexical_name": "alias_interpretation_is_exact",
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
  "slug": "alias-interpretation-is-exact--5d720aeef27177c76b955235",
  "source": {
    "blob": "688670cef0b8d8cf9f40267cf67fcd8f9972e04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d720aeef27177c76b9552358e3b64f0369208309589652bdf156e5594b9b985",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e56e0053-1668-f176-e1c6-a077ae2a5be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alias_interpretation_is_exact :
    aliasExpression.interpret (fun _ => ()) = () := rfl

#check recursive_interpreter_preserves_tag
#check alias_expression_still_has_structural_leaves
#check alias_interpretation_is_exact

end FCRS.TheoremTransfer.Cycle7.InterpreterProofObjects
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `688670cef0b8d8cf9f40267cf67fcd8f9972e04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
