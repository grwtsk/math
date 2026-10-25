# ofLinearExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce96b16c82f7e6a2be7bdb840eef6a6aa4f0830600f8567cc8e8da018e480a90",
  "kind": "def",
  "lexical_name": "ofLinearExpr",
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
  "slug": "oflinearexpr--625a710bd1e28ea77008fb58",
  "source": {
    "blob": "860020d15b203eeb3a2fd7047cd4734278118fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:625a710bd1e28ea77008fb587d79e308a35c52bcf1a5d109dbc196882f8e01eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce96b16c82f7e6a2be7bdb840eef6a6aa4f0830600f8567cc8e8da018e480a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofLinearExpr (e : Int.Internal.Linear.Expr) : Expr :=
  open Int.Internal.Linear.Expr in
  match e with
  | .num v    => mkApp (mkConst ``num) (toExpr v)
  | .var i    => mkApp (mkConst ``var) (mkNatLit i)
  | .neg a    => mkApp (mkConst ``neg) (ofLinearExpr a)
  | .add a b  => mkApp2 (mkConst ``add) (ofLinearExpr a) (ofLinearExpr b)
  | .sub a b  => mkApp2 (mkConst ``sub) (ofLinearExpr a) (ofLinearExpr b)
  | .mulL k a => mkApp2 (mkConst ``mulL) (toExpr k) (ofLinearExpr a)
  | .mulR a k => mkApp2 (mkConst ``mulR) (ofLinearExpr a) (toExpr k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860020d15b203eeb3a2fd7047cd4734278118fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
