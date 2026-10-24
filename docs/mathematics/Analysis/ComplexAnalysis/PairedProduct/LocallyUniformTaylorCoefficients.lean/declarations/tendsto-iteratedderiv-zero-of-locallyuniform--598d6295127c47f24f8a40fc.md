# tendsto_iteratedDeriv_zero_of_locallyUniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c883bea8-c95c-281c-7dad-00791f3435e9",
  "kind": "theorem",
  "lexical_name": "tendsto_iteratedDeriv_zero_of_locallyUniform",
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
  "slug": "tendsto-iteratedderiv-zero-of-locallyuniform--598d6295127c47f24f8a40fc",
  "source": {
    "blob": "adedceda2efd5be2236f5728aca912a61da3ab93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598d6295127c47f24f8a40fc267e20abb312c9b9dc274c27274e0073ef4a50d1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c883bea8-c95c-281c-7dad-00791f3435e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iteratedDeriv_zero_of_locallyUniform
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    Tendsto (fun i => iteratedDeriv n (F i) 0) φ
      (𝓝 (iteratedDeriv n f 0)) := by
  have h := tendstoLocallyUniformlyOn_iterate_deriv hF hlim n
  have hp := h.tendsto_at (Set.mem_univ (0 : ℂ))
  simpa only [iteratedDeriv_eq_iterate] using hp

/-- Taylor coefficients at zero converge under locally uniform convergence of
entire functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adedceda2efd5be2236f5728aca912a61da3ab93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
