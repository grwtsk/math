# IndepFun.process_congr_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d635f85b-6c37-d17a-f187-633ca3639b38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62ab6f18-ce7c-e3f4-47fa-c4d6cb074147",
  "kind": "lemma",
  "lexical_name": "IndepFun.process_congr_left",
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
  "slug": "indepfun-process-congr-left--6e8929300c6776f193adfa77",
  "source": {
    "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 43,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8929300c6776f193adfa77806eb7132591cad93e0a9d4b95f940665c03934b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ab6f18-ce7c-e3f4-47fa-c4d6cb074147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.process_congr_left {𝓧 : S → Type*} {𝓨 : Type*}
    [∀ i, MeasurableSpace (𝓧 i)] [MeasurableSpace 𝓨] {X X' : (i : S) → Ω → 𝓧 i}
    {Y : Ω → 𝓨} (h1 : IndepFun (fun ω i ↦ X i ω) Y κ P) (h2 : ∀ i, ∀ᵐ a ∂P, X i =ᵐ[κ a] X' i) :
    IndepFun (fun ω i ↦ X' i ω) Y κ P := by
  rintro - - ⟨s, hs, rfl⟩ ⟨t, ht, rfl⟩
  have : ∀ᵐ a ∂P, κ a (((fun ω i ↦ X i ω) ⁻¹' s) ∩ (Y ⁻¹' t)) =
      κ a ((fun ω i ↦ X i ω) ⁻¹' s) * κ a (Y ⁻¹' t) :=
    h1 ((fun ω i ↦ X i ω) ⁻¹' s) (Y ⁻¹' t) ⟨s, hs, rfl⟩ ⟨t, ht, rfl⟩
  obtain ⟨I, u, hI, rfl⟩ : ∃ (I : Set S) (u : Set (Π i : I, 𝓧 i)),
      I.Countable ∧ s = I.domRestrict ⁻¹' u := hs.eq_preimage_restrict_countable
  have aux (f : (i : S) → Ω → 𝓧 i) : (fun ω i ↦ f i ω) ⁻¹' I.domRestrict ⁻¹' u =
      (fun ω (i : I) ↦ f i ω) ⁻¹' u := rfl
  simp_rw [aux] at *
  have _ : Countable I := hI.to_subtype
  have h : ∀ᵐ a ∂P, (fun ω (i : I) ↦ X i ω) =ᵐ[κ a] (fun ω (i : I) ↦ X' i ω) := by
    filter_upwards [ae_all_iff.2 fun (i : I) ↦ h2 i] with
      a (ha : ∀ (i : I), ∀ᵐ ω ∂κ a, X i ω = X' i ω)
    filter_upwards [ae_all_iff.2 ha] with ω hω using by simp [hω]
  filter_upwards [this, h] with a ha1 ha2
  refine .trans (measure_congr (ae_eq_set_inter (ha2.symm.preimage _) .rfl)) (ha1.trans ?_)
  congr 1
  exact measure_congr (ha2.preimage _)

/-- If `X` is a process independent from `Y` and for all `i`, `X' i` is almost everywhere equal
to `X i`, then `X'` is also independent from `Y`. This implies that independence results about
measurable processes should generally also hold
for processes whose marginals are only a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c79156f03cca42fd6d7e632cfcb4375a91422e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
