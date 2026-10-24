# ae_eq_of_setLIntegral_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7e56144-a75c-eff5-2f56-9ef9ae87fd6b",
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
  "slug": "ae-eq-of-setlintegral-prod-eq--a8b11139e5783f042ed155ce",
  "source": {
    "blob": "6934d8b853b8fed6d63dcc9149696c84e9681bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 218,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b11139e5783f042ed155ce4aafe2286d12a018e5f3ac82a096b56f297c1f53",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7e56144-a75c-eff5-2f56-9ef9ae87fd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–239.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6934d8b853b8fed6d63dcc9149696c84e9681bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
