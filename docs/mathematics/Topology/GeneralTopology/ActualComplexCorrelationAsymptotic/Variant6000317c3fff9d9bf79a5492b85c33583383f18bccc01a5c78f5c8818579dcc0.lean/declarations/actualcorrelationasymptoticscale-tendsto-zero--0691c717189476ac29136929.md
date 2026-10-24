# actualCorrelationAsymptoticScale_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d89a77-4474-fdbc-6ca5-9ad57abf8b48",
  "kind": "theorem",
  "lexical_name": "actualCorrelationAsymptoticScale_tendsto_zero",
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
  "slug": "actualcorrelationasymptoticscale-tendsto-zero--0691c717189476ac29136929",
  "source": {
    "blob": "28974ccdd31c9d2e2c6f63f33b6b27422b398cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant6000317c3fff9d9bf79a5492b85c33583383f18bccc01a5c78f5c8818579dcc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0691c717189476ac29136929d8f0fb4f12aeed2bb418fd9d67d62fda03706eb1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant6000317c3fff9d9bf79a5492b85c33583383f18bccc01a5c78f5c8818579dcc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d89a77-4474-fdbc-6ca5-9ad57abf8b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelationAsymptoticScale_tendsto_zero {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z) atTop (𝓝 0) := by
  have hz2 : 0 < ((2 : ℂ) * z).re := by
    norm_num [Complex.mul_re] at ⊢
    linarith
  have hm := complexMonomial_exponential_tendsto_zero 9 hz2
  have hn := Complex.continuous_ofReal.continuousAt.tendsto.comp
    actualSourceNormalization_tendsto
  have hh := hn.mul hm
  simp only [mul_zero] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun A => by
    dsimp [actualCorrelationAsymptoticScale]
    push_cast
    have he : -(2 * z) * (A : ℂ) = -2 * z * (A : ℂ) := by ring
    rw [he]
    ring

/-- Genuine endpoint DCT and actual source Fubini give the ordinary complex square coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant6000317c3fff9d9bf79a5492b85c33583383f18bccc01a5c78f5c8818579dcc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant6000317c3fff9d9bf79a5492b85c33583383f18bccc01a5c78f5c8818579dcc0.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28974ccdd31c9d2e2c6f63f33b6b27422b398cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
