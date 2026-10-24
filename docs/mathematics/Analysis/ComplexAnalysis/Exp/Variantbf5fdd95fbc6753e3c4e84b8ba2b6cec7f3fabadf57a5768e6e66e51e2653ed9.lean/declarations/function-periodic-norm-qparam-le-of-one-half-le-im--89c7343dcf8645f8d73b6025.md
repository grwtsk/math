# Function.Periodic.norm_qParam_le_of_one_half_le_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e46bd0ff6338af2256b55d95076d4af24596342b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eee399b-09d3-4d91-30fe-fe0b25c1d0f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5da6c674-25aa-efec-9a0e-887f719e5609",
  "kind": "lemma",
  "lexical_name": "Function.Periodic.norm_qParam_le_of_one_half_le_im",
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
  "slug": "function-periodic-norm-qparam-le-of-one-half-le-im--89c7343dcf8645f8d73b6025",
  "source": {
    "blob": "e46bd0ff6338af2256b55d95076d4af24596342b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 28,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c7343dcf8645f8d73b60250435e7df45c08e0ae70f39f8e385bcf28fd95bed",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da6c674-25aa-efec-9a0e-887f719e5609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Function.Periodic.norm_qParam_le_of_one_half_le_im {ξ : ℂ} (hξ : 1 / 2 ≤ ξ.im) :
    ‖𝕢 1 ξ‖ ≤ rexp (-π) := by
  rwa [Periodic.qParam, ofReal_one, div_one, Complex.norm_exp, Real.exp_le_exp,
    mul_right_comm, mul_I_re, neg_le_neg_iff, ← ofReal_ofNat, ← ofReal_mul, im_ofReal_mul,
    mul_comm _ π, mul_assoc, le_mul_iff_one_le_right Real.pi_pos, ← div_le_iff₀' two_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46bd0ff6338af2256b55d95076d4af24596342b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
