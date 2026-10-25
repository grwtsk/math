# replaceLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9654bccb10ea441e7fdb4f86dd065bdee43a15abfbd50517a6b7cd872dc14e92",
  "kind": "def",
  "lexical_name": "replaceLevel",
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
  "slug": "replacelevel--9a2aa3d280ed4412e6a4bab5",
  "source": {
    "blob": "8cc5a28fb61baf2ab3e7d6303bee52a7e9a0bfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a2aa3d280ed4412e6a4bab5838bb004dbfeb96f4b1543a626071ea65a3b874e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9654bccb10ea441e7fdb4f86dd065bdee43a15abfbd50517a6b7cd872dc14e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def replaceLevel (f? : Level → Option Level) : Expr → Expr
  | e@(Expr.forallE _ d b _)   => let d := replaceLevel f? d; let b := replaceLevel f? b; e.updateForallE! d b
  | e@(Expr.lam _ d b _)       => let d := replaceLevel f? d; let b := replaceLevel f? b; e.updateLambdaE! d b
  | e@(Expr.mdata _ b)         => let b := replaceLevel f? b; e.updateMData! b
  | e@(Expr.letE _ t v b _)    => let t := replaceLevel f? t; let v := replaceLevel f? v; let b := replaceLevel f? b; e.updateLetE! t v b
  | e@(Expr.app f a)           => let f := replaceLevel f? f; let a := replaceLevel f? a; e.updateApp! f a
  | e@(Expr.proj _ _ b)        => let b := replaceLevel f? b; e.updateProj! b
  | e@(Expr.sort u)            => e.updateSort! (u.replace f?)
  | e@(Expr.const _ us)        => e.updateConst! (us.map (Level.replace f?))
  | e                          => e

end Expr
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc5a28fb61baf2ab3e7d6303bee52a7e9a0bfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
