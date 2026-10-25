# lookup_decoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:707fcbc1-318f-d8be-c910-b64dacb8453e",
  "kind": "theorem",
  "lexical_name": "lookup_decoded",
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
  "slug": "lookup-decoded--9f5194d7b9e7409d5e178520",
  "source": {
    "blob": "f3756eeb0ec22e36c363e8cd91ce6787597e4d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5194d7b9e7409d5e17852051c8d3f698b0f6cd49a2c16b2cdb43816fcf0725",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:707fcbc1-318f-d8be-c910-b64dacb8453e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lookup_decoded {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) :
    (context.map decodeArrow)[index]? = some (decodeArrow type) := by
  induction lookup with
  | zero declared context => simp only [List.map_cons, List.getElem?_cons_zero, decode_rename]
  | succ declared lookup ih =>
      simpa only [List.map_cons, List.getElem?_cons_succ, decode_rename] using ih

/-- Conversion to a grammar type forces the actual valid-context declaration
to be that same grammar type, even for arbitrary source contexts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3756eeb0ec22e36c363e8cd91ce6787597e4d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
