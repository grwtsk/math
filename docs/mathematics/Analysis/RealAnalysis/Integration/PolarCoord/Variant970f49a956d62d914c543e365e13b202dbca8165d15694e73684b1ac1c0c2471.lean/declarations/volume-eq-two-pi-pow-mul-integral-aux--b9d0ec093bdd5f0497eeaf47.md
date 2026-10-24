# volume_eq_two_pi_pow_mul_integral_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85c8d699-455f-0d75-ed43-a92cb90066c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7d98487-1e14-d3ee-1afe-d6d1b1c95c13",
  "kind": "theorem",
  "lexical_name": "volume_eq_two_pi_pow_mul_integral_aux",
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
  "slug": "volume-eq-two-pi-pow-mul-integral-aux--b9d0ec093bdd5f0497eeaf47",
  "source": {
    "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 364,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9d0ec093bdd5f0497eeaf47b9f8192c4dead247b06a3d52eb24974218b6f595",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d98487-1e14-d3ee-1afe-d6d1b1c95c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem volume_eq_two_pi_pow_mul_integral_aux
    (hA : normAtComplexPlaces ⁻¹' normAtComplexPlaces '' A = A) :
    normAtComplexPlaces '' A =
      (mixedSpaceOfRealSpace ⁻¹' A) ∩
        Set.univ.pi fun w ↦ if w.IsReal then Set.univ else Set.Ici 0 := by
  have h : ∀ (x : mixedSpace K), ∀ w, IsComplex w → 0 ≤ normAtComplexPlaces x w := by
    intro x w hw
    rw [normAtComplexPlaces_apply_isComplex ⟨w, hw⟩]
    exact norm_nonneg _
  ext x
  refine ⟨?_, fun ⟨hx₁, hx₂⟩ ↦ ?_⟩
  · rintro ⟨a, ha, rfl⟩
    refine ⟨?_, by simpa using h a⟩
    rw [Set.mem_preimage, ← hA, Set.mem_preimage, normAtComplexPlaces_mixedSpaceOfRealSpace (h a)]
    exact Set.mem_image_of_mem _ ha
  · rwa [Set.mem_preimage, ← hA, Set.mem_preimage, normAtComplexPlaces_mixedSpaceOfRealSpace] at hx₁
    intro w hw
    simpa [ite_eq_right (not_isReal_iff_isComplex.mpr hw)] using hx₂ w (Set.mem_univ w)

open scoped Classical in
/--
If the measurable set `A` is norm-stable at complex places in the sense that
`normAtComplexPlaces⁻¹ (normAtComplexPlaces '' A) = A`, then its volume can be computed via an
integral over `normAtComplexPlaces '' A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699dfbcf97b0c0cba6a84ec0e18389dd95211880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
