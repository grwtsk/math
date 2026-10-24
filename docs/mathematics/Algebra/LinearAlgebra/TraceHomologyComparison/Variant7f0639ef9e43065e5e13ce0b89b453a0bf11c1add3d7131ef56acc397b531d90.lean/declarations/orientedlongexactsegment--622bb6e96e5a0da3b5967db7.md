# OrientedLongExactSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa2c1d6fd8e91c69ea5f2e83cff1905b666256e7bccb259545b19c144d6421b2",
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
  "slug": "orientedlongexactsegment--622bb6e96e5a0da3b5967db7",
  "source": {
    "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:622bb6e96e5a0da3b5967db7e4b0c4f1377860396d62bbfa0006a3505ecd3484",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa2c1d6fd8e91c69ea5f2e83cff1905b666256e7bccb259545b19c144d6421b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–118.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
