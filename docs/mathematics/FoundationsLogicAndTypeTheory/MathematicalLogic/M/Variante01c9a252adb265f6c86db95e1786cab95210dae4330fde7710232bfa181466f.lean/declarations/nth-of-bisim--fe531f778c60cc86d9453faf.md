# nth_of_bisim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0ff91b8-f9e4-0d28-0217-6071a4ad6437",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21389487-7889-7c56-8845-1aae62ae93e7",
  "kind": "theorem",
  "lexical_name": "nth_of_bisim",
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
  "slug": "nth-of-bisim--fe531f778c60cc86d9453faf",
  "source": {
    "blob": "d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe531f778c60cc86d9453faf55df1821602ab5d242ab2f6e8d3ce8d29d2dd846",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21389487-7889-7c56-8845-1aae62ae93e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_of_bisim [Inhabited (M F)] [DecidableEq F.A]
    (bisim : IsBisimulation R) (s₁ s₂) (ps : Path F) :
    (R s₁ s₂) →
      IsPath ps s₁ ∨ IsPath ps s₂ →
        iselect ps s₁ = iselect ps s₂ ∧
          ∃ (a : _) (f f' : F.B a → M F),
            isubtree ps s₁ = M.mk ⟨a, f⟩ ∧
              isubtree ps s₂ = M.mk ⟨a, f'⟩ ∧ ∀ i : F.B a, f i ~ f' i := by
  intro h₀ hh
  induction' s₁ using PFunctor.M.casesOn' with a f
  induction' s₂ using PFunctor.M.casesOn' with a' f'
  obtain rfl : a = a' := bisim.head h₀
  induction' ps with i ps ps_ih generalizing a f f'
  · exists rfl, a, f, f', rfl, rfl
    apply bisim.tail h₀
  obtain ⟨a', i⟩ := i
  obtain rfl : a = a' := by rcases hh with hh|hh <;> cases isPath_cons hh <;> rfl
  dsimp only [iselect] at ps_ih ⊢
  have h₁ := bisim.tail h₀ i
  induction' h : f i using PFunctor.M.casesOn' with a₀ f₀
  induction' h' : f' i using PFunctor.M.casesOn' with a₁ f₁
  simp only [h, h', isubtree_cons] at ps_ih ⊢
  rw [h, h'] at h₁
  obtain rfl : a₀ = a₁ := bisim.head h₁
  apply ps_ih _ _ _ h₁
  rw [← h, ← h']
  apply Or.imp isPath_cons' isPath_cons' hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
