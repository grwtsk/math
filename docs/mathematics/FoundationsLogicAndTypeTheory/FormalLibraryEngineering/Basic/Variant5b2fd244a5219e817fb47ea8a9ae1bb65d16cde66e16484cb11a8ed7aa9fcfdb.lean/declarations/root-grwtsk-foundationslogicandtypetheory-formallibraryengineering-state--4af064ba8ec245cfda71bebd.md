# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.Int.Internal.Linear.Poly.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a60b4c2fc72559370e9cfe50f65a5d7adfa2f27fa2c5adcc288bf4420266f2",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.Int.Internal.Linear.Poly.denoteExpr",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-state--4af064ba8ec245cfda71bebd",
  "source": {
    "blob": "860020d15b203eeb3a2fd7047cd4734278118fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4af064ba8ec245cfda71bebd3beb4be14042fe74387de67706f588aa3ba6993e",
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

Occurrence: `declaration:a1a60b4c2fc72559370e9cfe50f65a5d7adfa2f27fa2c5adcc288bf4420266f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.Int.Internal.Linear.Poly.denoteExpr (ctx : Nat → Expr) (p : Int.Internal.Linear.Poly) : MetaM Expr := do
  match p with
  | .num k => return toExpr k
  | .add 1 x p => go (ctx x) p
  | .add k x p => go (mkIntMul (toExpr k) (ctx x)) p
where
  go (r : Expr)  (p : Int.Internal.Linear.Poly) : MetaM Expr :=
    match p with
    | .num 0 => return r
    | .num k => return mkIntAdd r (toExpr k)
    | .add 1 x p => go (mkIntAdd r (ctx x)) p
    | .add k x p => go (mkIntAdd r (mkIntMul (toExpr k) (ctx x))) p

namespace ToLinear

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860020d15b203eeb3a2fd7047cd4734278118fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
