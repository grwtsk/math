# orderOf_dvd_lcm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fc892af-c07c-1fb3-69f4-25a66b604f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d44fbf6-d71b-d955-f605-22b4d7396809",
  "kind": "theorem",
  "lexical_name": "orderOf_dvd_lcm_mul",
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
  "slug": "orderof-dvd-lcm-mul--d46bb60e89ac4a08a10e257f",
  "source": {
    "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 412,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d46bb60e89ac4a08a10e257f4ada8b0bf5faca994b2eeab1c96fd13a35927111",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d44fbf6-d71b-d955-f605-22b4d7396809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_dvd_lcm_mul (h : Commute x y):
    orderOf y ∣ Nat.lcm (orderOf x) (orderOf (x * y)) := by
  by_cases h0 : orderOf x = 0
  · rw [h0, lcm_zero_left]
    apply dvd_zero
  conv_lhs =>
    rw [← one_mul y, ← pow_orderOf_eq_one x, ← succ_pred_eq_of_pos (Nat.pos_of_ne_zero h0),
      _root_.pow_succ, mul_assoc]
  exact
    (((Commute.refl x).mul_right h).pow_left _).orderOf_mul_dvd_lcm.trans
      (lcm_dvd_iff.2 ⟨(orderOf_pow_dvd _).trans (dvd_lcm_left _ _), dvd_lcm_right _ _⟩)

@[to_additive addOrderOf_add_dvd_mul_addOrderOf]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7353fb14a00b020c854e4d8310a49bb9e95b162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
