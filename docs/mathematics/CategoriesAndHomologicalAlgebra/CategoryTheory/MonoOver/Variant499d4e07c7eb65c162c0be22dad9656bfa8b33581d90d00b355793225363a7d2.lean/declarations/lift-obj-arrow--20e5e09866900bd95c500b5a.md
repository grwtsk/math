# lift_obj_arrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01ed232e-5736-22fb-9420-5af38c08066d",
  "kind": "theorem",
  "lexical_name": "lift_obj_arrow",
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
  "slug": "lift-obj-arrow--20e5e09866900bd95c500b5a",
  "source": {
    "blob": "ee2d084bebf3dc65e40cfac6712752264b4632f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e5e09866900bd95c500b5a54115d5cd18fcfbbc37a35d6570d1c40037d58b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ed232e-5736-22fb-9420-5af38c08066d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_obj_arrow {Y : D} (F : Over Y ⥤ Over X)
    (h : ∀ f : MonoOver Y, Mono (F.obj ((MonoOver.forget Y).obj f)).hom) (f : MonoOver Y) :
    ((lift F h).obj f).arrow = (F.obj ((forget Y).obj f)).hom :=
  rfl

/-- Monomorphisms over an object `f : Over A` in an over category
are equivalent to monomorphisms over the source of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2d084bebf3dc65e40cfac6712752264b4632f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
