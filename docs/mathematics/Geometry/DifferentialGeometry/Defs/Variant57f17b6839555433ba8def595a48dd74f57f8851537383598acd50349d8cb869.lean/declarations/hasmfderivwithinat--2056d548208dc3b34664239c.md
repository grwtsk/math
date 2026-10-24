# HasMFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08f3cffc0e656a2bf978c7eabcff3bccab999f9a0c27f0f0b15697df1381ba1c",
  "kind": "def",
  "lexical_name": "HasMFDerivWithinAt",
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
  "slug": "hasmfderivwithinat--2056d548208dc3b34664239c",
  "source": {
    "blob": "579ab3196cc8e592932491621d1a052b71d72708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 306,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2056d548208dc3b34664239c7beae5da6495c06a9ae93d507f61aff9be16089f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08f3cffc0e656a2bf978c7eabcff3bccab999f9a0c27f0f0b15697df1381ba1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasMFDerivWithinAt (f : M → M') (s : Set M) (x : M)
    (f' : TangentSpace I x →L[𝕜] TangentSpace I' (f x)) :=
  ContinuousWithinAt f s x ∧
    HasFDerivWithinAt (writtenInExtChartAt I I' x f)
      ((tangentSpaceCastModel I' (f x)) ∘L f' ∘L (tangentSpaceCastModel I x).symm)
      ((extChartAt I x).symm ⁻¹' s ∩ range I) ((extChartAt I x) x)

variable (I I') in
/-- `HasMFDerivAt I I' f x f'` indicates that the function `f` between manifolds
has, at the point `x`, the derivative `f'`. Here, `f'` is a continuous linear
map from the tangent space at `x` to the tangent space at `f x`.

We require continuity in the definition, as otherwise points close to `x` in `s` could be sent by
`f` outside of the chart domain around `f x`. Then the chart could do anything to the image points,
and in particular by coincidence `writtenInExtChartAt I I' x f` could be differentiable, while
this would not mean anything relevant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579ab3196cc8e592932491621d1a052b71d72708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
