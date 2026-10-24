# pderiv_inl_universalFactorizationMap_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cf8d8d6-a345-cf0e-7640-3fd31f53b16a",
  "kind": "lemma",
  "lexical_name": "pderiv_inl_universalFactorizationMap_X",
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
  "slug": "pderiv-inl-universalfactorizationmap-x--9e629d8f50fdc3e37d5e3e0b",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 253,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e629d8f50fdc3e37d5e3e0b7fea94b8abc90d53759eeeec33fda90cfdb19867",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cf8d8d6-a345-cf0e-7640-3fd31f53b16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pderiv_inl_universalFactorizationMap_X (i j) :
    pderiv (Sum.inl i) (tensorEquivSum R (Fin m) (Fin k) R
      (universalFactorizationMap R n m k hn (X j))) =
    if ↑j < (i : ℕ) then 0 else if h : ↑j - ↑i < k then X (.inr ⟨↑j - ↑i, h⟩)
      else if ↑j - ↑i = k then 1 else 0 := by
  trans ∑ x ∈ Finset.antidiagonal ↑j,
    if h : x.2 < k then if x.1 < m ∧ x.1 = ↑i then X (Sum.inr ⟨x.2, h⟩) else 0
    else if x.2 = k ∧ x.1 < m ∧ x.1 = ↑i then 1 else 0
  · simp [universalFactorizationMap, mapEquivMonic, Polynomial.coeff_mul, coeff_freeMonic,
      apply_dite, apply_ite, ← Algebra.TensorProduct.one_def,
      Pi.single_apply, Fin.ext_iff, ← ite_and]
  · obtain h | h := lt_or_ge j.1 i.1
    · rw [Finset.sum_eq_zero, ite_eq_left h]
      simp only [Finset.mem_antidiagonal, Prod.forall]
      intro a b hab
      simp [show a ≠ i by lia]
    rw [Finset.sum_eq_single ⟨i.1, j.1 - i.1⟩, ite_eq_right h.not_gt]
    · simp
    · simp only [Finset.mem_antidiagonal, ne_eq, Prod.forall, Prod.mk.injEq, not_and]
      intro a b e h
      simp [show a ≠ i by lia]
    · simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
