# evalArrayStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8955f346f59b794c4d80453213d77b4c5175d964eae055e607e6715e5bdabae0",
  "kind": "def",
  "lexical_name": "evalArrayStx",
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
  "slug": "evalarraystx--a20f7f34dc32a51374b75330",
  "source": {
    "blob": "d359db6613b82b58c1285b56f6a24e76708e277c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant6b50de8f2b01e8dc6be44030ea9b1272ca373f2aa357d2b73cef60890d5faf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a20f7f34dc32a51374b75330828cd99adaedb0374f09b2521d889c29c2054e6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant6b50de8f2b01e8dc6be44030ea9b1272ca373f2aa357d2b73cef60890d5faf5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8955f346f59b794c4d80453213d77b4c5175d964eae055e607e6715e5bdabae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalArrayStx {α : Type} (typeExpr : Expr) (ev : Term → TermElabM (α × Expr)) : Term → TermElabM (Array α × Expr) :=
  evalTermWithInfo (Expr.app (Expr.const ``Array [0]) typeExpr) fun
  | `(#[$[$xs],*]) => do
    let (vs, es) := (← xs.mapM ev).unzip
    let e := es.foldr (init := Expr.app (Expr.const ``List.nil [0]) typeExpr) fun x e =>
      mkApp3 (Expr.const ``List.cons [0]) typeExpr x e
    return (vs, mkApp2 (Expr.const ``List.toArray [0]) typeExpr e)
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant6b50de8f2b01e8dc6be44030ea9b1272ca373f2aa357d2b73cef60890d5faf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant6b50de8f2b01e8dc6be44030ea9b1272ca373f2aa357d2b73cef60890d5faf5a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d359db6613b82b58c1285b56f6a24e76708e277c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
