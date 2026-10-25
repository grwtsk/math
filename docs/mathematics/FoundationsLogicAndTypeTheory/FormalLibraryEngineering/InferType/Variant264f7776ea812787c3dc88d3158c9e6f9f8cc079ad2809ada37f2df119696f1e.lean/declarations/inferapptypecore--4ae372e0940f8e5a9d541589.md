# inferAppTypeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bfdfb3e5f182351faff3a4b64b16f6d1d2af597094b8b0638c615d034b1b4fe",
  "kind": "def",
  "lexical_name": "inferAppTypeCore",
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
  "slug": "inferapptypecore--4ae372e0940f8e5a9d541589",
  "source": {
    "blob": "cf0b45db1d34d2f68cbbc22c0f89513e48680efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ae372e0940f8e5a9d54158968f94a34569a1c0529f1cc2c488964a2a9ef6908",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bfdfb3e5f182351faff3a4b64b16f6d1d2af597094b8b0638c615d034b1b4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def inferAppTypeCore (fType : Expr) (args : Array (Arg .pure)) : InferTypeM Expr := do
    let mut j := 0
    let mut fType := fType
    for i in *...args.size do
      fType := fType.headBeta
      match fType with
      | .forallE _ _ b _ => fType := b
      | _ =>
        fType := instantiateRevRangeArgs fType j i args |>.headBeta
        match fType with
        | .forallE _ _ b _ => j := i; fType := b
        | _ => return anyExpr
    return instantiateRevRangeArgs fType j args.size args |>.headBeta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0b45db1d34d2f68cbbc22c0f89513e48680efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
