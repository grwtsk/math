# IsCardinalFiltered.of_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53883170-302e-f1e2-de78-fc7ffad4085b",
  "kind": "lemma",
  "lexical_name": "IsCardinalFiltered.of_final",
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
  "slug": "iscardinalfiltered-of-final--85c24d4e6e270822997cef2d",
  "source": {
    "blob": "f4c848d03449cb7400ec9eb4ac29ff3639a7d061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 362,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c24d4e6e270822997cef2d9c0eeb6cee8f109ca8d3700071af44ec3fefc856",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53883170-302e-f1e2-de78-fc7ffad4085b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalFiltered.of_final
    {J₁ : Type u} [Category.{v} J₁] {J₂ : Type u'} [Category.{v'} J₂]
    (F : J₁ ⥤ J₂) [F.Final] (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [IsCardinalFiltered J₁ κ] :
    IsCardinalFiltered J₂ κ := by
  have := isFiltered_of_isCardinalFiltered J₁ κ
  obtain ⟨h₁, h₂⟩ := (Functor.final_iff_of_isFiltered F).1 inferInstance
  rw [isCardinalFiltered_iff]
  refine ⟨fun ι j hι ↦ ?_, fun ι j k f hι ↦ ?_⟩
  · choose a ha using fun i ↦ h₁ (j i)
    exact ⟨F.obj (IsCardinalFiltered.max a hι),
      fun i ↦ ⟨(ha i).some ≫ F.map (toMax a hι i)⟩⟩
  · by_cases h : Nonempty ι
    · obtain ⟨l, ⟨a⟩⟩ := h₁ k
      choose m b hb using fun (i : ι × ι) ↦ h₂ (f i.1 ≫ a) (f i.2 ≫ a)
      simp only [Category.assoc, Prod.forall] at hb
      obtain ⟨n, c, d, hn⟩ := wideSpan b
        (hasCardinalLT_prod (Cardinal.IsRegular.aleph0_le Fact.out) hι hι)
      let i₀ : ι := Classical.arbitrary _
      exact ⟨F.obj n, a ≫ F.map d, f i₀ ≫ a ≫ F.map d,
        fun i ↦ by rw [← hn (i₀, i), Functor.map_comp, reassoc_of% (hb i₀ i)]⟩
    · simp only [not_nonempty_iff] at h
      obtain ⟨j', ⟨a⟩⟩ := h₁ j
      obtain ⟨k', ⟨b⟩⟩ := h₁ k
      exact ⟨F.obj (IsFiltered.max j' k'), b ≫ F.map (IsFiltered.rightToMax _ _),
        a ≫ F.map (IsFiltered.leftToMax _ _), by simp⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c848d03449cb7400ec9eb4ac29ff3639a7d061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
