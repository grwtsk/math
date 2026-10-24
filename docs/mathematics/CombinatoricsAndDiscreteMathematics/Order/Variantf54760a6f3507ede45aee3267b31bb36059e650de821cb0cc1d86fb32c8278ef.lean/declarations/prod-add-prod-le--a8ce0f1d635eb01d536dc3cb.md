# prod_add_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "796887e96d72505541d41659daae1db19cc44dc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03ab3252-9dc8-bbdd-d98f-26a0343285f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e5489ae-0095-e3f2-fdac-b644337768d4",
  "kind": "theorem",
  "lexical_name": "prod_add_prod_le",
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
  "slug": "prod-add-prod-le--a8ce0f1d635eb01d536dc3cb",
  "source": {
    "blob": "796887e96d72505541d41659daae1db19cc44dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 623,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8ce0f1d635eb01d536dc3cbbcfd6154077799dc83510ac4f4c4e0e80c3296e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5489ae-0095-e3f2-fdac-b644337768d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_add_prod_le {i : ι} {f g h : ι → R} (hi : i ∈ s) (h2i : g i + h i ≤ f i)
    (hgf : ∀ j ∈ s, j ≠ i → g j ≤ f j) (hhf : ∀ j ∈ s, j ≠ i → h j ≤ f j) (hg : ∀ i ∈ s, 0 ≤ g i)
    (hh : ∀ i ∈ s, 0 ≤ h i) : ((∏ i in s, g i) + ∏ i in s, h i) ≤ ∏ i in s, f i := by
  simp_rw [prod_eq_mul_prod_diff_singleton hi]
  refine le_trans ?_ (mul_le_mul_of_nonneg_right h2i ?_)
  · rw [right_distrib]
    refine add_le_add ?_ ?_ <;>
    · refine mul_le_mul_of_nonneg_left ?_ ?_
      · refine prod_le_prod ?_ ?_
        <;> simp (config := { contextual := true }) [*]
      · try apply_assumption
        try assumption
  · apply prod_nonneg
    simp only [and_imp, mem_sdiff, mem_singleton]
    intro j h1j h2j
    exact le_trans (hg j h1j) (hgf j h1j h2j)
#align finset.prod_add_prod_le Finset.prod_add_prod_le

end OrderedCommSemiring

section StrictOrderedCommSemiring

variable [StrictOrderedCommSemiring R] [Nontrivial R] {f : ι → R} {s : Finset ι}

-- This is also true for an ordered commutative multiplicative monoid with zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796887e96d72505541d41659daae1db19cc44dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
