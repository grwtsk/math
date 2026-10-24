# actualSourceComplexTransform_normalized_tendsto_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0804280-1c7b-65b9-f6f5-c29c4b6182b1",
  "kind": "theorem",
  "lexical_name": "actualSourceComplexTransform_normalized_tendsto_closed",
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
  "slug": "actualsourcecomplextransform-normalized-tendsto-closed--5a4103704993f7abe47ab766",
  "source": {
    "blob": "d8f54fa51a7a81b8539eebaf324cf250c3c76c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a4103704993f7abe47ab76691ba0448690b8ef40186e2c884dfc28852742241",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0804280-1c7b-65b9-f6f5-c29c4b6182b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceComplexTransform_normalized_tendsto_closed {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt
        (SourcePairing.sourceNormalization A) : ℝ) : ℂ) *
        Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z)
      atTop (𝓝 (384 / z^3 - 96 / z^5)) := by
  rw [← actualLeadingComplexCoefficient_eq hz]
  exact actualSourceComplexTransform_normalized_tendsto hz

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointCoefficient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f54fa51a7a81b8539eebaf324cf250c3c76c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
