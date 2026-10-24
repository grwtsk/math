# restrictStalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3901e3544ecd6bfdbcc6dc2b230df312df9237742bae68b260000503d6a1b32",
  "kind": "def",
  "lexical_name": "restrictStalkIso",
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
  "slug": "restrictstalkiso--b77c71b835cd09c54f8206b9",
  "source": {
    "blob": "c4752822f1559fc8296adb1ec55b018763baa8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b77c71b835cd09c54f8206b918c01036773bb8e66b09b6997d60d85635a22862",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3901e3544ecd6bfdbcc6dc2b230df312df9237742bae68b260000503d6a1b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictStalkIso {U : TopCat} (X : PresheafedSpace.{_, _, v} C) {f : U ⟶ (X : TopCat.{v})}
    (h : IsOpenEmbedding f) (x : U) : (X.restrict h).presheaf.stalk x ≅ X.presheaf.stalk (f x) :=
  haveI := initial_of_adjunction (h.isOpenMap.adjunctionNhds x)
  Final.colimitIso (h.isOpenMap.functorNhds x).op ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf)
  -- As a left adjoint, the functor `h.is_open_map.functor_nhds x` is initial.
  -- Typeclass resolution knows that the opposite of an initial functor is final. The result
  -- follows from the general fact that postcomposing with a final functor doesn't change colimits.

-- Porting note (https://github.com/leanprover-community/mathlib4/issues/11119): removed `simp` attribute, for left hand side is not in simple normal form.
@[elementwise, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4752822f1559fc8296adb1ec55b018763baa8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
