# checkedWpLaurentPolynomialV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a7afcb887b8b40059ccd79a04a3a55feb642d2e2b07cc525e6b6d8803dfe4d1",
  "kind": "def",
  "lexical_name": "checkedWpLaurentPolynomialV1",
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
  "slug": "checkedwplaurentpolynomialv1--598af6fb00fb924fff0ed611",
  "source": {
    "blob": "e837c8786d24459b908b193c065d037913da204b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:598af6fb00fb924fff0ed61172e9f90b16f74b9eaba3d96ef74a082c366f6a5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a7afcb887b8b40059ccd79a04a3a55feb642d2e2b07cc525e6b6d8803dfe4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def checkedWpLaurentPolynomialV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) :
    Option ComplexFixedV1 := do
  let scaleRaw := z.scaleRaw
  let z2 ← checkedComplexMulFixedV1 z z scaleRaw
  let z4 ← checkedComplexMulFixedV1 z2 z2 scaleRaw
  let z6 ← checkedComplexMulFixedV1 z4 z2 scaleRaw
  let inverseSquare ← checkedInverseSquareFixedV1 z scaleRaw
  let g2z2 ← checkedScaledRealTermV1 g2Raw z2 scaleRaw 20
  let g3z4 ← checkedScaledRealTermV1 g3Raw z4 scaleRaw 28
  let g2SquaredZ6 ←
    checkedSquaredRealTermV1 g2Raw z6 scaleRaw 1200
  let reSum ← checkedSumFourI128 inverseSquare.reRaw g2z2.reRaw
    g3z4.reRaw g2SquaredZ6.reRaw
  let imSum ← checkedSumFourI128 inverseSquare.imRaw g2z2.imRaw
    g3z4.imRaw g2SquaredZ6.imRaw
  let reRaw ← checkedI64Value reSum
  let imRaw ← checkedI64Value imSum
  pure ⟨reRaw, imRaw, scaleRaw⟩

/-- The arithmetic-check projection exposes rejection without pretending that
a Boolean or successful calculation is an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e837c8786d24459b908b193c065d037913da204b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
