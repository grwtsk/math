# UnifIntegrable.unifIntegrable_of_ae_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6263b5cf-f603-946a-f62a-fa429608571b",
  "kind": "lemma",
  "lexical_name": "UnifIntegrable.unifIntegrable_of_ae_tendsto",
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
  "slug": "unifintegrable-unifintegrable-of-ae-tendsto--375bbd90fbd2f6892e179ab1",
  "source": {
    "blob": "313652b796b799acabeca063febbf5151bb2cc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 729,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:375bbd90fbd2f6892e179ab103e388c6d3a90efc40861da8b404558bd85d3fd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6263b5cf-f603-946a-f62a-fa429608571b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UnifIntegrable.unifIntegrable_of_ae_tendsto {κ : Type*} (u : Filter κ) [NeBot u]
    [IsCountablyGenerated u] {fn : ι → α → β} (hUI : UnifIntegrable fn p μ)
    (hfn : ∀ i, AEStronglyMeasurable (fn i) μ) :
    UnifIntegrable (fun (f : {g : α → β | ∃ ni : κ → ι,
      ∀ᵐ (x : α) ∂μ, Tendsto (fun n ↦ fn (ni n) x) u (𝓝 (g x))}) ↦ f.1) p μ := by
  refine unifIntegrable_iff'.2 fun ε hε ↦ ?_
  obtain ⟨δ, hδ, hδ'⟩ := (unifIntegrable_iff.1 hUI) ε hε
  refine ⟨δ, hδ, fun ⟨f, s, hs⟩ t ht hμt ↦ ?_⟩
  refine Lp.eLpNorm_le_of_ae_tendsto
    (Eventually.of_forall (f := u) fun n ↦ hδ' (s n) t hμt) ?_ ?_ ?_
  · exact fun n ↦ (hfn (s n)).mono_measure μ.restrict_le_self
  · exact (aestronglyMeasurable_of_tendsto_ae u (fun n ↦ hfn (s n)) hs).restrict
  · exact hs.filter_mono ae_restrict_le

end UnifIntegrable

section UniformIntegrable

/-! `UniformIntegrable`

In probability theory, uniform integrability normally refers to the condition that a sequence
of function `(fₙ)` satisfies for all `ε > 0`, there exists some `C ≥ 0` such that
`∫ x in {|fₙ| ≥ C}, fₙ x ∂μ ≤ ε` for all `n`.

In this section, we will develop some API for `UniformIntegrable` and prove that
`UniformIntegrable` is equivalent to this definition of uniform integrability.
-/


variable {p : ℝ≥0∞} {f : ι → α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313652b796b799acabeca063febbf5151bb2cc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
