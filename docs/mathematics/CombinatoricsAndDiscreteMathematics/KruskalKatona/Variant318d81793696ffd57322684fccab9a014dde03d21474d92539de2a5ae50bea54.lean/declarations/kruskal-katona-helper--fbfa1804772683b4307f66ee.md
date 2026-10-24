# kruskal_katona_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a611409-e08d-916b-84e6-d4dc9b5b105e",
  "kind": "lemma",
  "lexical_name": "kruskal_katona_helper",
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
  "slug": "kruskal-katona-helper--fbfa1804772683b4307f66ee",
  "source": {
    "blob": "08dfb3532f0b77b4454d0354a84f98f7de6d331f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbfa1804772683b4307f66ee55906a55b1bd7f82f0a6fc2aa4a4021f2f02ca00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a611409-e08d-916b-84e6-d4dc9b5b105e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma kruskal_katona_helper {r : ℕ} (𝒜 : Finset (Finset (Fin n)))
    (h : (𝒜 : Set (Finset (Fin n))).Sized r) :
    ∃ ℬ : Finset (Finset (Fin n)), #(∂ ℬ) ≤ #(∂ 𝒜) ∧ #𝒜 = #ℬ ∧
      (ℬ : Set (Finset (Fin n))).Sized r ∧ ∀ U V, UsefulCompression U V → IsCompressed U V ℬ := by
  classical
  -- Are there any compressions we can make now?
  set usable : Finset (Finset (Fin n) × Finset (Fin n)) :=
    {t | UsefulCompression t.1 t.2 ∧ ¬ IsCompressed t.1 t.2 𝒜}
  obtain husable | husable := usable.eq_empty_or_nonempty
  -- No. Then where we are is the required set family.
  · refine ⟨𝒜, le_rfl, rfl, h, fun U V hUV ↦ ?_⟩
    rw [eq_empty_iff_forall_notMem] at husable
    by_contra h
    exact husable ⟨U, V⟩ <| mem_filter.2 ⟨mem_univ _, hUV, h⟩
  -- Yes. Then apply the smallest compression, then keep going
  obtain ⟨⟨U, V⟩, hUV, t⟩ := exists_min_image usable (fun t ↦ #t.1) husable
  rw [mem_filter] at hUV
  have h₂ : ∀ U₁ V₁, UsefulCompression U₁ V₁ → #U₁ < #U → IsCompressed U₁ V₁ 𝒜 := by
    rintro U₁ V₁ huseful hUcard
    by_contra h
    exact hUcard.not_ge <| t ⟨U₁, V₁⟩ <| mem_filter.2 ⟨mem_univ _, huseful, h⟩
  have p1 : #(∂ (𝓒 U V 𝒜)) ≤ #(∂ 𝒜) := compression_improved _ hUV.2.1 h₂
  obtain ⟨-, hUV', hu, hv, hmax⟩ := hUV.2.1
  have := familyMeasure_compression_lt_familyMeasure hmax hUV.2.2
  obtain ⟨t, q1, q2, q3, q4⟩ := UV.kruskal_katona_helper (𝓒 U V 𝒜) (h.uvCompression hUV')
  exact ⟨t, q1.trans p1, (card_compression _ _ _).symm.trans q2, q3, q4⟩
termination_by familyMeasure 𝒜

end UV

-- Finally we can prove Kruskal-Katona.
section KK
variable {r k i : ℕ} {𝒜 𝒞 : Finset <| Finset <| Fin n}

/-- The **Kruskal-Katona theorem**.

Given a set family `𝒜` consisting of `r`-sets, and `𝒞` an initial segment of the colex order of the
same size, the shadow of `𝒞` is smaller than the shadow of `𝒜`. In particular, this gives that the
minimum shadow size is achieved by initial segments of colex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08dfb3532f0b77b4454d0354a84f98f7de6d331f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
