# ae_eq_of_setLIntegral_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c0b2d54-012f-18b7-f7be-9af2aaaba94d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8794ce0e-d5df-9714-473c-7796cecaa4e9",
  "kind": "lemma",
  "lexical_name": "ae_eq_of_setLIntegral_prod_eq",
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
  "slug": "ae-eq-of-setlintegral-prod-eq--501ad9fcb4122ccade487ff0",
  "source": {
    "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 210,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:501ad9fcb4122ccade487ff0fb9cbc242abe2e218ead140c39ca0ce982fa29b1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8794ce0e-d5df-9714-473c-7796cecaa4e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_eq_of_setLIntegral_prod_eq {β : Type*} {mβ : MeasurableSpace β}
    {μ : Measure (α × β)} {f g : α × β → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) (hf_int : ∫⁻ x, f x ∂μ ≠ ∞)
    (h : ∀ ⦃s : Set α⦄ (_ : MeasurableSet s) ⦃t : Set β⦄ (_ : MeasurableSet t),
      ∫⁻ x in s ×ˢ t, f x ∂μ = ∫⁻ x in s ×ˢ t, g x ∂μ) :
    f =ᵐ[μ] g := by
  have hg_int : ∫⁻ x, g x ∂μ ≠ ∞ := by
    rwa [← setLIntegral_univ, ← Set.univ_prod_univ, ← h .univ .univ, Set.univ_prod_univ,
      setLIntegral_univ]
  refine AEMeasurable.ae_eq_of_forall_setLIntegral_eq hf hg hf_int hg_int fun s hs _ ↦ ?_
  refine lintegral_eq_lintegral_of_isPiSystem_of_univ_mem generateFrom_prod.symm isPiSystem_prod
    ?_ ?_ hf_int hs
  · exact ⟨Set.univ, .univ, Set.univ, .univ, Set.univ_prod_univ⟩
  · rintro _ ⟨s, hs, t, ht, rfl⟩
    exact h hs ht

end PiSystem

section WithDensity

variable {m : MeasurableSpace α} {μ : Measure α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20fb39e19f7d730f526643e81992c3ffeca9682` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
