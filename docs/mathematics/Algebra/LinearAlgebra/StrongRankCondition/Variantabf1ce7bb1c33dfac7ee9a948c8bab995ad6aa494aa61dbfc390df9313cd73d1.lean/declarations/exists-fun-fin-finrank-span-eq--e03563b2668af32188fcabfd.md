# exists_fun_fin_finrank_span_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67a1a61-c458-66d8-5d43-46535be05aab",
  "kind": "theorem",
  "lexical_name": "exists_fun_fin_finrank_span_eq",
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
  "slug": "exists-fun-fin-finrank-span-eq--e03563b2668af32188fcabfd",
  "source": {
    "blob": "211656a0d219601785d209f9754a19919a5b4ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 558,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03563b2668af32188fcabfd311125ae6eb82905a1a4697fcb8970869a57690b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67a1a61-c458-66d8-5d43-46535be05aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fun_fin_finrank_span_eq :
    ∃ f : Fin (finrank K (span K s)) → M, (∀ i, f i ∈ s) ∧ span K (range f) = span K s ∧
      LinearIndependent K f := by
  rcases exists_finset_span_eq_linearIndepOn K s with ⟨t, hts, ht_card, ht_span, ht_indep⟩
  set e := (Finset.equivFinOfCardEq ht_card).symm
  exact ⟨(↑) ∘ e, fun i ↦ hts (e i).2, by simpa, ht_indep.comp _ e.injective⟩

/-- This is a version of `mem_span_set` with an estimate on the number of terms in the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211656a0d219601785d209f9754a19919a5b4ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
