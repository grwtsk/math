# regularRepresentation_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d501631dcaa36963996b1c81b258054c1c4907e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bab0e0b-908b-782b-3efb-b3ed66efa343",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3272743f-950c-bf71-972d-f4ae7ba99c0c",
  "kind": "theorem",
  "lexical_name": "regularRepresentation_apply",
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
  "slug": "regularrepresentation-apply--7ec6adbc43638e6492b3f285",
  "source": {
    "blob": "6d501631dcaa36963996b1c81b258054c1c4907e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec6adbc43638e6492b3f2850f056b540fcaf0d2f21fd03f6a676cbc4c29152f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3272743f-950c-bf71-972d-f4ae7ba99c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularRepresentation_apply
    (b : Basis (Fin r) GF2 F)
    (a : F) :
    regularRepresentation b a = regularMatrix b a :=
  rfl

/--
The regular representation is faithful.  Equality of matrices gives equality
of the underlying linear maps, and evaluating the maps at `1` recovers the
field elements.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d501631dcaa36963996b1c81b258054c1c4907e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
