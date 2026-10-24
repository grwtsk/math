# exampleAnalyticPrimeBridgeData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d00843ae75b70f7907fd39087e9779f965183b2cc8842cd393bdd79c8f7e35a",
  "kind": "def",
  "lexical_name": "exampleAnalyticPrimeBridgeData",
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
  "slug": "exampleanalyticprimebridgedata--ea4a797efce9b72a0f35c5d6",
  "source": {
    "blob": "1bd8bb9f272a0d23a0967feb0d32c5123a59ef2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1086,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea4a797efce9b72a0f35c5d64f4cf4603f4d23f4fc54b8f7a17a5ffebada9de2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d00843ae75b70f7907fd39087e9779f965183b2cc8842cd393bdd79c8f7e35a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1086–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleAnalyticPrimeBridgeData : AnalyticPrimeBridgeData where
  leftPrime := 2
  rightPrime := 3
  traceDepth := 1
  frobeniusTraceLeft := [0]
  frobeniusTraceRight := [0]
  localEulerCoeffsLeft := [1]
  localEulerCoeffsRight := [1]
  relativeDeterminantCoeffs := [1]
  squareFreeMobiusWeight := 1
  valuationSupport := [2, 1, 3]
  spectralBoundaryCrossed := true
  prismaticBoundaryCrossed := true
  errorNumerator := 0
  errorExponent := 1
  hasPrismaticCertificate := true
  hasSpectralCertificate := true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean#L1086).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd8bb9f272a0d23a0967feb0d32c5123a59ef2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
