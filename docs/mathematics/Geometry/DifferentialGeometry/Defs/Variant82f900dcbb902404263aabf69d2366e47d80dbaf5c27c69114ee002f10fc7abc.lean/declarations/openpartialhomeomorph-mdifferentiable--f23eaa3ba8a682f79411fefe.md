# OpenPartialHomeomorph.MDifferentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7c44f9324fa3e4502f06103b8136472524cdea3c11babf0be23b806b38c7cc",
  "kind": "def",
  "lexical_name": "OpenPartialHomeomorph.MDifferentiable",
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
  "slug": "openpartialhomeomorph-mdifferentiable--f23eaa3ba8a682f79411fefe",
  "source": {
    "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 283,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f23eaa3ba8a682f79411fefec327dd265eb3729c0b2ec50706e0c282c0118a6b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7c44f9324fa3e4502f06103b8136472524cdea3c11babf0be23b806b38c7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OpenPartialHomeomorph.MDifferentiable (f : OpenPartialHomeomorph M M') :=
  MDifferentiableOn I I' f f.source ∧ MDifferentiableOn I' I f.symm f.target

variable (I I') in
/-- `HasMFDerivWithinAt I I' f s x f'` indicates that the function `f` between manifolds
has, at the point `x` and within the set `s`, the derivative `f'`. Here, `f'` is a continuous linear
map from the tangent space at `x` to the tangent space at `f x`.

This is a generalization of `HasFDerivWithinAt` to manifolds (as indicated by the prefix `m`).
The order of arguments is changed as the type of the derivative `f'` depends on the choice of `x`.

We require continuity in the definition, as otherwise points close to `x` in `s` could be sent by
`f` outside of the chart domain around `f x`. Then the chart could do anything to the image points,
and in particular by coincidence `writtenInExtChartAt I I' x f` could be differentiable, while
this would not mean anything relevant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a5df6a2c9d5199fc0b85f34a824e029a40551f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
