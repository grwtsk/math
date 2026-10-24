# iSupIndep.iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0afa149-25c2-52f5-9945-33134171b9c4",
  "kind": "theorem",
  "lexical_name": "iSupIndep.iInf",
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
  "slug": "isupindep-iinf--ee583749dd4639da2b02e41e",
  "source": {
    "blob": "702fa19e0bede12ecb99e575786587f0db373667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 584,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33cff382346dd8d894bb0bc6e166cb8f60b4a9d48401c229d47359a2a2229470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee583749dd4639da2b02e41ee8b311d07c2594f3d7d0c8715465c58a34a205b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33cff382346dd8d894bb0bc6e166cb8f60b4a9d48401c229d47359a2a2229470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0afa149-25c2-52f5-9945-33134171b9c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep.iInf {ι : Type*} {κ : ι → Type*} (f : (i : ι) → κ i → α)
    (h_indep : ∀ i : ι, iSupIndep (f i)) : iSupIndep (fun k : (i : ι) → κ i ↦ ⨅ i, f i (k i)) := by
  rw [iSupIndep_iff_supIndep]
  intro s
  induction s using Finset.strongInduction with
  | H s ih =>
    by_cases hs : 1 < s.card; swap
    · by_cases hcard0 : s.card = 0 <;> grind [Finset.card_eq_zero, Finset.card_eq_one]
    · obtain ⟨k₁, k₂, _, _, h⟩ := Finset.one_lt_card_iff.mp hs
      obtain ⟨i, hi⟩ : ∃ i : ι, k₁ i ≠ k₂ i := Function.ne_iff.mp h
      classical
      rw [← Finset.image_biUnion_filter_eq s (· i)]
      refine Finset.SupIndep.biUnion ?_ (by grind)
      apply ((h_indep i).supIndep' _).mono
      simp_rw [Finset.sup_le_iff, Finset.mem_filter, and_imp]
      rintro _ _ _ _ rfl
      exact iInf_le _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33cff382346dd8d894bb0bc6e166cb8f60b4a9d48401c229d47359a2a2229470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33cff382346dd8d894bb0bc6e166cb8f60b4a9d48401c229d47359a2a2229470.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702fa19e0bede12ecb99e575786587f0db373667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
