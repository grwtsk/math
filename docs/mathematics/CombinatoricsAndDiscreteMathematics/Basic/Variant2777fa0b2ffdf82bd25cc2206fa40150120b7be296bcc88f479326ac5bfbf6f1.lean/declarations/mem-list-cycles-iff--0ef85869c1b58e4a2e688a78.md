# mem_list_cycles_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:989d7991-8303-7466-afb9-ab2fdd1cbafd",
  "kind": "theorem",
  "lexical_name": "mem_list_cycles_iff",
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
  "slug": "mem-list-cycles-iff--0ef85869c1b58e4a2e688a78",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1315,
    "line": 1288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ef85869c1b58e4a2e688a78f1d5c7a04244a6937d5e56bc2f9115312a25bbe1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:989d7991-8303-7466-afb9-ab2fdd1cbafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_list_cycles_iff {α : Type*} [Finite α] {l : List (Perm α)}
    (h1 : ∀ σ : Perm α, σ ∈ l → σ.IsCycle) (h2 : l.Pairwise Disjoint) {σ : Perm α} :
    σ ∈ l ↔ σ.IsCycle ∧ ∀ (a : α) (_ : σ a ≠ a), σ a = l.prod a := by
  suffices σ.IsCycle → (σ ∈ l ↔ ∀ (a : α) (_ : σ a ≠ a), σ a = l.prod a) by
    exact ⟨fun hσ => ⟨h1 σ hσ, (this (h1 σ hσ)).mp hσ⟩, fun hσ => (this hσ.1).mpr hσ.2⟩
  intro h3
  classical
    cases nonempty_fintype α
    constructor
    · intro h a ha
      exact eq_on_support_mem_disjoint h h2 _ (mem_support.mpr ha)
    · intro h
      have hσl : σ.support ⊆ l.prod.support := by
        intro x hx
        rw [mem_support] at hx
        rwa [mem_support, ← h _ hx]
      obtain ⟨a, ha, -⟩ := id h3
      rw [← mem_support] at ha
      obtain ⟨τ, hτ, hτa⟩ := exists_mem_support_of_mem_support_prod (hσl ha)
      have hτl : ∀ x ∈ τ.support, τ x = l.prod x := eq_on_support_mem_disjoint hτ h2
      have key : ∀ x ∈ σ.support ∩ τ.support, σ x = τ x := by
        intro x hx
        rw [h x (mem_support.mp (mem_of_mem_inter_left hx)), hτl x (mem_of_mem_inter_right hx)]
      convert hτ
      refine' h3.eq_on_support_inter_nonempty_congr (h1 _ hτ) key _ ha
      exact key a (mem_inter_of_mem ha hτa)
#align equiv.perm.mem_list_cycles_iff Equiv.Perm.mem_list_cycles_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
