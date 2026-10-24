# finiteCrossedProductStableTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f55d5aaca121d15445eafff8c4d9154f0d0ed63097fe16c7ef2dfe696c732db3",
  "kind": "def",
  "lexical_name": "finiteCrossedProductStableTrace",
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
  "slug": "finitecrossedproductstabletrace--3275d745edb1122410b9edba",
  "source": {
    "blob": "14a349cbc11f83ee2f58f90029a54662972e0054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 27,
    "path": "GRWTSK/Algebra/FiniteCrossedProduct/Variant59b3ed21faa47f60e2aa0e3de5ba2be293cb44fddac65b080c1ce46ba776b93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3275d745edb1122410b9edbabc5d54b4c2ee1cec0611f096d5ca97ec530a5062",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteCrossedProduct/Variant59b3ed21faa47f60e2aa0e3de5ba2be293cb44fddac65b080c1ce46ba776b93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f55d5aaca121d15445eafff8c4d9154f0d0ed63097fe16c7ef2dfe696c732db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteCrossedProductStableTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    StableInvariantTrace cut.Algebra where
  unit :=
    matrixFiberCrossedProductUnit
      cut.Automorphism
      cut.closure.spectral.dim
  multiply :=
    matrixFiberCrossedProductMultiply
      cut.closure.matrixFiberCrossedProduct.fiberAction
  star :=
    matrixFiberCrossedProductStar
      cut.closure.matrixFiberCrossedProduct.fiberAction
  trace :=
    canonicalMatrixFiberCrossedProductTrace
  normalized :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceNormalized
  cyclic :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceCyclic
  starPreserving :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceStar
  positiveReal :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveReal
  positiveImaginaryZero :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveImaginaryZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteCrossedProduct/Variant59b3ed21faa47f60e2aa0e3de5ba2be293cb44fddac65b080c1ce46ba776b93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteCrossedProduct/Variant59b3ed21faa47f60e2aa0e3de5ba2be293cb44fddac65b080c1ce46ba776b93e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a349cbc11f83ee2f58f90029a54662972e0054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
