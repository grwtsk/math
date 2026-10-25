# sigma_isBasis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38327366-0241-2bf8-0414-c995dd17a52d",
  "kind": "lemma",
  "lexical_name": "sigma_isBasis_iff",
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
  "slug": "sigma-isbasis-iff--449a2da0a83fd743db3a83f8",
  "source": {
    "blob": "957b2c416839fd965c1cfeb80f95267d3eb0eefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:449a2da0a83fd743db3a83f8b77221ca9b826b70e6446475650c5a57a78eb869",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38327366-0241-2bf8-0414-c995dd17a52d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sigma_isBasis_iff {I X} :
    (Matroid.sigma M).IsBasis I X ↔ ∀ i, (M i).IsBasis (Sigma.mk i ⁻¹' I) (Sigma.mk i ⁻¹' X) := by
  simp only [IsBasis, sigma_indep_iff, maximal_subset_iff, and_imp, and_assoc, sigma_ground_eq,
    forall_and, and_congr_right_iff]
  refine fun hI ↦ ⟨fun ⟨hIX, h, h'⟩ ↦ ⟨fun i ↦ preimage_mono hIX, fun i I₀ hI₀ hI₀X hII₀ ↦ ?_, ?_⟩,
    fun ⟨hIX, h', h''⟩ ↦ ⟨?_, ?_, ?_⟩⟩
  · refine hII₀.antisymm ?_
    specialize h (t := I ∪ Sigma.mk i '' I₀)
    simp only [preimage_union, union_subset_iff, hIX, image_subset_iff, hI₀X, and_self,
      subset_union_left, true_implies] at h
    rw [h, preimage_union, sigma_mk_preimage_image_eq_self]
    · exact subset_union_right
    intro j
    obtain (rfl | hij) := eq_or_ne i j
    · rwa [sigma_mk_preimage_image_eq_self, union_eq_self_of_subset_left hII₀]
    rw [sigma_mk_preimage_image' hij, union_empty]
    apply hI
  · exact fun i ↦ by simpa using preimage_mono (f := Sigma.mk i) h'
  · exact fun ⟨i, x⟩ hx ↦ by simpa using hIX i hx
  · refine fun J hJ hJX hIJ ↦ hIJ.antisymm fun ⟨i,x⟩ hx ↦ ?_
    simpa using (h' i (hJ i) (preimage_mono hJX) (preimage_mono hIJ)).symm.subset hx
  exact fun ⟨i,x⟩ hx ↦ by simpa using h'' i hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c416839fd965c1cfeb80f95267d3eb0eefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
