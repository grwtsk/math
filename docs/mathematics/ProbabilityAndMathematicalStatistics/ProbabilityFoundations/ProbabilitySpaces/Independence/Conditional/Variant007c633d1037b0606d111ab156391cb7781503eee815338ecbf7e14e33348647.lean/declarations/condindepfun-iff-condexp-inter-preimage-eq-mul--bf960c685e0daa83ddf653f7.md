# condIndepFun_iff_condExp_inter_preimage_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 642,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6ca4330-5246-9a22-d9e8-a6025c88f4e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee6496eb-4954-50da-a00f-b5d0b3490474",
  "kind": "theorem",
  "lexical_name": "condIndepFun_iff_condExp_inter_preimage_eq_mul",
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
  "slug": "condindepfun-iff-condexp-inter-preimage-eq-mul--bf960c685e0daa83ddf653f7",
  "source": {
    "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 642,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf960c685e0daa83ddf653f7b04425960b8bc913e0534eb4a73975f8bd858a96",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee6496eb-4954-50da-a00f-b5d0b3490474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condIndepFun_iff_condExp_inter_preimage_eq_mul {mβ : MeasurableSpace β}
    {mβ' : MeasurableSpace β'} (hf : Measurable f) (hg : Measurable g) :
    CondIndepFun m' hm' f g μ ↔
      ∀ s t, MeasurableSet s → MeasurableSet t
        → (μ⟦f ⁻¹' s ∩ g ⁻¹' t | m'⟧) =ᵐ[μ] fun ω ↦ (μ⟦f ⁻¹' s | m'⟧) ω * (μ⟦g ⁻¹' t | m'⟧) ω := by
  rw [condIndepFun_iff _ _ _ _ hf hg]
  refine ⟨fun h s t hs ht ↦ ?_, fun h s t ↦ ?_⟩
  · exact h (f ⁻¹' s) (g ⁻¹' t) ⟨s, hs, rfl⟩ ⟨t, ht, rfl⟩
  · rintro ⟨s, hs, rfl⟩ ⟨t, ht, rfl⟩
    exact h s t hs ht

@[deprecated (since := "2025-01-21")]
alias condIndepFun_iff_condexp_inter_preimage_eq_mul :=
  condIndepFun_iff_condExp_inter_preimage_eq_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d3d56ef844deb253f7d8547b8b27e1828ca4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
