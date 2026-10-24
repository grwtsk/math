# GammaSeq_tendsto_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea40c4d-1241-fdc6-bb7b-53eb9d0606fd",
  "kind": "theorem",
  "lexical_name": "GammaSeq_tendsto_Gamma",
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
  "slug": "gammaseq-tendsto-gamma--2b4462ebe3a9b923fca7a9b4",
  "source": {
    "blob": "8205d98c464988b5b42b312a91dbbd200b08876a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 503,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4462ebe3a9b923fca7a9b4fc122d03d25a8e32ec196d0c33b797975e98bfb4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea40c4d-1241-fdc6-bb7b-53eb9d0606fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GammaSeq_tendsto_Gamma (s : ℝ) : Tendsto (GammaSeq s) atTop (𝓝 <| Gamma s) := by
  suffices : Tendsto ((↑) ∘ GammaSeq s : ℕ → ℂ) atTop (𝓝 <| Complex.Gamma s)
  exact (Complex.continuous_re.tendsto (Complex.Gamma ↑s)).comp this
  convert Complex.GammaSeq_tendsto_Gamma s
  ext1 n
  dsimp only [GammaSeq, Function.comp_apply, Complex.GammaSeq]
  push_cast
  rw [Complex.ofReal_cpow n.cast_nonneg, Complex.ofReal_nat_cast]
#align real.Gamma_seq_tendsto_Gamma Real.GammaSeq_tendsto_Gamma

/-- Euler's reflection formula for the real Gamma function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8205d98c464988b5b42b312a91dbbd200b08876a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
