# InvariantProjectionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c04793b26c049beb099ff40621c7b9a603fcce750314bcba2512d675bfcf123",
  "kind": "structure",
  "lexical_name": "InvariantProjectionCertificate",
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
  "slug": "invariantprojectioncertificate--ff6840bbed9e76f5de93f908",
  "source": {
    "blob": "f27cc03d0eeb629db303aa8cac18480a3ba3781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6840bbed9e76f5de93f9087515bc197a255575c9cea78ff9f20578f6ba70cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c04793b26c049beb099ff40621c7b9a603fcce750314bcba2512d675bfcf123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvariantProjectionCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system) where
  algebra :
    FiniteMatrixStarAlgebra (Fin spectral.dim)
  algebraRepresentsCrossedProduct : Prop
  algebraRepresentsCrossedProductProof :
    algebraRepresentsCrossedProduct
  projection :
    Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  selfAdjoint :
    projection.IsHermitian
  idempotent :
    projection * projection = projection
  projection_mem :
    algebra.carrier projection
  operator_mem :
    ∀ state,
      algebra.carrier (spectral.operator state)
  commutesWithOperator :
    ∀ state,
      projection * spectral.operator state =
        spectral.operator state * projection
  mode : ReducedTraceMode
  central_if_required :
    mode.requiresCentrality →
      ∀ operator,
        algebra.carrier operator →
        projection * operator =
          operator * projection
  normalizationNonzero_if_required :
    mode.requiresNormalization →
      normalizedMatrixTrace
        (1 - projection) ≠ 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f27cc03d0eeb629db303aa8cac18480a3ba3781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
