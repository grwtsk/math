# C_eval_neg_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58fff2ad-ece4-f200-b089-dcf7dd1b3c8e",
  "kind": "theorem",
  "lexical_name": "C_eval_neg_two",
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
  "slug": "c-eval-neg-two--a05d2d3c1d09f5153ab0d317",
  "source": {
    "blob": "8a0acd79b116bc87d4c406b179366b4c4413ac11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 606,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05d2d3c1d09f5153ab0d317902f540debb5f655529283b0fdd9bed3bfd88f86",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58fff2ad-ece4-f200-b089-dcf7dd1b3c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_eval_neg_two (n : ℤ) : (C R n).eval (-2) = 2 * n.negOnePow := by
  induction n using Polynomial.Chebyshev.induct with
  | zero => simp
  | one => simp
  | add_two n ih1 ih2 =>
    simp only [C_add_two, eval_sub, eval_mul, eval_X, mul_neg, mul_one, ih1,
      Int.negOnePow_add, Int.negOnePow_one, Units.val_neg, Int.cast_neg, neg_mul, neg_neg, ih2,
      Int.negOnePow_def 2]
    norm_cast
    norm_num
    ring
  | neg_add_one n ih1 ih2 =>
    simp only [C_sub_one, eval_sub, eval_mul, eval_X, mul_neg, mul_one, ih1, neg_mul,
      ih2, Int.negOnePow_add, Int.negOnePow_one, Units.val_neg, Int.cast_neg, sub_neg_eq_add,
      Int.negOnePow_sub]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a0acd79b116bc87d4c406b179366b4c4413ac11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
