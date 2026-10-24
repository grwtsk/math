# PrimeSmoothDefectCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62c298b1e96b679d2aefda1ab215201b915e5556727ec1b94129003c24aeeee8",
  "kind": "def",
  "lexical_name": "PrimeSmoothDefectCheckpoint",
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
  "slug": "primesmoothdefectcheckpoint--0d3891c6272932824693fa2f",
  "source": {
    "blob": "27b7cb8b2f201fd96e6e5188789eadb1a67da151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 157,
    "path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d3891c6272932824693fa2fe99a625ab38d3d26312f7bf76eab4958cb0140aa",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62c298b1e96b679d2aefda1ab215201b915e5556727ec1b94129003c24aeeee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrimeSmoothDefectCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    signedPairing Realization.explicitSecondDerivative A =
      endpointMoment A - primeSmoothDefect A) ∧
  (∀ A : ℝ, 1 ≤ A →
    |endpointMoment A| ≤ Real.sqrt 2) ∧
  (SignedPairingTailLowerBound ↔ PrimeSmoothDefectTailUpperBound) ∧
  (PrimeSmoothDefectTailUpperBound →
    CorrelationAssembly.EstimateObligation)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b7cb8b2f201fd96e6e5188789eadb1a67da151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
