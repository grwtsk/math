# exprJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d4e2514824dd1e886e862becdc4daa55b479b5721f989458cb8fd4f052389ca",
  "kind": "def",
  "lexical_name": "exprJson",
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
  "slug": "exprjson--c33c109246382ab8ab31dffd",
  "source": {
    "blob": "eccac469d4999b22149ae7ab846af35fc7c53b93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c33c109246382ab8ab31dffda95ed4de193bda02a4077b5df6f95be3c7cd0e00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d4e2514824dd1e886e862becdc4daa55b479b5721f989458cb8fd4f052389ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exprJson (expression : Expr) (depth : Nat := 0) : Json :=
  if depth ≥ 64 then
    Json.mkObj [("kind", toJson "depthLimit")]
  else
    let child := fun expression => exprJson expression (depth + 1)
    match expression with
    | .bvar index =>
        Json.mkObj [("kind", toJson "boundVariable"), ("index", toJson index)]
    | .fvar identifier =>
        Json.mkObj [
          ("kind", toJson "freeVariable"),
          ("name", toJson identifier.name.toString)
        ]
    | .mvar identifier =>
        Json.mkObj [
          ("kind", toJson "metavariable"),
          ("name", toJson identifier.name.toString)
        ]
    | .sort level =>
        Json.mkObj [("kind", toJson "sort"), ("level", toJson (toString level))]
    | .const name levels =>
        Json.mkObj [
          ("kind", toJson "constant"),
          ("name", toJson name.toString),
          ("levels", toJson (levels.map toString))
        ]
    | .app function argument =>
        Json.mkObj [
          ("kind", toJson "application"),
          ("children", Json.arr #[child function, child argument])
        ]
    | .lam name type body binderInfo =>
        Json.mkObj [
          ("kind", toJson "lambda"),
          ("name", toJson name.toString),
          ("binderInfo", toJson (binderInfoName binderInfo)),
          ("children", Json.arr #[child type, child body])
        ]
    | .forallE name domain body binderInfo =>
        Json.mkObj [
          ("kind", toJson "forall"),
          ("name", toJson name.toString),
          ("binderInfo", toJson (binderInfoName binderInfo)),
          ("children", Json.arr #[child domain, child body])
        ]
    | .letE name type value body nondep =>
        Json.mkObj [
          ("kind", toJson "let"),
          ("name", toJson name.toString),
          ("nondependent", toJson nondep),
          ("children", Json.arr #[child type, child value, child body])
        ]
    | .lit _ =>
        Json.mkObj [("kind", toJson "literal")]
    | .mdata _ body =>
        Json.mkObj [
          ("kind", toJson "metadata"),
          ("children", Json.arr #[child body])
        ]
    | .proj typeName index structureExpression =>
        Json.mkObj [
          ("kind", toJson "projection"),
          ("typeName", toJson typeName.toString),
          ("index", toJson index),
          ("children", Json.arr #[child structureExpression])
        ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccac469d4999b22149ae7ab846af35fc7c53b93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
