# mem_span_iff_mem_addSubgroup_closure_nonunital

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d678e77f-5b6a-6ac5-e971-cb11a7ba8330",
  "kind": "lemma",
  "lexical_name": "mem_span_iff_mem_addSubgroup_closure_nonunital",
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
  "slug": "mem-span-iff-mem-addsubgroup-closure-nonunital--174106b1d78a3f6ebb21b7b0",
  "source": {
    "blob": "6df2815c25807fc32d429257dc5ff09446d2fa6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 223,
    "path": "GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:174106b1d78a3f6ebb21b7b03612db2b72af61d9fc0125496a4ae9b754bf1ba5",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d678e77f-5b6a-6ac5-e971-cb11a7ba8330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_span_iff_mem_addSubgroup_closure_nonunital {s : Set R} {z : R} :
    z ∈ span s ↔ z ∈ AddSubgroup.closure (s ∪ s * univ ∪ univ * s ∪ univ * s * univ) := by
  trans z ∈ span (s ∪ s * univ ∪ univ * s ∪ univ * s * univ)
  · refine ⟨(span_mono (by simp only [Set.union_assoc, Set.subset_union_left]) ·), fun h ↦ ?_⟩
    refine mem_span_iff.mp h (span s) ?_
    simp only [union_subset_iff, union_assoc]
    exact ⟨subset_span, subset_mul_set subset_span _, set_mul_subset subset_span _,
      subset_mul_set (set_mul_subset subset_span _) _⟩
  · refine mem_span_iff_mem_addSubgroup_closure_absorbing ?_ ?_
    · rintro x y (((hy | ⟨y, hy, r, -, rfl⟩) | ⟨r, -, y, hy, rfl⟩) |
        ⟨-, ⟨r', -, y, hy, rfl⟩, r, -, rfl⟩)
      · exact .inl <| .inr <| ⟨x, mem_univ _, y, hy, rfl⟩
      · exact .inr <| ⟨x * y, ⟨x, mem_univ _, y, hy, rfl⟩, r, mem_univ _, mul_assoc ..⟩
      · exact .inl <| .inr <| ⟨x * r, mem_univ _, y, hy, mul_assoc ..⟩
      · refine .inr <| ⟨x * r' * y, ⟨x * r', mem_univ _, y, hy, ?_⟩, ⟨r, mem_univ _, ?_⟩⟩
        all_goals simp [mul_assoc]
    · rintro y x (((hy | ⟨y, hy, r, -, rfl⟩) | ⟨r, -, y, hy, rfl⟩) |
        ⟨-, ⟨r', -, y, hy, rfl⟩, r, -, rfl⟩)
      · exact .inl <| .inl <| .inr ⟨y, hy, x, mem_univ _, rfl⟩
      · exact .inl <| .inl <| .inr ⟨y, hy, r * x, mem_univ _, (mul_assoc ..).symm⟩
      · exact .inr <| ⟨r * y, ⟨r, mem_univ _, y, hy, rfl⟩, x, mem_univ _, rfl⟩
      · refine .inr <| ⟨r' * y, ⟨r', mem_univ _, y, hy, rfl⟩, r * x, mem_univ _, ?_⟩
        simp [mul_assoc]

end NonUnitalRing

section Ring

variable {R : Type*} [Ring R]

open Pointwise Set in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df2815c25807fc32d429257dc5ff09446d2fa6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
