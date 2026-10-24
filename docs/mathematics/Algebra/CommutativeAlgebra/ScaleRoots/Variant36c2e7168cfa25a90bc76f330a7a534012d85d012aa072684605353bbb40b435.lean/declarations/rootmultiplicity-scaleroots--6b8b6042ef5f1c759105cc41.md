# rootMultiplicity_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a598ca4e-bcff-cd9f-0f3a-605216537455",
  "kind": "lemma",
  "lexical_name": "rootMultiplicity_scaleRoots",
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
  "slug": "rootmultiplicity-scaleroots--6b8b6042ef5f1c759105cc41",
  "source": {
    "blob": "39eea03aa4745efc5bd2f3e803d1c9455d3325da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 339,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b8b6042ef5f1c759105cc41349f0860ba54dfefdf1793bd35bffe26bf29de01",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a598ca4e-bcff-cd9f-0f3a-605216537455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rootMultiplicity_scaleRoots (p : R[X]) {r a : R} (hr : IsLeftRegular r) :
    rootMultiplicity (r * a) (p.scaleRoots r) = rootMultiplicity a p := by
  cases subsingleton_or_nontrivial R
  · simp [Subsingleton.elim p 0]
  obtain rfl | hp := eq_or_ne p 0
  · simp
  obtain ⟨q, e, hq⟩ := exists_eq_pow_rootMultiplicity_mul_and_not_dvd p hp a
  have hq0 : q ≠ 0 := by contrapose hp; simp_all
  conv_lhs => rw [e]
  rw [mul_scaleRoots', pow_scaleRoots', X_sub_C_scaleRoots, mul_comm, mul_comm _ (q.scaleRoots r),
    rootMultiplicity_mul_X_sub_C_pow (q.scaleRoots_ne_zero hq0 _)]
  · rw [dvd_iff_isRoot, IsRoot.def] at hq
    simp only [Nat.add_eq_right, rootMultiplicity_eq_zero_iff, IsRoot.def]
    rw [mul_comm, scaleRoots_eval_mul, (hr.pow q.natDegree).mul_left_eq_zero_iff]
    tauto
  · simp
  · rwa [leadingCoeff_pow' (by simp), leadingCoeff_X_sub_C,
      one_pow, one_mul, ne_eq, leadingCoeff_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39eea03aa4745efc5bd2f3e803d1c9455d3325da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
