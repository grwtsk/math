# comp_C_mul_X_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3da016-d925-0a36-9d58-cce358900458",
  "kind": "lemma",
  "lexical_name": "comp_C_mul_X_coeff",
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
  "slug": "comp-c-mul-x-coeff--ccf07d0e7fb0e0ccb8c8a0b1",
  "source": {
    "blob": "b356338574e9bb276346e930da64ce79b8ee23e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccf07d0e7fb0e0ccb8c8a0b1f51f13fa5718d28d6c769aa7ae2ce85aa0201662",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3da016-d925-0a36-9d58-cce358900458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma comp_C_mul_X_coeff {r : R} {n : ℕ} :
    (p.comp <| C r * X).coeff n = p.coeff n * r ^ n := by
  simp_rw [comp, eval₂_eq_sum_range, (commute_X _).symm.mul_pow,
    ← C_pow, finsetSum_coeff, coeff_C_mul, coeff_X_pow]
  rw [Finset.sum_eq_single n _ fun h ↦ ?_, ite_eq_left rfl, mul_one]
  · intro b _ h; simp_rw [ite_eq_right h.symm, mul_zero]
  · rw [coeff_eq_zero_of_natDegree_lt, zero_mul]
    rwa [Finset.mem_range_succ_iff, not_le] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b356338574e9bb276346e930da64ce79b8ee23e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
