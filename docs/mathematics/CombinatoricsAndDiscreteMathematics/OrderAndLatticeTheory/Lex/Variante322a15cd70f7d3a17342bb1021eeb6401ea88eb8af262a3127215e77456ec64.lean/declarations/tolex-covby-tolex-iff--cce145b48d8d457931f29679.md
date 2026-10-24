# toLex_covBy_toLex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b57612dc-8d1c-831b-a0bd-be4b83f16bd2",
  "kind": "theorem",
  "lexical_name": "toLex_covBy_toLex_iff",
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
  "slug": "tolex-covby-tolex-iff--cce145b48d8d457931f29679",
  "source": {
    "blob": "78349ce7cab888c9274db39197ce7a8c1798e0cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce145b48d8d457931f296793ae1dfcb06b4809fc333fad1ae194fc98186324a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57612dc-8d1c-831b-a0bd-be4b83f16bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLex_covBy_toLex_iff {a₁ a₂ : α} {b₁ b₂ : β} :
    toLex (a₁, b₁) ⋖ toLex (a₂, b₂) ↔ a₁ = a₂ ∧ b₁ ⋖ b₂ ∨ a₁ ⋖ a₂ ∧ IsMax b₁ ∧ IsMin b₂ := by
  simp only [CovBy, toLex_lt_toLex, toLex.surjective.forall, Prod.forall, isMax_iff_forall_not_lt,
    isMin_iff_forall_not_lt]
  constructor
  · rintro ⟨ha | ⟨rfl, hb⟩, h₂⟩
    · refine .inr ⟨⟨ha, fun c hc₁ hc₂ ↦ ?_⟩, fun c hc ↦ ?_, fun c hc ↦ ?_⟩
      · exact h₂ c b₁ (.inl hc₁) (.inl hc₂)
      · exact h₂ a₁ c (.inr ⟨rfl, hc⟩) (.inl ha)
      · exact h₂ a₂ c (.inl ha) (.inr ⟨rfl, hc⟩)
    · exact .inl ⟨rfl, hb, fun c hc₁ hc₂ ↦ h₂ _ _ (.inr ⟨rfl, hc₁⟩) (.inr ⟨rfl, hc₂⟩)⟩
  · rintro (⟨rfl, hb, h⟩ | ⟨⟨ha, h⟩, hb₁, hb₂⟩)
    · refine ⟨.inr ⟨rfl, hb⟩, fun a b ↦ ?_⟩
      rintro (hlt₁ | ⟨rfl, hlt₁⟩) (hlt₂ | ⟨heq, hlt₂⟩)
      exacts [hlt₁.not_lt hlt₂, hlt₁.ne' heq, hlt₂.false, h hlt₁ hlt₂]
    · refine ⟨.inl ha, fun a b ↦ ?_⟩
      rintro (hlt₁ | ⟨rfl, hlt₁⟩) (hlt₂ | ⟨heq, hlt₂⟩)
      exacts [h hlt₁ hlt₂, hb₂ _ hlt₂, hb₁ _ hlt₁, hb₁ _ hlt₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78349ce7cab888c9274db39197ce7a8c1798e0cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
