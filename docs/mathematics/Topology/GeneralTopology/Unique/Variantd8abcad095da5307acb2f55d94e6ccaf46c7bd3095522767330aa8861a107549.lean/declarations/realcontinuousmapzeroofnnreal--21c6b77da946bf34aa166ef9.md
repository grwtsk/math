# realContinuousMapZeroOfNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57fccd978b600e993eac15e5977a2ab8657321ed382544ae36bca4b90d3b3261",
  "kind": "def",
  "lexical_name": "realContinuousMapZeroOfNNReal",
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
  "slug": "realcontinuousmapzeroofnnreal--21c6b77da946bf34aa166ef9",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21c6b77da946bf34aa166ef98fc659203eb217ffa7ab3c7cebef27e69013861e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57fccd978b600e993eac15e5977a2ab8657321ed382544ae36bca4b90d3b3261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def realContinuousMapZeroOfNNReal (φ : C(X, ℝ≥0)₀ →⋆ₙₐ[ℝ≥0] A) :
    C(X, ℝ)₀ →⋆ₙₐ[ℝ] A where
  toFun f := φ f.toNNReal - φ (-f).toNNReal
  map_zero' := by simp
  map_mul' f g := by
    have := congr(φ $(f.toNNReal_mul_add_neg_mul_add_mul_neg_eq g))
    simp only [map_add, map_mul, sub_mul, mul_sub] at this ⊢
    rw [← sub_eq_zero] at this ⊢
    rw [← this]
    abel
  map_add' f g := by
    have := congr(φ $(f.toNNReal_add_add_neg_add_neg_eq g))
    simp only [map_add] at this ⊢
    rw [← sub_eq_zero] at this ⊢
    rw [← this]
    abel
  map_smul' r f := by
    simp only [MonoidHom.id_apply]
    by_cases! hr : 0 ≤ r
    · lift r to ℝ≥0 using hr
      simp only [← smul_def, toNNReal_smul, map_smul, toNNReal_neg_smul, smul_sub]
    · rw [← neg_pos] at hr
      rw [← neg_smul]
      nth_rw 1 [← neg_neg r]
      nth_rw 3 [← neg_neg r]
      lift -r to ℝ≥0 using hr.le with r
      simp only [neg_smul, ← smul_def, toNNReal_neg_smul, map_smul, toNNReal_smul, smul_sub,
        sub_neg_eq_add]
      rw [sub_eq_add_neg, add_comm]
  map_star' f := by simp only [star_trivial, star_sub, ← map_star]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
