# fixedPointEquivGraphDiagonalIntersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17ed4cd4fd90d88e144c634cafa458ab61d9f4f848e6bc80974b9c90e4a0becc",
  "kind": "def",
  "lexical_name": "fixedPointEquivGraphDiagonalIntersection",
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
  "slug": "fixedpointequivgraphdiagonalintersection--c857bcd2b42c6c2551a6422e",
  "source": {
    "blob": "4f8b2f9208a4ae8f4fd0a2e934bb14e0a65e1e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 216,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c857bcd2b42c6c2551a6422e42b28842f2aa11384dfbf574ad5e5f7b3f8d78b7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17ed4cd4fd90d88e144c634cafa458ab61d9f4f848e6bc80974b9c90e4a0becc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedPointEquivGraphDiagonalIntersection {Point : Type*}
    (dynamics : Point → Point) :
    FixedPoint dynamics ≃ GraphDiagonalIntersection dynamics where
  toFun point :=
    ⟨diagonalSection point.1, point.2.symm, rfl⟩
  invFun point :=
    ⟨point.1.1, point.2.1.symm.trans point.2.2.symm⟩
  left_inv point := by
    apply Subtype.ext
    rfl
  right_inv point := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · exact point.2.2

/-- Every point is fixed by the identity endomap. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f8b2f9208a4ae8f4fd0a2e934bb14e0a65e1e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
