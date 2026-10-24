# eval_mul_X_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7da220be2ed478f283e26c3b92a1779add030d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71cf6c7b-387d-220a-668c-c55273dd978e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee95b4d7-c0d0-9248-a116-0efa27554f07",
  "kind": "theorem",
  "lexical_name": "eval_mul_X_sub_C",
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
  "slug": "eval-mul-x-sub-c--43b726c6be4dac8aed7915fb",
  "source": {
    "blob": "d7da220be2ed478f283e26c3b92a1779add030d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 547,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b726c6be4dac8aed7915fbe8afc22c67737c75459f7974a00036c3092dcb52",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee95b4d7-c0d0-9248-a116-0efa27554f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_mul_X_sub_C {p : R[X]} (r : R) : (p * (X - C r)).eval r = 0 := by
  simp only [eval, eval₂_eq_sum, RingHom.id_apply]
  have bound :=
    calc
      (p * (X - C r)).natDegree ≤ p.natDegree + (X - C r).natDegree := natDegree_mul_le
      _ ≤ p.natDegree + 1 := add_le_add_left (natDegree_X_sub_C_le _) _
      _ < p.natDegree + 2 := lt_add_one _
  rw [sum_over_range' _ _ (p.natDegree + 2) bound]
  swap
  · simp
  rw [sum_range_succ']
  conv_lhs =>
    congr
    arg 2
    simp [coeff_mul_X_sub_C, sub_mul, mul_assoc, ← pow_succ']
  rw [sum_range_sub']
  simp [coeff_monomial]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7da220be2ed478f283e26c3b92a1779add030d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
