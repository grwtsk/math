# monicQuarticDiscriminant_charTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c967784277acd3e10ca60a72aaaf9320bfb05512",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/Algebra/QuarticDiscriminantCharTwo.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99d31286-2ceb-0f94-befb-50c13ab6f277",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a118348-556a-0b9b-248b-ef717fca620c",
  "kind": "theorem",
  "lexical_name": "monicQuarticDiscriminant_charTwo",
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
  "slug": "monicquarticdiscriminant-chartwo--1ebbdc889d201eea26f3a034",
  "source": {
    "blob": "c967784277acd3e10ca60a72aaaf9320bfb05512",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 28,
    "path": "GRWTSK/Algebra/QuarticDiscriminantCharTwo.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ebbdc889d201eea26f3a0347fbe2a7970d262e504ae26cf2f4263c43d0ea071",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticDiscriminantCharTwo.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a118348-556a-0b9b-248b-ef717fca620c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monicQuarticDiscriminant_charTwo
    (h2 : (2 : R) = 0) (A B C D : R) :
    monicQuarticDiscriminant A B C D =
      charTwoDiscriminantRoot A B C D ^ 2 := by
  simp only [monicQuarticDiscriminant, charTwoDiscriminantRoot]
  have h4 : (4 : R) = 0 := by calc
    (4 : R) = 2 * 2 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h6 : (6 : R) = 0 := by calc
    (6 : R) = 2 * 3 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h18 : (18 : R) = 0 := by calc
    (18 : R) = 2 * 9 := by norm_num
    _ = 0 := by rw [h2]; ring
  have h27 : (27 : R) = 1 := by
    calc
      (27 : R) = 1 + 2 * 13 := by norm_num
      _ = 1 := by rw [h2]; ring
  have h16 : (16 : R) = 0 := by calc
    (16 : R) = 4 * 4 := by norm_num
    _ = 0 := by rw [h4]; ring
  have h80 : (80 : R) = 0 := by calc
    (80 : R) = 16 * 5 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h128 : (128 : R) = 0 := by calc
    (128 : R) = 16 * 8 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h144 : (144 : R) = 0 := by calc
    (144 : R) = 16 * 9 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h192 : (192 : R) = 0 := by calc
    (192 : R) = 16 * 12 := by norm_num
    _ = 0 := by rw [h16]; ring
  have h256 : (256 : R) = 0 := by calc
    (256 : R) = 16 * 16 := by norm_num
    _ = 0 := by rw [h16]; ring
  simp only [h4, h6, h18, h27, h16, h80, h128, h144, h192, h256,
    zero_mul, mul_zero, zero_add, add_zero, zero_sub, sub_zero]
  have hneg : ∀ x : R, -x = x := by
    intro x
    have hh : x + x = 0 := by
      calc x + x = (2 : R) * x := by ring
        _ = 0 := by rw [h2]; ring
    exact neg_eq_iff_add_eq_zero.mpr hh
  simp only [hneg]
  ring

/-- In a characteristic-two field, the quartic discriminant vanishes
exactly when its explicit square-root expression vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticDiscriminantCharTwo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticDiscriminantCharTwo.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c967784277acd3e10ca60a72aaaf9320bfb05512` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
