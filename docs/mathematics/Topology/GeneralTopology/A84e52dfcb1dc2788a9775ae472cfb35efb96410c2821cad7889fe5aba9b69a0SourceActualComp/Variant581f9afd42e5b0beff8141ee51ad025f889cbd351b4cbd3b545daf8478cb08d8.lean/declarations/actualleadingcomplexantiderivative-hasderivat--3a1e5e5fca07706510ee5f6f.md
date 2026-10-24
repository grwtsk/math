# actualLeadingComplexAntiderivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f734ac1b-27a1-30b3-9602-e057a02c77b8",
  "kind": "theorem",
  "lexical_name": "actualLeadingComplexAntiderivative_hasDerivAt",
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
  "slug": "actualleadingcomplexantiderivative-hasderivat--3a1e5e5fca07706510ee5f6f",
  "source": {
    "blob": "1b4af24728e72bc792a1bab845e603d1ba7109e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a1e5e5fca07706510ee5f6f95a730c1ee6b3c7a33dda06b4f2459e020cfa275",
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

Occurrence: `result:f734ac1b-27a1-30b3-9602-e057a02c77b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingComplexAntiderivative_hasDerivAt {z : ℂ} (hz : z ≠ 0) (u : ℝ) :
    HasDerivAt (actualLeadingComplexAntiderivative z)
      ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ))) u := by
  have hx : HasDerivAt (fun x : ℝ => (x : ℂ)) 1 u := (hasDerivAt_id u).ofReal_comp
  have hp := (((hx.pow 2).div_const z).add
    ((hx.const_mul 2).div_const (z^2))).add_const (2 / z^3)
  have hq := (((((hx.pow 4).div_const z).add
    (((hx.pow 3).const_mul 4).div_const (z^2))).add
    (((hx.pow 2).const_mul 12).div_const (z^3))).add
    ((hx.const_mul 24).div_const (z^4))).add_const (24 / z^5)
  have hh := ((hx.const_mul (-z)).cexp).mul ((hp.const_mul (-192)).add (hq.const_mul 4))
  convert! hh using 1
  dsimp [actualLeadingComplexAntiderivative, actualLeadingEndpointPolynomial]
  norm_num
  field_simp [hz]
  ring

/-- Its right-hand improper boundary is genuinely zero, not discarded symbolically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variant581f9afd42e5b0beff8141ee51ad025f889cbd351b4cbd3b545daf8478cb08d8.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4af24728e72bc792a1bab845e603d1ba7109e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
