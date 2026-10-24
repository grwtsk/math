# norm_deriv_mulExpNegMulSq_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4873e363c7da3da79fa83e1b7b22a55fd1f67ef4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77111d4f-5daf-545e-9c09-ce76fdd46b5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3778dc5c-87ba-4744-a6c0-79ac6bdd389a",
  "kind": "theorem",
  "lexical_name": "norm_deriv_mulExpNegMulSq_le_one",
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
  "slug": "norm-deriv-mulexpnegmulsq-le-one--3603d243a73e185ea34d0d49",
  "source": {
    "blob": "4873e363c7da3da79fa83e1b7b22a55fd1f67ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3603d243a73e185ea34d0d4904f0c1529a33cf6418b32f18798384ac8a0b1e4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3778dc5c-87ba-4744-a6c0-79ac6bdd389a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_mulExpNegMulSq_le_one (hε : 0 < ε) (x : ℝ) :
    ‖deriv (mulExpNegMulSq ε) x‖ ≤ 1 := by
  rw [norm_eq_abs, deriv_mulExpNegMulSq]
  have heq : exp (- (ε * x * x)) + x * (exp (- (ε * x * x)) * (-2 * ε * x))
      = exp (- (ε * x * x)) * (1 -2 * (ε * x * x)) := by ring
  rw [heq, abs_mul, abs_exp]
  set y := ε * x * x with hy
  have hynonneg : 0 ≤ y := by
    rw [hy, mul_assoc]
    exact mul_nonneg hε.le (mul_self_nonneg x)
  apply mul_le_of_le_inv_mul₀ (zero_le_one' ℝ) (exp_nonneg _)
  simp only [← exp_neg (-y), neg_neg, mul_one, abs_le, neg_le_sub_iff_le_add, tsub_le_iff_right]
  refine ⟨le_trans two_mul_le_exp ((le_add_iff_nonneg_left (exp y)).mpr zero_le_one), ?_⟩
  exact le_trans (one_le_exp hynonneg) (le_add_of_nonneg_right (by simp [hynonneg]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4873e363c7da3da79fa83e1b7b22a55fd1f67ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
