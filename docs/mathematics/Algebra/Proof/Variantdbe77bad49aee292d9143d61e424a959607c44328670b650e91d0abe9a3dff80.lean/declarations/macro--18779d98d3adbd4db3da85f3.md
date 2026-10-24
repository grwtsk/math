# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:285573a6b4a844bd5935f110c62b03700a22f61493011eee84e9f07f99e6142f",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--18779d98d3adbd4db3da85f3",
  "source": {
    "blob": "6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18779d98d3adbd4db3da85f35b9dea02c7f26673d3d8df758e5f1da3275b0412",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:285573a6b4a844bd5935f110c62b03700a22f61493011eee84e9f07f99e6142f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro "declare! " decls:ident a:ident : term =>
  `(do if let some x := (← get).$decls[$a]? then
         return x
       let x := mkFVar (← mkFreshFVarId);
       modify fun s => { s with $decls:ident := (s.$decls).insert $a x };
       return x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
