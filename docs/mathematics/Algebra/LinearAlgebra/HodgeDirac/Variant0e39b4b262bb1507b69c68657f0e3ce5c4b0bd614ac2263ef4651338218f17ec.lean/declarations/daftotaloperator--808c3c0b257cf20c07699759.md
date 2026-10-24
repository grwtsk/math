# DAFTotalOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf251f6bba28b37f3a648104acd4411858376800740e9d7d1ed96cd2c7d1a36f",
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
  "slug": "daftotaloperator--808c3c0b257cf20c07699759",
  "source": {
    "blob": "891413593d21691ff8e18fd8c16eb586f79b8242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:808c3c0b257cf20c07699759d168236af690397a155acb2fea550dff5bb46cab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf251f6bba28b37f3a648104acd4411858376800740e9d7d1ed96cd2c7d1a36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `891413593d21691ff8e18fd8c16eb586f79b8242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
