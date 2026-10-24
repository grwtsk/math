# subset_span_finite_of_subset_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:969c1718-4244-7c8b-18de-6e5bf33e4725",
  "kind": "theorem",
  "lexical_name": "subset_span_finite_of_subset_span",
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
  "slug": "subset-span-finite-of-subset-span--0d90b75d474ea638d93ba0f5",
  "source": {
    "blob": "5cbc952388035aacbf1dd73f4d9d56feb0e66559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 614,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d90b75d474ea638d93ba0f5be1ace1b5ee70bcbcad8e8b7d08b2b31c8b72b54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:969c1718-4244-7c8b-18de-6e5bf33e4725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_span_finite_of_subset_span {s : Set M} {t : Finset M} (ht : (t : Set M) ⊆ span R s) :
    ∃ T : Finset M, ↑T ⊆ s ∧ (t : Set M) ⊆ span R (T : Set M) := by
  classical
  induction t using Finset.induction_on with
  | empty => exact ⟨∅, by simp⟩
  | insert a t hat IH =>
    obtain ⟨T, hTs, htT⟩ := IH (by simp_all [Set.insert_subset_iff])
    obtain ⟨T', hT's, haT'⟩ := mem_span_finite_of_mem_span (ht (Finset.mem_insert_self _ _))
    refine ⟨T ∪ T', by simp_all, ?_⟩
    simp only [Finset.coe_insert, Finset.coe_union, span_union, insert_subset_iff, SetLike.mem_coe]
    exact ⟨mem_sup_right haT', htT.trans (le_sup_left (a := span R _))⟩

end

end AddCommMonoid

section AddCommGroup

variable [Ring R] [AddCommGroup M] [Module R M] {ι : Type*} [DecidableEq ι] {i j : ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cbc952388035aacbf1dd73f4d9d56feb0e66559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
