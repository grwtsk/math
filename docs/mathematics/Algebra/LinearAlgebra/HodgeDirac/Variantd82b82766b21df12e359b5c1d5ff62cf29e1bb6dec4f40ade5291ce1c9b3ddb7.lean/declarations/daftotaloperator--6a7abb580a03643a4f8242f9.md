# DAFTotalOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8577fd8073e89c07f82beac8a22161d283c2a5f6888aa78ad72e105d9470955e",
  "kind": "def",
  "lexical_name": "DAFTotalOperator",
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
  "slug": "daftotaloperator--6a7abb580a03643a4f8242f9",
  "source": {
    "blob": "c10912dc6d1ad867f6094ac91914a0a7ab587ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a7abb580a03643a4f8242f95a2355b88bf4db9a39cca390655b37efe4c25909",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8577fd8073e89c07f82beac8a22161d283c2a5f6888aa78ad72e105d9470955e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DAFTotalOperator
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) :
    FiniteOperator (Index × SpindleIndex) (Index × SpindleIndex) :=
  terrain.complex.hodgeDirac ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
    terrain.grading ⊗ₖ spindle

/-- The total finite matrix is Hermitian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c10912dc6d1ad867f6094ac91914a0a7ab587ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
