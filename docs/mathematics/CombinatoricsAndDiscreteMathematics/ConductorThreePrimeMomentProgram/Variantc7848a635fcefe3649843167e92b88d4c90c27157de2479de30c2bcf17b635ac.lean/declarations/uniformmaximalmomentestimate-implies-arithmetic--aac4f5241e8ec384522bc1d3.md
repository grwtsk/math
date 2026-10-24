# uniformMaximalMomentEstimate_implies_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edf55b93-7da1-06ad-5ce9-4e4bb5e3eb8a",
  "kind": "theorem",
  "lexical_name": "uniformMaximalMomentEstimate_implies_arithmetic",
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
  "slug": "uniformmaximalmomentestimate-implies-arithmetic--aac4f5241e8ec384522bc1d3",
  "source": {
    "blob": "112b221c28aabe4a00ce30eca660461a20c76e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantc7848a635fcefe3649843167e92b88d4c90c27157de2479de30c2bcf17b635ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac4f5241e8ec384522bc1d39c1073972d44e6b5c493e084eadd56bd75618c79",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantc7848a635fcefe3649843167e92b88d4c90c27157de2479de30c2bcf17b635ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edf55b93-7da1-06ad-5ce9-4e4bb5e3eb8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformMaximalMomentEstimate_implies_arithmetic
    (route : ConductorThreePrimeMomentRoute)
    (hmax : UniformMaximalMomentEstimate route) :
    ConductorThreeMaximalMomentEstimate := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hmax epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxlt : x < 2 * N + 1 := by
    simpa only [Finset.mem_range] using hx
  let moment : Fin (2 * N + 1) := ⟨x, hxlt⟩
  have h := hbound N hN moment
  rw [readout_momentState] at h
  simpa [moment, Complex.norm_real, Real.norm_eq_abs] using h

/-- The fixed-frame maximal program supplies the BV large-sieve endpoint. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantc7848a635fcefe3649843167e92b88d4c90c27157de2479de30c2bcf17b635ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantc7848a635fcefe3649843167e92b88d4c90c27157de2479de30c2bcf17b635ac.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112b221c28aabe4a00ce30eca660461a20c76e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
