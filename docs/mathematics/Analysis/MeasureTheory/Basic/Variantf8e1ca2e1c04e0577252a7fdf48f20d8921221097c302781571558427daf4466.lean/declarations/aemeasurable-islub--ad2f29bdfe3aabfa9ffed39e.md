# AEMeasurable.isLUB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47b94da4-68d0-96fd-0a4b-3046d2706200",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.isLUB",
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
  "slug": "aemeasurable-islub--ad2f29bdfe3aabfa9ffed39e",
  "source": {
    "blob": "bf7761044a2eca410d520e2d468bbdb6aa480c7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1200,
    "line": 1183,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad2f29bdfe3aabfa9ffed39e9d4b5965c2b6d7ce6873ec87ef3f3ab045dab7c6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b94da4-68d0-96fd-0a4b-3046d2706200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1183–1200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.isLUB {ι} {μ : Measure δ} [Countable ι] {f : ι → δ → α} {g : δ → α}
    (hf : ∀ i, AEMeasurable (f i) μ) (hg : ∀ᵐ b ∂μ, IsLUB { a | ∃ i, f i b = a } (g b)) :
    AEMeasurable g μ := by
  rcases eq_zero_or_neZero μ with rfl | hμ
  · exact aemeasurable_zero_measure
  by_cases hι : Nonempty ι
  · exact AEMeasurable.is_lub_of_nonempty hι hf hg
  suffices ∃ x, g =ᵐ[μ] fun _ => g x by
    exact ⟨fun _ => g this.choose, measurable_const, this.choose_spec⟩
  have h_empty : ∀ x, { a : α | ∃ i : ι, f i x = a } = ∅ := by
    intro x
    ext1 y
    rw [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false_iff]
    exact fun hi => hι (nonempty_of_exists hi)
  simp_rw [h_empty] at hg
  exact ⟨hg.exists.choose, hg.mono fun y hy => IsLUB.unique hy hg.exists.choose_spec⟩
#align ae_measurable.is_lub AEMeasurable.isLUB

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean#L1183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7761044a2eca410d520e2d468bbdb6aa480c7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
