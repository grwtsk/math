# charpoly_of_card_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f3ee951-d65f-9d8d-3ebb-a7b3cb06bf94",
  "kind": "lemma",
  "lexical_name": "charpoly_of_card_eq_two",
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
  "slug": "charpoly-of-card-eq-two--48eeed5d28e338ece5b35ff6",
  "source": {
    "blob": "0a2b30d6152c6119a3289753e0bd186b076b6bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 221,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48eeed5d28e338ece5b35ff6a303dc22e1be69c90d731c745ba7096cb11fcf1d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3ee951-d65f-9d8d-3ebb-a7b3cb06bf94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charpoly_of_card_eq_two [Nontrivial R] (hn : Fintype.card n = 2) :
    M.charpoly = X ^ 2 - C M.trace * X + C M.det := by
  have : Nonempty n := by rw [← Fintype.card_pos_iff]; lia
  ext i
  by_cases hi : i ∈ Finset.range 3
  · fin_cases hi
    · simp [det_eq_sign_charpoly_coeff, hn]
    · simp [trace_eq_neg_charpoly_coeff, hn]
    · simpa [leadingCoeff, charpoly_natDegree_eq_dim, hn, coeff_X] using
        M.charpoly_monic.leadingCoeff
  · rw [Finset.mem_range, not_lt, Nat.succ_le_iff] at hi
    suffices M.charpoly.coeff i = 0 by
      simpa [show i ≠ 2 by lia, show 1 ≠ i by lia, show i ≠ 0 by lia, coeff_X, coeff_C]
    apply coeff_eq_zero_of_natDegree_lt
    simpa [charpoly_natDegree_eq_dim, hn] using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9e392aa1a06b04e84d8ec4630fa99b7e011cbccce2812d26182ea5cd12e22657.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2b30d6152c6119a3289753e0bd186b076b6bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
