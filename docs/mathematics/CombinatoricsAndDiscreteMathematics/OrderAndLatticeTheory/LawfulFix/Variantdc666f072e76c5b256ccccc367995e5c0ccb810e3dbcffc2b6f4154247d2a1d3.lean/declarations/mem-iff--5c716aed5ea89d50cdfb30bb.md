# mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05a1e550cd6f35871b4b7fec4c667be8516401e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc666f072e76c5b256ccccc367995e5c0ccb810e3dbcffc2b6f4154247d2a1d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:beeeaf0d-1e1e-4c6b-3ebe-c7ec433f191e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6889d4c-984c-e362-bb13-43b7ba5cee27",
  "kind": "theorem",
  "lexical_name": "mem_iff",
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
  "slug": "mem-iff--5c716aed5ea89d50cdfb30bb",
  "source": {
    "blob": "05a1e550cd6f35871b4b7fec4c667be8516401e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variantdc666f072e76c5b256ccccc367995e5c0ccb810e3dbcffc2b6f4154247d2a1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c716aed5ea89d50cdfb30bb5cce08b168c2008318abc080d1bdda876b38372e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variantdc666f072e76c5b256ccccc367995e5c0ccb810e3dbcffc2b6f4154247d2a1d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6889d4c-984c-e362-bb13-43b7ba5cee27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iff (a : α) (b : β a) : b ∈ Part.fix f a ↔ ∃ i, b ∈ approx f i a := by
  classical
  by_cases h₀ : ∃ i : ℕ, (approx f i a).Dom
  · simp only [Part.fix_def f h₀]
    constructor <;> intro hh
    · exact ⟨_, hh⟩
    have h₁ := Nat.find_spec h₀
    rw [dom_iff_mem] at h₁
    obtain ⟨y, h₁⟩ := h₁
    replace h₁ := approx_mono' f _ _ h₁
    suffices y = b by
      subst this
      exact h₁
    obtain ⟨i, hh⟩ := hh
    revert h₁; generalize succ (Nat.find h₀) = j; intro h₁
    wlog case : i ≤ j
    · rcases le_total i j with H | H <;> [skip; symm] <;> apply_assumption <;> assumption
    replace hh := approx_mono f case _ _ hh
    apply Part.mem_unique h₁ hh
  · simp only [fix_def' (⇑f) h₀, not_exists, false_iff, notMem_none]
    simp only [dom_iff_mem, not_exists] at h₀
    intro; apply h₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variantdc666f072e76c5b256ccccc367995e5c0ccb810e3dbcffc2b6f4154247d2a1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variantdc666f072e76c5b256ccccc367995e5c0ccb810e3dbcffc2b6f4154247d2a1d3.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a1e550cd6f35871b4b7fec4c667be8516401e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
