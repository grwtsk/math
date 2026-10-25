# Expr.applyPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f39043260ea81762767407f0ee3e1ea1896bedc6c4c87a3a1038bcfcfd9969b",
  "kind": "def",
  "lexical_name": "Expr.applyPerm",
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
  "slug": "expr-applyperm--e6f7d3d53ced2016e0031f53",
  "source": {
    "blob": "14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6f7d3d53ced2016e0031f53780e2b641db4733bdd9c0e82cbe968c294ea2e35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f39043260ea81762767407f0ee3e1ea1896bedc6c4c87a3a1038bcfcfd9969b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Expr.applyPerm (perm : Lean.Perm) (e : Expr) : Expr :=
  go e
where
  go : Expr → Expr
    | .num v    => .num v
    | .var i    => .var (perm[(i : Nat)]?.getD i)
    | .neg a    => .neg (go a)
    | .add a b  => .add (go a) (go b)
    | .sub a b  => .sub (go a) (go b)
    | .mulL k a => .mulL k (go a)
    | .mulR a k => .mulR (go a) k

deriving instance Repr for Poly
deriving instance Repr for Expr

end Int.Internal.Linear

namespace Lean.Meta.Simp.Arith.Int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
