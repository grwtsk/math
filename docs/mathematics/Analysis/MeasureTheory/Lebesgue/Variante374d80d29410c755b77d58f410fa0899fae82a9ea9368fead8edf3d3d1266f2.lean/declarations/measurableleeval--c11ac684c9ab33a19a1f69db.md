# measurableLEEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd2ca920cef59865b40c6e58119a296b5e40e38cfb688f103347d1b6b2ef5adc",
  "kind": "def",
  "lexical_name": "measurableLEEval",
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
  "slug": "measurableleeval--c11ac684c9ab33a19a1f69db",
  "source": {
    "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 539,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c11ac684c9ab33a19a1f69db0f569cebc538311629a361632580ffc94ede6dee",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd2ca920cef59865b40c6e58119a296b5e40e38cfb688f103347d1b6b2ef5adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def measurableLEEval (μ ν : Measure α) : Set ℝ≥0∞ :=
  (fun f : α → ℝ≥0∞ => ∫⁻ x, f x ∂μ) '' measurableLE μ ν
#align measure_theory.measure.lebesgue_decomposition.measurable_le_eval MeasureTheory.Measure.LebesgueDecomposition.measurableLEEval

end LebesgueDecomposition

open LebesgueDecomposition

/-- Any pair of finite measures `μ` and `ν`, `HaveLebesgueDecomposition`. That is to say,
there exist a measure `ξ` and a measurable function `f`, such that `ξ` is mutually singular
with respect to `ν` and `μ = ξ + ν.withDensity f`.

This is not an instance since this is also shown for the more general σ-finite measures with
`MeasureTheory.Measure.haveLebesgueDecomposition_of_sigmaFinite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566c66a8c4a9766999291f456377c6f8b9f0ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
