# isElementary_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e0968cfa2104070db5c7114827e7aa2954167fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38c8a2acac77418100379fedeef1a6c6e8af1075bb498ae6a55ddfc901f13837.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94382457-f7ca-5245-b410-d4227f1cc66a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51f7f30c-dad0-b533-11a2-bb328dc00c74",
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
  "slug": "iselementary-of-exists--413a62f2688144795859c3ec",
  "source": {
    "blob": "6e0968cfa2104070db5c7114827e7aa2954167fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant38c8a2acac77418100379fedeef1a6c6e8af1075bb498ae6a55ddfc901f13837.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413a62f2688144795859c3ecaf2cc08b0b796ad78b8a42ccb3a49419bcacdee3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant38c8a2acac77418100379fedeef1a6c6e8af1075bb498ae6a55ddfc901f13837.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f7f30c-dad0-b533-11a2-bb328dc00c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isElementary_of_exists (f : M ↪[L] N)
    (htv :
      ∀ (n : ℕ) (φ : L.BoundedFormula Empty (n + 1)) (x : Fin n → M) (a : N),
        φ.Realize default (Fin.snoc (f ∘ x) a : _ → N) →
          ∃ b : M, φ.Realize default (Fin.snoc (f ∘ x) (f b) : _ → N)) :
    ∀ {n} (φ : L.Formula (Fin n)) (x : Fin n → M), φ.Realize (f ∘ x) ↔ φ.Realize x := by
  suffices h : ∀ (n : ℕ) (φ : L.BoundedFormula Empty n) (xs : Fin n → M),
      φ.Realize (f ∘ default) (f ∘ xs) ↔ φ.Realize default xs by
    intro n φ x
    exact φ.realize_relabel_sumInr.symm.trans (_root_.trans (h n _ _) φ.realize_relabel_sumInr)
  refine fun n φ => φ.recOn ?_ ?_ ?_ ?_ ?_
  · exact fun {_} _ => Iff.rfl
  · intros
    simp [BoundedFormula.Realize, ← Sum.comp_elim, HomClass.realize_term]
  · intro _ _ R ts xs
    simp only [BoundedFormula.Realize, ← Sum.comp_elim, HomClass.realize_term]
    simp_rw [← Function.comp_apply (f := (f : M → N)),
      ← Function.comp_apply (f := Term.realize (Sum.elim default xs)),
      ← Function.comp_apply (f := (f : M → N) ∘ Term.realize (Sum.elim default xs))]
    rw [Function.comp_assoc, map_rel f]
  · intro _ _ _ ih1 ih2 _
    simp [ih1, ih2]
  · intro n φ ih xs
    simp only [BoundedFormula.realize_all]
    refine ⟨fun h a => ?_, ?_⟩
    · rw [← ih, Fin.comp_snoc]
      exact h (f a)
    · contrapose!
      rintro ⟨a, ha⟩
      obtain ⟨b, hb⟩ := htv n φ.not xs a (by
          rw [BoundedFormula.realize_not, ← Unique.eq_default (f ∘ default)]
          exact ha)
      refine ⟨b, fun h => hb (Eq.mp ?_ ((ih _).2 h))⟩
      rw [Unique.eq_default (f ∘ default), Fin.comp_snoc]

/-- Bundles an embedding satisfying the Tarski-Vaught test as an elementary embedding. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant38c8a2acac77418100379fedeef1a6c6e8af1075bb498ae6a55ddfc901f13837.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant38c8a2acac77418100379fedeef1a6c6e8af1075bb498ae6a55ddfc901f13837.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e0968cfa2104070db5c7114827e7aa2954167fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
