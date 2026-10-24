# toType_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc85ea4716e122354bde1d354d80654a1f7ad2ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f82a3522-9f8f-ace8-5ad7-96b63bbd4404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f69a88e-315a-0241-9b55-7969c65e9b57",
  "kind": "theorem",
  "lexical_name": "toType_isSheaf",
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
  "slug": "totype-issheaf--806cb77d8dc52652f7d123d4",
  "source": {
    "blob": "bc85ea4716e122354bde1d354d80654a1f7ad2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:806cb77d8dc52652f7d123d48e67c754377ac9aa2f141129a8ec9636418f4579",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SheafOfFunctions/Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f69a88e-315a-0241-9b55-7969c65e9b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toType_isSheaf (T : Type*) : (presheafToType X T).IsSheaf :=
  toTypes_isSheaf X fun _ => T

end TopCat.Presheaf

namespace TopCat

/-- The sheaf of not-necessarily-continuous functions on `X` with values in type family
`T : X → Type u`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SheafOfFunctions/Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc85ea4716e122354bde1d354d80654a1f7ad2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
