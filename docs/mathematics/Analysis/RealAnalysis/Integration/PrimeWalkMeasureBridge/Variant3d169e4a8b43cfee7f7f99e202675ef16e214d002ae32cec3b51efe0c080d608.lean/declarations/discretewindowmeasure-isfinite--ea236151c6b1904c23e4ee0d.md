# discreteWindowMeasure_isFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac6ff40-0af2-2b19-0ac9-d4ed04b38b8c",
  "kind": "theorem",
  "lexical_name": "discreteWindowMeasure_isFinite",
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
  "slug": "discretewindowmeasure-isfinite--ea236151c6b1904c23e4ee0d",
  "source": {
    "blob": "928a2ed5e3a7bc660741ca4efb64cb452e5bc12b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea236151c6b1904c23e4ee0de70002d2e8d8cbcd46a6d21d2e60e5e3998d8c2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac6ff40-0af2-2b19-0ac9-d4ed04b38b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteWindowMeasure_isFinite
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ) :
    IsFiniteMeasure (discreteWindowMeasure bridge N) := by
  constructor
  rw [discreteWindowMeasure_univ bridge N]
  exact ENNReal.ofReal_lt_top

/-- Indices in the finite window whose observable has the target value `y`.
Collisions are retained: every such index contributes its own harmonic atom. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928a2ed5e3a7bc660741ca4efb64cb452e5bc12b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
