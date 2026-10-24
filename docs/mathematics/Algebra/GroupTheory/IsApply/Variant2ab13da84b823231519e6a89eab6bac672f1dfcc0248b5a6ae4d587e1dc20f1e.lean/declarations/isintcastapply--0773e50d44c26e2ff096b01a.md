# IsIntCastApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16afee48c97f8591548317e37bf8716b0c29947772dd1766e14c3fa6fb3db780",
  "kind": "class",
  "lexical_name": "IsIntCastApply",
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
  "slug": "isintcastapply--0773e50d44c26e2ff096b01a",
  "source": {
    "blob": "d9b9b006192de57bc2a2777f8649a1ef631848f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 200,
    "path": "GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0773e50d44c26e2ff096b01ab32beb5c355bd1882ed6de8f55a34e40e9994f92",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16afee48c97f8591548317e37bf8716b0c29947772dd1766e14c3fa6fb3db780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsIntCastApply (F : Type*) (α : outParam Type*) [FunLike F α α] [IntCast F] [SMul Int α] where
  intCast_apply (n : Int) (x : α) : (n : F) x = n • x

@[simp, grind =]
alias intCast_apply := IsIntCastApply.intCast_apply

end Cast

end Def

namespace FunLike

variable {M F F' α β : Type*} [FunLike F α β] [FunLike F' α α]

section Coercion

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b9b006192de57bc2a2777f8649a1ef631848f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
