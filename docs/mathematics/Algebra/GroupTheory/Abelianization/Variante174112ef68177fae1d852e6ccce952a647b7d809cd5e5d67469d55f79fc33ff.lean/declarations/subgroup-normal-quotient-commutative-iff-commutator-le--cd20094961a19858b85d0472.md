# Subgroup.Normal.quotient_commutative_iff_commutator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8954f16a-4aec-e110-2e97-d9030979193c",
  "kind": "theorem",
  "lexical_name": "Subgroup.Normal.quotient_commutative_iff_commutator_le",
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
  "slug": "subgroup-normal-quotient-commutative-iff-commutator-le--cd20094961a19858b85d0472",
  "source": {
    "blob": "907ca8c5e20288c48534c8812aed9f7cbb355063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 338,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd20094961a19858b85d047201eef2670919e896c7d2f1d09457f3b6f381693e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8954f16a-4aec-e110-2e97-d9030979193c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.Normal.quotient_commutative_iff_commutator_le {N : Subgroup G} [N.Normal] :
    Std.Commutative (· * · : G ⧸ N → _ → _) ↔ _root_.GRWTSK.Algebra.GroupTheory.Commutator.Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.commutator G ≤ N := by
  constructor
  · intro hcomm
    rw [commutator_eq_normalClosure]
    rw [← Subgroup.normalClosure_subset_iff]
    rintro x ⟨p, q, rfl⟩
    rw [SetLike.mem_coe, ← QuotientGroup.eq_one_iff, commutatorElement_def]
    simp only [SetLike.mem_coe, ← QuotientGroup.eq_one_iff, commutatorElement_def,
      QuotientGroup.mk_mul, QuotientGroup.mk_inv]
    simp only [← commutatorElement_def, commutatorElement_eq_one_iff_mul_comm]
    apply hcomm.comm
  · intro hGN
    apply Std.Commutative.mk
    rintro x'; obtain ⟨x, rfl⟩ := QuotientGroup.mk'_surjective N x'
    intro y'; obtain ⟨y, rfl⟩ := QuotientGroup.mk'_surjective N y'
    rw [← commutatorElement_eq_one_iff_mul_comm, ← map_commutatorElement,
      QuotientGroup.mk'_apply, QuotientGroup.eq_one_iff]
    apply hGN
    rw [commutator_eq_closure]
    exact Subgroup.subset_closure (commutator_mem_commutatorSet x y)

/-- If `N` is a normal subgroup of `G` and `H` a commutative subgroup such that `H ⊔ N = ⊤`,
  then `N` contains `commutator G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907ca8c5e20288c48534c8812aed9f7cbb355063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
