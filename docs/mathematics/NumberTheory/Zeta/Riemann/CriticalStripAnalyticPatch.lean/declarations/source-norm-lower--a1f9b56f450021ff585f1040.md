# source_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f551c2b7-3240-e492-4d9a-84043befc12e",
  "kind": "theorem",
  "lexical_name": "source_norm_lower",
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
  "slug": "source-norm-lower--a1f9b56f450021ff585f1040",
  "source": {
    "blob": "6ece442dcd48c7411e5fe3ff63f613da93640c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1f9b56f450021ff585f104011668900c196fb5233fd272cac906594ef445201",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f551c2b7-3240-e492-4d9a-84043befc12e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_norm_lower {P F : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch P U) {δ : ℝ}
    (hmodel : ∀ z ∈ U, ‖F z - P z‖ ≤ δ) {z : ℂ} (hz : z ∈ U) :
    patch.lower - patch.error - δ ≤ ‖F z‖ := by
  have hbase := patch.value_norm_lower hz
  have herror := hmodel z hz
  have htriangle : ‖P z‖ ≤ ‖F z‖ + ‖F z - P z‖ := by
    calc
      ‖P z‖ = ‖F z - (F z - P z)‖ := by congr 1; abel
      _ ≤ ‖F z‖ + ‖F z - P z‖ := norm_sub_le _ _
  linarith

/-- Model positivity transfers only with a strict, source-uniform error margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ece442dcd48c7411e5fe3ff63f613da93640c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
