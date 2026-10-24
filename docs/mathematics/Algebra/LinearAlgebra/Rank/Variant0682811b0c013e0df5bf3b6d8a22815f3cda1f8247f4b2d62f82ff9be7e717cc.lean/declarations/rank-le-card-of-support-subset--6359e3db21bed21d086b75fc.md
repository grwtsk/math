# rank_le_card_of_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec3d798b-6d5a-b7be-ea8c-cf90b95d44ee",
  "kind": "theorem",
  "lexical_name": "rank_le_card_of_support_subset",
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
  "slug": "rank-le-card-of-support-subset--6359e3db21bed21d086b75fc",
  "source": {
    "blob": "d5acbd5f7b8f25078c403b18cb5616273c22d3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 381,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6359e3db21bed21d086b75fc7f09dc8f8241bf8ae5f28aec3a3dd42729e191a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec3d798b-6d5a-b7be-ea8c-cf90b95d44ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_le_card_of_support_subset [CommSemiring R] [StrongRankCondition R] (A : Matrix m n R)
    (s : Finset m) (hz : Function.support A.row ⊆ s) : A.rank ≤ s.card := by
  rw [Function.support_subset_iff'] at hz
  classical
  set B : Matrix m {x // x ∈ s} R := Matrix.of fun i a => if (a : m) = i then 1 else 0 with hBdef
  have hB : B * A.submatrix Subtype.val id = A := by
    ext i j
    simp only [hBdef, mul_apply, of_apply, submatrix_apply, id_eq]
    by_cases hi : i ∈ s
    · rw [Fintype.sum_eq_single (⟨i, hi⟩ : {x // x ∈ s})
        fun a ha => by rw [ite_eq_right fun he => ha (Subtype.ext he), zero_mul],
        ite_eq_left rfl, one_mul]
    · have h0 : A i = 0 := hz i hi
      aesop
  calc A.rank = (B * A.submatrix Subtype.val id).rank := by rw [hB]
    _ ≤ (A.submatrix Subtype.val id).rank := rank_mul_le_right _ _
    _ ≤ Fintype.card {x // x ∈ s} := rank_le_card_height _
    _ = s.card := Fintype.card_coe s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5acbd5f7b8f25078c403b18cb5616273c22d3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
