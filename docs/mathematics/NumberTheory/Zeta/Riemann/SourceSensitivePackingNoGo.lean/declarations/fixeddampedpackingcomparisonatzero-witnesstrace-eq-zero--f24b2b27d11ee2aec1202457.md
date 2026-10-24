# FixedDampedPackingComparisonAtZero.witnessTrace_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6842a1f1-5a5e-0309-0134-e8fae8320014",
  "kind": "theorem",
  "lexical_name": "FixedDampedPackingComparisonAtZero.witnessTrace_eq_zero",
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
  "slug": "fixeddampedpackingcomparisonatzero-witnesstrace-eq-zero--f24b2b27d11ee2aec1202457",
  "source": {
    "blob": "ede2f22d91b82774ab7cba993819bcd6cc62c74f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f24b2b27d11ee2aec1202457e48b209b6548894e578f9ca9b8255502a2b098f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6842a1f1-5a5e-0309-0134-e8fae8320014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FixedDampedPackingComparisonAtZero.witnessTrace_eq_zero
    {s : ℂ} (comparison : FixedDampedPackingComparisonAtZero s) :
    witnessTrace (s.re - 1 / 2) s.im = 0 :=
  target_eq_zero_of_model_tendsto_zero
    dirichletTwoPackingSequence.valueAt
    comparison.weight
    comparison.residual.total
    (witnessTrace (s.re - 1 / 2) s.im)
    comparison.limitWeight
    dirichletTwoPacking_valueAt_tendsto_zero
    comparison.weight_tendsto
    comparison.limitWeight_pos
    comparison.residual.total_tendsto
    comparison.identity

/-- Hence a fixed-damped comparison at one actual nontrivial zero already
proves that zero lies on the critical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede2f22d91b82774ab7cba993819bcd6cc62c74f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
