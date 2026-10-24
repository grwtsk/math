# indicator_toLp_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02528803-ff0e-0e69-bab7-304c2c63b874",
  "kind": "theorem",
  "lexical_name": "indicator_toLp_norm_sq",
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
  "slug": "indicator-tolp-norm-sq--7ba1ef0c37f8e920df564333",
  "source": {
    "blob": "9c5c5a542d9ae46632e3005e8b04b8b6c1a84297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba1ef0c37f8e920df564333371890cc56a853369094c88b815887ac28ce7703",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02528803-ff0e-0e69-bab7-304c2c63b874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem indicator_toLp_norm_sq (f : ℝ → ℂ) (hf : MemLp f 2 volume)
    (s : Set ℝ) (hs : MeasurableSet s) :
    ‖(hf.indicator hs).toLp (s.indicator f)‖ ^ 2 = ∫ u : ℝ in s, ‖f u‖ ^ 2 := by
  rw [FullLinePlancherel.norm_sq_toLp, ← integral_indicator hs]
  apply integral_congr_ae
  filter_upwards [] with u
  by_cases hu : u ∈ s <;> simp [hu]

/-- The actual negative-tail vector has exactly the corrected pole value's norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5c5a542d9ae46632e3005e8b04b8b6c1a84297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
