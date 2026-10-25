# isElementary_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "959aafe50f541f4915c2e1332da4e252d9073c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:246c6185-9201-1ac4-6558-4126395fd2be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55f9a53f-59a0-53f0-92fa-656354104597",
  "kind": "theorem",
  "lexical_name": "isElementary_of_exists",
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
  "slug": "iselementary-of-exists--bd5c7997bf04b895599b3ea8",
  "source": {
    "blob": "959aafe50f541f4915c2e1332da4e252d9073c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5c7997bf04b895599b3ea8361a46b88742eec54b4902e478b0fbc9fd8afc57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f9a53f-59a0-53f0-92fa-656354104597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isElementary_of_exists (f : M ↪[L] N)
    (htv :
      ∀ (n : ℕ) (φ : L.BoundedFormula Empty (n + 1)) (x : Fin n → M) (a : N),
        φ.Realize default (Fin.snoc (f ∘ x) a : _ → N) →
          ∃ b : M, φ.Realize default (Fin.snoc (f ∘ x) (f b) : _ → N)) :
    ∀ {n} (φ : L.Formula (Fin n)) (x : Fin n → M), φ.Realize (f ∘ x) ↔ φ.Realize x := by
  suffices h :
    ∀ (n : ℕ) (φ : L.BoundedFormula Empty n) (xs : Fin n → M),
      φ.Realize (f ∘ default) (f ∘ xs) ↔ φ.Realize default xs
  · intro n φ x
    refine' φ.realize_relabel_sum_inr.symm.trans (_root_.trans (h n _ _) φ.realize_relabel_sum_inr)
  refine' fun n φ => φ.recOn _ _ _ _ _
  · exact fun {_} _ => Iff.rfl
  · intros
    simp [BoundedFormula.Realize, ← Sum.comp_elim, Embedding.realize_term]
  · intros
    simp [BoundedFormula.Realize, ← Sum.comp_elim, Embedding.realize_term]
    erw [map_rel f]
  · intro _ _ _ ih1 ih2 _
    simp [ih1, ih2]
  · intro n φ ih xs
    simp only [BoundedFormula.realize_all]
    refine' ⟨fun h a => _, _⟩
    · rw [← ih, Fin.comp_snoc]
      exact h (f a)
    · contrapose!
      rintro ⟨a, ha⟩
      obtain ⟨b, hb⟩ := htv n φ.not xs a (by
          rw [BoundedFormula.realize_not, ← Unique.eq_default (f ∘ default)]
          exact ha)
      · refine' ⟨b, fun h => hb (Eq.mp _ ((ih _).2 h))⟩
        rw [Unique.eq_default (f ∘ default), Fin.comp_snoc]
#align first_order.language.embedding.is_elementary_of_exists FirstOrder.Language.Embedding.isElementary_of_exists

/-- Bundles an embedding satisfying the Tarski-Vaught test as an elementary embedding. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959aafe50f541f4915c2e1332da4e252d9073c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
