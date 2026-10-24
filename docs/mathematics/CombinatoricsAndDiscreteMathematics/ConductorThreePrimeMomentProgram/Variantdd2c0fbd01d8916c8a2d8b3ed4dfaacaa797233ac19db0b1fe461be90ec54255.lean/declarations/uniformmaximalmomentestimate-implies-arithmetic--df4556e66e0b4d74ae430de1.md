# uniformMaximalMomentEstimate_implies_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ebbdbfcd22792dc4f02d695205e15b86c3e2d8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42ded25e-97c4-dea5-71a8-162e9ec490b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0899c3a-4ee2-b869-2e38-33c370f6914f",
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
  "slug": "uniformmaximalmomentestimate-implies-arithmetic--df4556e66e0b4d74ae430de1",
  "source": {
    "blob": "8ebbdbfcd22792dc4f02d695205e15b86c3e2d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4556e66e0b4d74ae430de1dff854a8ecee8d3b156334406a8e4f4d75d3c88c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0899c3a-4ee2-b869-2e38-33c370f6914f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ebbdbfcd22792dc4f02d695205e15b86c3e2d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
