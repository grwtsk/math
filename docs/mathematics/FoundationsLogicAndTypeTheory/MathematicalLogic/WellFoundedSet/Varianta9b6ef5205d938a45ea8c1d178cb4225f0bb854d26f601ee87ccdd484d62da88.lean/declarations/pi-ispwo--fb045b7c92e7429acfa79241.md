# Pi.isPwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b530751c9d01a75bffa274649223d8d29334a9e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 825,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c350dc76-7a6f-f75f-425a-46b71a5c7c99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ff34edf-e453-49b4-2c4e-cd3d63da2b5c",
  "kind": "theorem",
  "lexical_name": "Pi.isPwo",
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
  "slug": "pi-ispwo--fb045b7c92e7429acfa79241",
  "source": {
    "blob": "b530751c9d01a75bffa274649223d8d29334a9e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 825,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb045b7c92e7429acfa79241818a6e0e7944626683e0ed9d513f8dc406f152a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff34edf-e453-49b4-2c4e-cd3d63da2b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.isPwo {α : ι → Type*} [∀ i, LinearOrder (α i)] [∀ i, IsWellOrder (α i) (· < ·)]
    [Finite ι] (s : Set (∀ i, α i)) : s.IsPwo := by
  cases nonempty_fintype ι
  suffices ∀ (s : Finset ι) (f : ℕ → ∀ s, α s),
    ∃ g : ℕ ↪o ℕ, ∀ ⦃a b : ℕ⦄, a ≤ b → ∀ x, x ∈ s → (f ∘ g) a x ≤ (f ∘ g) b x by
    refine isPwo_iff_exists_monotone_subseq.2 fun f _ => ?_
    simpa only [Finset.mem_univ, true_imp_iff] using this Finset.univ f
  refine' Finset.cons_induction _ _
  · intro f
    exists RelEmbedding.refl (· ≤ ·)
    simp only [IsEmpty.forall_iff, imp_true_iff, forall_const, Finset.not_mem_empty]
  · intro x s hx ih f
    obtain ⟨g, hg⟩ :=
      (IsWellFounded.wf.isWf univ).isPwo.exists_monotone_subseq (fun n => f n x) mem_univ
    obtain ⟨g', hg'⟩ := ih (f ∘ g)
    refine' ⟨g'.trans g, fun a b hab => (Finset.forall_mem_cons _ _).2 _⟩
    exact ⟨hg (OrderHomClass.mono g' hab), hg' hab⟩
#align pi.is_pwo Pi.isPwo

section ProdLex
variable {rα : α → α → Prop} {rβ : β → β → Prop} {f : γ → α} {g : γ → β} {s : Set γ}

/-- Stronger version of `prod.lex_wf`. Instead of requiring `rβ on g` to be well-founded, we only
require it to be well-founded on fibers of `f`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b530751c9d01a75bffa274649223d8d29334a9e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
