# derivative_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a920a9c8-8bed-639a-0d26-0061f92b538a",
  "kind": "lemma",
  "lexical_name": "derivative_residual",
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
  "slug": "derivative-residual--c2829946bbac3a528c02097b",
  "source": {
    "blob": "115b8088e19ae84b239062e0da5e5cacf17d0f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2829946bbac3a528c02097bae4aa839675282a2a7beca41a7a50e22f69545ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a920a9c8-8bed-639a-0d26-0061f92b538a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma derivative_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : s ∈ strip) :
    deriv source s-deriv (model N) s=sixthKernel.logTail (s+6) (N : ℝ) := by
  have ht0 := sixthKernel.tail_hasDerivAt (T := (N : ℝ)) (z := s+6)
    (by exact_mod_cast hN) (by simp only [Complex.add_re,Complex.ofNat_re]; linarith [hs.1])
  have ht : HasDerivAt (tail (N : ℝ)) (-sixthKernel.logTail (s+6) (N : ℝ)) s := by
    simpa only [tail,mul_one] using ht0.comp s ((hasDerivAt_id s).add_const 6)
  have he : (fun z => source z-model N z) =ᶠ[𝓝 s] (fun z => -tail (N : ℝ) z) := by
    filter_upwards [strip_open.mem_nhds hs] with z hz
    exact residual hN hz
  have h := ((ht.neg).congr_of_eventuallyEq he).deriv
  rw [((source_differentiable hs).hasDerivAt.sub (model_differentiable hN hs).hasDerivAt).deriv] at h
  simpa only [neg_neg] using h

/-- Exact refinement telescope for the same normalized arithmetic source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115b8088e19ae84b239062e0da5e5cacf17d0f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
