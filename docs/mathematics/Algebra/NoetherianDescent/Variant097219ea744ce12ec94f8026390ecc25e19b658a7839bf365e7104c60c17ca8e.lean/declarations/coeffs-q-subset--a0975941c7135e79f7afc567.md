# coeffs_q_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3652e141-401c-ca9f-ef9b-e535d4551298",
  "kind": "lemma",
  "lexical_name": "coeffs_q_subset",
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
  "slug": "coeffs-q-subset--a0975941c7135e79f7afc567",
  "source": {
    "blob": "2755b2b19d3f590bf08e0342c37f71ba9a7974d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0975941c7135e79f7afc5677fb2231909cf6028cd30a60c1aa84c76be80a7f5",
  "verification": {
    "reference": "docs/verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3652e141-401c-ca9f-ef9b-e535d4551298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeffs_q_subset (i) :
    ↑(D.q i).coeffs ⊆
      Set.range (MvPolynomial.map (σ := D.vars) (algebraMap (D.subalgebra R) A)) := by
  intro q hq
  have : (q.coeffs : Set A) ⊆ ⋃ i, ⋃ x ∈ (D.q i).coeffs, ↑(coeffs x) :=
    Set.subset_iUnion_of_subset i (Set.subset_iUnion₂_of_subset q hq subset_rfl)
  #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal
  without the `rw`. It is not yet clear whether this is due to defeq abuse in Mathlib or a
  problem in the new canonicalizer; a minimization would help. The original proof was:
  `grind [MvPolynomial.mem_range_map_iff_coeffs_subset, subalgebra,
    Subalgebra.setRange_algebraMap, Algebra.subset_adjoin]` -/
  rw [MvPolynomial.mem_range_map_iff_coeffs_subset, Subalgebra.setRange_algebraMap]
  grind [subalgebra, Algebra.subset_adjoin]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2755b2b19d3f590bf08e0342c37f71ba9a7974d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
