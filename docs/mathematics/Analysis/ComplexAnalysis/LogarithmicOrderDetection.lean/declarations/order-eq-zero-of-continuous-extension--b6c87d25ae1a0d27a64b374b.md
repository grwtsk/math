# order_eq_zero_of_continuous_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e5fb2e3-218a-205d-c01a-c742e3f7d41d",
  "kind": "theorem",
  "lexical_name": "order_eq_zero_of_continuous_extension",
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
  "slug": "order-eq-zero-of-continuous-extension--b6c87d25ae1a0d27a64b374b",
  "source": {
    "blob": "2a3d63d126b4c121db5dcf86485f9105674b0203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 22,
    "path": "GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6c87d25ae1a0d27a64b374be8529073c6b3fd1230fc3575772e93cf8f4f19a6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e5fb2e3-218a-205d-c01a-c742e3f7d41d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_eq_zero_of_continuous_extension (f g H : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s)
    (hH : ContinuousAt H a) (hext : H =ᶠ[𝓝[≠] a] logDeriv f) : k = 0 := by
  have hc : ContinuousAt (fun s => (s - a) * (-H s)) a :=
    (continuousAt_id.sub continuousAt_const).mul hH.neg
  have hz : Tendsto (fun s => (s - a) * (-logDeriv f s))
      (𝓝[≠] a) (𝓝 (0 : ℂ)) := by
    have ht : Tendsto (fun s => (s - a) * (-H s)) (𝓝[≠] a) (𝓝 (0 : ℂ)) := by
      simpa using hc.tendsto.mono_left nhdsWithin_le_nhds
    apply ht.congr'
    filter_upwards [hext] with s hs
    rw [hs]
  have hk := scaled_coefficient_unique f g a 0 k hg hg0 hfactor hz
  have : (k : ℂ) = 0 := neg_eq_zero.mp hk.symm
  exact_mod_cast this

/-- A nonzero local order precludes every continuous extension of logDeriv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3d63d126b4c121db5dcf86485f9105674b0203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
