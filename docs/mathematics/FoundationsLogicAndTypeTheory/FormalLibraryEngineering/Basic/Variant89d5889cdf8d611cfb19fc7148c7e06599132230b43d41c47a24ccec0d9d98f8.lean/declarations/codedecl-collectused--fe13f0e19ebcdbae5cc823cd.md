# CodeDecl.collectUsed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:465367df1d1c0ce32d82aac0c93c4e197f49f98d553f39c9bc0aacbdfdd59444",
  "kind": "def",
  "lexical_name": "CodeDecl.collectUsed",
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
  "slug": "codedecl-collectused--fe13f0e19ebcdbae5cc823cd",
  "source": {
    "blob": "c371cf773f9bfea2c1daa81d460c728223aafab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1204,
    "line": 1185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe13f0e19ebcdbae5cc823cdb6a189afaa1baa21309fb232ef804b932afaa851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:465367df1d1c0ce32d82aac0c93c4e197f49f98d553f39c9bc0aacbdfdd59444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1185–1204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CodeDecl.collectUsed (codeDecl : CodeDecl pu) (s : FVarIdHashSet := ∅) : FVarIdHashSet :=
  match codeDecl with
  | .let decl => collectLetValue decl.value <| collectType decl.type s
  | .jp decl | .fun decl _ => decl.collectUsed s
  | .sset (fvarId := fvarId) (y := y) .. | .uset (fvarId := fvarId) (y := y) .. =>
    s.insert fvarId |>.insert y
  | .oset (fvarId := fvarId) (y := y) .. =>
    let s := s.insert fvarId
    if let .fvar y := y then s.insert y else s
  | .inc (fvarId := fvarId) .. | .dec (fvarId := fvarId) .. | .setTag (fvarId := fvarId) ..
  | .del (fvarId := fvarId) .. => s.insert fvarId

/--
Traverse the given block of potentially mutually recursive functions
and mark a declaration `f` as recursive if there is an application
`f ...` in the block.
This is an overapproximation, and relies on the fact that our frontend
computes strongly connected components.
See comment at `recursive` field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean#L1185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c371cf773f9bfea2c1daa81d460c728223aafab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
