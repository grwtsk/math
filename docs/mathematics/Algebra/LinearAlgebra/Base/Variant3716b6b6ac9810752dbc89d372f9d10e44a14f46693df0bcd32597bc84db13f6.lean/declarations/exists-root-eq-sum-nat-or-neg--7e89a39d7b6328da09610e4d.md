# exists_root_eq_sum_nat_or_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df32fccd-a626-f952-d139-b9d2798b6402",
  "kind": "lemma",
  "lexical_name": "exists_root_eq_sum_nat_or_neg",
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
  "slug": "exists-root-eq-sum-nat-or-neg--7e89a39d7b6328da09610e4d",
  "source": {
    "blob": "006a0a2da02669687773e0a31fde9d6e03bfa504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e89a39d7b6328da09610e4d9ed3130912b27f660b865abcc599ed26569284cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df32fccd-a626-f952-d139-b9d2798b6402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_root_eq_sum_nat_or_neg (i : ι) :
    ∃ f : ι → ℕ, P.root i = ∑ j, f j • P.root j ∨ P.root i = - ∑ j, f j • P.root j := by
  classical
  simp_rw [← neg_eq_iff_eq_neg]
  suffices ∀ m ∈ AddSubmonoid.closure (P.root '' b.support), ∃ f : ι → ℕ, m = ∑ j, f j • P.root j by
    rcases b.root_mem_or_neg_mem i with hi | hi
    · obtain ⟨f, hf⟩ := this _ hi
      exact ⟨f, Or.inl hf⟩
    · obtain ⟨f, hf⟩ := this _ hi
      exact ⟨f, Or.inr hf⟩
  intro m hm
  refine AddSubmonoid.closure_induction ?_ ⟨0, by simp⟩ ?_ hm
  · rintro - ⟨j, hj, rfl⟩
    exact ⟨Pi.single j 1, by simp [Pi.single_apply]⟩
  · intro _ _ _ _ ⟨f, hf⟩ ⟨g, hg⟩
    exact ⟨f + g, by simp [hf, hg, add_smul, Finset.sum_add_distrib]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006a0a2da02669687773e0a31fde9d6e03bfa504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
