# Module.pi_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 773,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44c058a2-9f79-aada-9a29-6b1ad74ce5af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:138f1259-10d3-8b68-2636-8f7f83d69100",
  "kind": "lemma",
  "lexical_name": "Module.pi_induction'",
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
  "slug": "module-pi-induction--e0fcac5ea36ef384c47cf004",
  "source": {
    "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 773,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0fcac5ea36ef384c47cf004d296e9ad50ab496097baa82f9b1da116ec4e6424",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:138f1259-10d3-8b68-2636-8f7f83d69100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.pi_induction' {ι : Type v} [Finite ι] (R : Type*) [Ring R]
    (motive : ∀ (N : Type u) [AddCommGroup N] [Module R N], Prop)
    (motive' : ∀ (N : Type (max u v)) [AddCommGroup N] [Module R N], Prop)
    (equiv : ∀ {N : Type u} {N' : Type (max u v)} [AddCommGroup N] [AddCommGroup N']
      [Module R N] [Module R N'], (N ≃ₗ[R] N') → motive N → motive' N')
    (equiv' : ∀ {N N' : Type (max u v)} [AddCommGroup N] [AddCommGroup N']
      [Module R N] [Module R N'], (N ≃ₗ[R] N') → motive' N → motive' N')
    (unit : motive PUnit) (prod : ∀ {N : Type u} {N' : Type (max u v)} [AddCommGroup N]
      [AddCommGroup N'] [Module R N] [Module R N'], motive N → motive' N' → motive' (N × N'))
    (M : ι → Type u) [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)]
    (h : ∀ i, motive (M i)) : motive' (∀ i, M i) := by
  cases nonempty_fintype ι
  revert M
  refine Fintype.induction_empty_option
    (fun α β _ e h M _ _ hM ↦ equiv' (LinearEquiv.piCongrLeft R M e) <| h _ fun i ↦ hM _)
    (fun M _ _ _ ↦ equiv default unit) (fun α _ h M _ _ hn ↦ ?_) ι
  exact equiv' (LinearEquiv.piOptionEquivProd R).symm <| prod (hn _) (h _ fun i ↦ hn i)

end Fin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb28df575bc416f6a7820f54d0bab7e056f2dba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
