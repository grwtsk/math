# actualLeadingComplexAntiderivative_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf78ed7b-6759-7437-b45d-9845abc7d84e",
  "kind": "theorem",
  "lexical_name": "actualLeadingComplexAntiderivative_tendsto_zero",
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
  "slug": "actualleadingcomplexantiderivative-tendsto-zero--2a44be9e1d6141a8f27ebc43",
  "source": {
    "blob": "1b4af24728e72bc792a1bab845e603d1ba7109e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a44be9e1d6141a8f27ebc437e34a2934b0dc04d1e34a790098631ee5a8ff7c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf78ed7b-6759-7437-b45d-9845abc7d84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingComplexAntiderivative_tendsto_zero {z : ℂ} (hz : 0 < z.re) :
    Tendsto (actualLeadingComplexAntiderivative z) atTop (𝓝 0) := by
  have h0 := complexMonomial_exponential_tendsto_zero 0 hz
  have h1 := complexMonomial_exponential_tendsto_zero 1 hz
  have h2 := complexMonomial_exponential_tendsto_zero 2 hz
  have h3 := complexMonomial_exponential_tendsto_zero 3 hz
  have h4 := complexMonomial_exponential_tendsto_zero 4 hz
  have hp := ((h2.div_const z).add ((h1.const_mul 2).div_const (z^2))).add
    ((h0.const_mul 2).div_const (z^3))
  have hq := ((((h4.div_const z).add ((h3.const_mul 4).div_const (z^2))).add
    ((h2.const_mul 12).div_const (z^3))).add ((h1.const_mul 24).div_const (z^4))).add
    ((h0.const_mul 24).div_const (z^5))
  have hh := (hp.const_mul (-192)).add (hq.const_mul 4)
  convert! hh using 1
  · ext u
    dsimp only [actualLeadingComplexAntiderivative]
    ring
  · simp

/-- Exact native complex moment evaluation of the independently specified literal coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4af24728e72bc792a1bab845e603d1ba7109e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
