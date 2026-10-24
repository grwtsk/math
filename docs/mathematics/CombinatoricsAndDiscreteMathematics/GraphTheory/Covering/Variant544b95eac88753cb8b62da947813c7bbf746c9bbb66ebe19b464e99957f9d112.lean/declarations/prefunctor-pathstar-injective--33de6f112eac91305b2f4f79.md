# Prefunctor.pathStar_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dac948c572ccfdaca84fcf7883f36c11c1cc2d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a2d40bb-f44a-dc93-cc70-b39839eb533c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:386af002-acd3-821e-a9a6-064af4e04fef",
  "kind": "theorem",
  "lexical_name": "Prefunctor.pathStar_injective",
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
  "slug": "prefunctor-pathstar-injective--33de6f112eac91305b2f4f79",
  "source": {
    "blob": "8dac948c572ccfdaca84fcf7883f36c11c1cc2d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33de6f112eac91305b2f4f797bc54e93ce81c62d6d1e0c0b80b1f452eede0d11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386af002-acd3-821e-a9a6-064af4e04fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prefunctor.pathStar_injective (hφ : ∀ u, Injective (φ.star u)) (u : U) :
    Injective (φ.pathStar u) := by
  dsimp +unfoldPartialApp [Prefunctor.pathStar, Quiver.PathStar.mk]
  rintro ⟨v₁, p₁⟩
  induction p₁ with
  | nil =>
    rintro ⟨y₂, p₂⟩
    rcases p₂ with - | ⟨p₂, e₂⟩
    · intro; rfl -- Porting note: goal not present in lean3.
    · intro h
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      exfalso
      obtain ⟨h, h'⟩ := h
      rw [← Path.eq_cast_iff_heq rfl h.symm, Path.cast_cons] at h'
      exact (Path.nil_ne_cons _ _) h'
  | cons p₁ e₁ ih =>
    rename_i x₁ y₁
    rintro ⟨y₂, p₂⟩
    rcases p₂ with - | ⟨p₂, e₂⟩
    · intro h
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      exfalso
      obtain ⟨h, h'⟩ := h
      rw [← Path.cast_eq_iff_heq rfl h, Path.cast_cons] at h'
      exact (Path.cons_ne_nil _ _) h'
    · rename_i x₂
      intro h
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      obtain ⟨hφy, h'⟩ := h
      rw [← Path.cast_eq_iff_heq rfl hφy, Path.cast_cons, Path.cast_rfl_rfl] at h'
      have hφx := Path.obj_eq_of_cons_eq_cons h'
      have hφp := Path.heq_of_cons_eq_cons h'
      have hφe := HEq.trans (Hom.cast_heq rfl hφy _).symm (Path.hom_heq_of_cons_eq_cons h')
      have h_path_star : φ.pathStar u ⟨x₁, p₁⟩ = φ.pathStar u ⟨x₂, p₂⟩ := by
        simp only [Prefunctor.pathStar_apply, Sigma.mk.inj_iff]; exact ⟨hφx, hφp⟩
      cases ih h_path_star
      have h_star : φ.star x₁ ⟨y₁, e₁⟩ = φ.star x₁ ⟨y₂, e₂⟩ := by
        simp only [Prefunctor.star_apply, Sigma.mk.inj_iff]; exact ⟨hφy, hφe⟩
      cases hφ x₁ h_star
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dac948c572ccfdaca84fcf7883f36c11c1cc2d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
