# nestedTaggedExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:328da2b6b27a501d669412bb1727059258c7f5884f67b28c758437d593e2e263",
  "kind": "def",
  "lexical_name": "nestedTaggedExpression",
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
  "slug": "nestedtaggedexpression--a7dba756796022661ae89984",
  "source": {
    "blob": "688670cef0b8d8cf9f40267cf67fcd8f9972e04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7dba756796022661ae89984ce076df885096ea4bda303b6e16c5d7b389e2987",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:328da2b6b27a501d669412bb1727059258c7f5884f67b28c758437d593e2e263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nestedTaggedExpression : MultiSourceInferenceExpression Bool
    taggedSourceProposition True :=
  .inference
    (PremiseIndex := Unit)
    (premiseProposition := fun _ => True)
    (version "nested-tagged-rule")
    (fun _ => .source false)
    (fun proofs => proofs ())

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `688670cef0b8d8cf9f40267cf67fcd8f9972e04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
