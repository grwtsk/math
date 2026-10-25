# outputKeys

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a68a659d15737831b98387bb34c74696385e7531389f1c51b14a2662689313b9",
  "kind": "def",
  "lexical_name": "outputKeys",
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
  "slug": "outputkeys--c60f62bb4252a9fe4e94bf30",
  "source": {
    "blob": "b9af39f7bab8929b4020ca69bc8abd01ea6118ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantdea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60f62bb4252a9fe4e94bf30a5d67fd1d915a1a2e5f1029ce837a0173852c381",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantdea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a68a659d15737831b98387bb34c74696385e7531389f1c51b14a2662689313b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def outputKeys (outputs : List Output) : List TargetKey :=
  outputs.map fun output => (output.area, output.path)

/-- The complete-plan wrapper freezes the literal table separately from the
observed table and checks an independently derived complete output inventory.
The derivation of `expectedOutputs` is an explicit frontend interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantdea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantdea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9af39f7bab8929b4020ca69bc8abd01ea6118ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
