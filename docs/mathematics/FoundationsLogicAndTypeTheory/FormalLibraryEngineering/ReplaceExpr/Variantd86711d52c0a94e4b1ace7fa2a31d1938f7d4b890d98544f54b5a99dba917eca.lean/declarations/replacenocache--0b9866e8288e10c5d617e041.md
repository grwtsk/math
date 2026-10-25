# replaceNoCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e8177d12c39a8e8d0038c606cea760a6807c9b6636730ced09fd71dc070722f",
  "kind": "def",
  "lexical_name": "replaceNoCache",
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
  "slug": "replacenocache--0b9866e8288e10c5d617e041",
  "source": {
    "blob": "1d7a446ed131ebcf6f7cebafce8f4a42b72cb62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceExpr/Variantd86711d52c0a94e4b1ace7fa2a31d1938f7d4b890d98544f54b5a99dba917eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b9866e8288e10c5d617e0417f21dee3424b727b49e09cd333ce965c4b336b1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceExpr/Variantd86711d52c0a94e4b1ace7fa2a31d1938f7d4b890d98544f54b5a99dba917eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e8177d12c39a8e8d0038c606cea760a6807c9b6636730ced09fd71dc070722f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceNoCache (f? : Expr → Option Expr) (e : Expr) : Expr :=
  match f? e with
  | some eNew => eNew
  | none      => match e with
    | .forallE _ d b _ => let d := replaceNoCache f? d; let b := replaceNoCache f? b; e.updateForallE! d b
    | .lam _ d b _     => let d := replaceNoCache f? d; let b := replaceNoCache f? b; e.updateLambdaE! d b
    | .mdata _ b       => let b := replaceNoCache f? b; e.updateMData! b
    | .letE _ t v b _  => let t := replaceNoCache f? t; let v := replaceNoCache f? v; let b := replaceNoCache f? b; e.updateLetE! t v b
    | .app f a         => let f := replaceNoCache f? f; let a := replaceNoCache f? a; e.updateApp! f a
    | .proj _ _ b      => let b := replaceNoCache f? b; e.updateProj! b
    | e                => e

end Lean.Expr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceExpr/Variantd86711d52c0a94e4b1ace7fa2a31d1938f7d4b890d98544f54b5a99dba917eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceExpr/Variantd86711d52c0a94e4b1ace7fa2a31d1938f7d4b890d98544f54b5a99dba917eca.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7a446ed131ebcf6f7cebafce8f4a42b72cb62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
