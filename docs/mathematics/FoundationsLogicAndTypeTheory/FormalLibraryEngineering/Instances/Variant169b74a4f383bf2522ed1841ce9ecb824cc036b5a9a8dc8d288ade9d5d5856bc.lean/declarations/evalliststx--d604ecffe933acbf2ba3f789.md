# evalListStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfe073cc844ac746ad494745c1bb5ef9fb317a4abd7930e67438341c892e690e",
  "kind": "def",
  "lexical_name": "evalListStx",
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
  "slug": "evalliststx--d604ecffe933acbf2ba3f789",
  "source": {
    "blob": "07a5cb9fd2397d32fbbfd196ef2ce17fcae12c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d604ecffe933acbf2ba3f789fa432cd74bbb4ca97116b4154a296583f0d4cca8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfe073cc844ac746ad494745c1bb5ef9fb317a4abd7930e67438341c892e690e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalListStx {α : Type} (typeExpr : Expr) (ev : Term → TermElabM (α × Expr)) : Term → TermElabM (List α × Expr) :=
  evalTermWithInfo (Expr.app (Expr.const ``List [0]) typeExpr) fun
  | `([$[$xs],*]) => do
    let (vs, es) := (← xs.mapM ev).unzip
    let e := es.foldr (init := Expr.app (Expr.const ``List.nil [0]) typeExpr) fun x e =>
      mkApp3 (Expr.const ``List.cons [0]) typeExpr x e
    return (vs.toList, e)
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07a5cb9fd2397d32fbbfd196ef2ce17fcae12c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
