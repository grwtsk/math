# OrientedLongExactSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846cb0bd271bc3eb8b3a2682e7226dd68e5a80533ae768f435d3e97cf3a1f564",
  "kind": "structure",
  "lexical_name": "OrientedLongExactSegment",
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
  "slug": "orientedlongexactsegment--e8dd42e3355f52f46c3137b4",
  "source": {
    "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8dd42e3355f52f46c3137b4714bcb3123ee54d16b25082305391a9fd5400ba3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846cb0bd271bc3eb8b3a2682e7226dd68e5a80533ae768f435d3e97cf3a1f564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedLongExactSegment
    (R : Type uH) [CommRing R]
    (BoundaryAtDegree TraceAtDegree RelativeAtDegree
      BoundaryAtPredecessor TraceAtPredecessor : Type uK)
    [AddCommGroup BoundaryAtDegree] [Module R BoundaryAtDegree]
    [AddCommGroup TraceAtDegree] [Module R TraceAtDegree]
    [AddCommGroup RelativeAtDegree] [Module R RelativeAtDegree]
    [AddCommGroup BoundaryAtPredecessor] [Module R BoundaryAtPredecessor]
    [AddCommGroup TraceAtPredecessor] [Module R TraceAtPredecessor] where
  boundaryInclusionAtDegree : BoundaryAtDegree →ₗ[R] TraceAtDegree
  absoluteToRelativePair : TraceAtDegree →ₗ[R] RelativeAtDegree
  outwardNormalConnecting : RelativeAtDegree →ₗ[R] BoundaryAtPredecessor
  boundaryInclusionIntoTrace : BoundaryAtPredecessor →ₗ[R] TraceAtPredecessor
  exact_at_trace :
    LinearMap.range boundaryInclusionAtDegree =
      LinearMap.ker absoluteToRelativePair
  exact_at_relative :
    LinearMap.range absoluteToRelativePair =
      LinearMap.ker outwardNormalConnecting
  exact_at_boundary :
    LinearMap.range outwardNormalConnecting =
      LinearMap.ker boundaryInclusionIntoTrace

/--
An `R`-linear homology semantics for the incoming and outgoing pairs of every
trace in a surgery theory.

The concrete model supplies an `OrientedLongExactSegment` in each *positive*
source degree.  The positivity witness prevents the degree-zero case from
silently interpreting truncated `0 - 1` as another degree-zero term.
The object families are not arbitrary neighbors: `AbsoluteHomology trace k`
is the homology of the supplied trace, `BoundaryHomology trace end_ k` is the
homology of its selected actual incoming or outgoing boundary manifold, and
`RelativeHomology trace end_ k` is the homology of that exact trace pair.
Consequently the supplied arrows are forced to have the types of the two
boundary inclusions, the absolute-to-relative pair morphism, and the
connecting boundary map.  The exposed `connecting` definition is
definitionally the segment's outward-normal-first arrow.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
