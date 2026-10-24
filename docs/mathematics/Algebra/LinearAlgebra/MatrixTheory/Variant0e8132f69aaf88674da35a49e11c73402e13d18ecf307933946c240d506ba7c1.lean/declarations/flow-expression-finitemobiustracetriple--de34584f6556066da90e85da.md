# Flow.Expression.finiteMobiusTraceTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:509916da6d57d623f491cdbaec6f4c8546a6d2b766b1312e83c7a1ec12936715",
  "kind": "def",
  "lexical_name": "Flow.Expression.finiteMobiusTraceTriple",
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
  "slug": "flow-expression-finitemobiustracetriple--de34584f6556066da90e85da",
  "source": {
    "blob": "ed978317263c34ccc03e51d12a7f49335f560770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de34584f6556066da90e85da9289c92b9319030edd0f9e8212bd4e7e58e2855d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:509916da6d57d623f491cdbaec6f4c8546a6d2b766b1312e83c7a1ec12936715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.finiteMobiusTraceTriple
    (t : Flow.Expression α) :
    Flow.FiniteMobiusTraceTriple α where
  nodes := Flow.Expression.nodeCount t
  matrix := Flow.Expression.mobiusMatrix t
  determinant := Flow.UnitDeterminantCertificate.treeMobius
  midpointBalance :=
    Flow.MidpointBalanceMetadata.standard
  tree := t

/-- The matrix component of the finite Möbius triple is the Möbius matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed978317263c34ccc03e51d12a7f49335f560770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
