# exists_finset_span_eq_linearIndepOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be1d6e94-0c05-62cd-57ab-293c2143079f",
  "kind": "theorem",
  "lexical_name": "exists_finset_span_eq_linearIndepOn",
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
  "slug": "exists-finset-span-eq-linearindepon--dd9ece8b1cbd110cba658882",
  "source": {
    "blob": "211656a0d219601785d209f9754a19919a5b4ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 549,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9ece8b1cbd110cba658882fb14fc697ae3a5013c8061f4919ea5b7de4732c9",
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

Occurrence: `result:be1d6e94-0c05-62cd-57ab-293c2143079f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_span_eq_linearIndepOn :
    ∃ t : Finset M, ↑t ⊆ s ∧ t.card = finrank K (span K s) ∧
      span K t = span K s ∧ LinearIndepOn K id (t : Set M) := by
  rcases exists_linearIndependent K s with ⟨t, ht_sub, ht_span, ht_indep⟩
  obtain ⟨t, rfl, ht_card⟩ : ∃ u : Finset M, ↑u = t ∧ u.card = finrank K (span K s) := by
    rw [← Cardinal.mk_set_eq_nat_iff_finset, finrank_eq_rank, ← ht_span, rank_span_set ht_indep]
  exact ⟨t, ht_sub, ht_card, ht_span, ht_indep⟩

variable (K s) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211656a0d219601785d209f9754a19919a5b4ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
