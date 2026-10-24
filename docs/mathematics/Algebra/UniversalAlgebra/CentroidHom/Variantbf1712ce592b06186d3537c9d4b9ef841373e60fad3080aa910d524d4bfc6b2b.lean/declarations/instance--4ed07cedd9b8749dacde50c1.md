# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab72596ce54dab86295d989f6d9e6a733d88ffc72875f602f10d92748d9e97e8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4ed07cedd9b8749dacde50c1",
  "source": {
    "blob": "821f79fc85719a936fb1a6788f3424f278385b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ed07cedd9b8749dacde50c1b70ddcba0cfad649d8ee6803d9e41e74781808b8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab72596ce54dab86295d989f6d9e6a733d88ffc72875f602f10d92748d9e97e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Star (CentroidHom α) where
  star f :=
  { toFun := fun a => star (f (star a))
    map_zero' := by
      simp only [star_zero, map_zero]
    map_add' := fun a b => by simp only [star_add, map_add]
    map_mul_left' := fun a b => by simp only [star_mul, map_mul_right, star_star]
    map_mul_right' := fun a b => by simp only [star_mul, map_mul_left, star_star] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821f79fc85719a936fb1a6788f3424f278385b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
