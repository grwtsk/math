# actualLeadingComplexAntiderivative_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a76f8e8-b546-4f7c-d113-79b9f51c700d",
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
  "slug": "actualleadingcomplexantiderivative-tendsto-zero--84e1e370a01f13531793573e",
  "source": {
    "blob": "e7735e5344c6ca34b52a9cc03b127cb5bc3641f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant996cd54515e6bc354a29b1fbdeca0075e25b3f73306d8c60020430de1cb963b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e1e370a01f13531793573e45111bf322657915c9f10627b464a806f0e6ae85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant996cd54515e6bc354a29b1fbdeca0075e25b3f73306d8c60020430de1cb963b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a76f8e8-b546-4f7c-d113-79b9f51c700d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant996cd54515e6bc354a29b1fbdeca0075e25b3f73306d8c60020430de1cb963b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant996cd54515e6bc354a29b1fbdeca0075e25b3f73306d8c60020430de1cb963b1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7735e5344c6ca34b52a9cc03b127cb5bc3641f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
