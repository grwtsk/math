# target_eq_zero_of_model_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9695ec4f-6115-0976-45ef-c1d0a40291ef",
  "kind": "theorem",
  "lexical_name": "target_eq_zero_of_model_tendsto_zero",
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
  "slug": "target-eq-zero-of-model-tendsto-zero--f0f964d9f5fa767f8e387f6f",
  "source": {
    "blob": "ede2f22d91b82774ab7cba993819bcd6cc62c74f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f964d9f5fa767f8e387f6f11f90f3c60f5a049033808589d3733612dfc0874",
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

Occurrence: `result:9695ec4f-6115-0976-45ef-c1d0a40291ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem target_eq_zero_of_model_tendsto_zero
    (V weight residual : ℕ → ℝ)
    (target L : ℝ)
    (hV : Tendsto V atTop (𝓝 0))
    (hweight : Tendsto weight atTop (𝓝 L))
    (hL : 0 < L)
    (hresidual : Tendsto residual atTop (𝓝 0))
    (identity : ∀ n, V n = weight n * target + residual n) :
    target = 0 := by
  have hright :
      Tendsto (fun n => weight n * target + residual n)
        atTop (𝓝 (L * target)) := by
    simpa using (hweight.mul_const target).add hresidual
  have hsame :
      Tendsto V atTop (𝓝 (L * target)) := by
    exact hright.congr' (Eventually.of_forall fun n => (identity n).symm)
  have hzero : L * target = 0 :=
    tendsto_nhds_unique hsame hV
  exact (mul_eq_zero.mp hzero).resolve_left hL.ne'

/-- Comparison of the fixed damped packing against one signed quartic target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede2f22d91b82774ab7cba993819bcd6cc62c74f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
