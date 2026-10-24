# smoothSheaf.coeFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a08cad6f5226cf9046f96f20dcada9876d16910135564aa058ef5979e1a4f227",
  "kind": "instance",
  "lexical_name": "smoothSheaf.coeFun",
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
  "slug": "smoothsheaf-coefun--db458df14a65a536a8d88f60",
  "source": {
    "blob": "476f47d527c0d340cae23555ab99e7d80b527abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db458df14a65a536a8d88f60d58c2d9d3d3eb5320343aed507442efebc77c14e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a08cad6f5226cf9046f96f20dcada9876d16910135564aa058ef5979e1a4f227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smoothSheaf.coeFun (U : (Opens (TopCat.of M))ᵒᵖ) :
    CoeFun ((smoothSheaf IM I M N).presheaf.obj U) (fun _ ↦ ↑(unop U) → N) :=
  (contDiffWithinAt_localInvariantProp ∞).sheafHasCoeToFun _ _ _

open Manifold in
/-- The object of `smoothSheaf IM I M N` for the open set `U` in `M` is
`C^∞⟮IM, (unop U : Opens M); I, N⟯`, the `(IM, I)`-smooth functions from `U` to `N`.  This is not
just a "moral" equality but a literal and definitional equality! -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476f47d527c0d340cae23555ab99e7d80b527abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
