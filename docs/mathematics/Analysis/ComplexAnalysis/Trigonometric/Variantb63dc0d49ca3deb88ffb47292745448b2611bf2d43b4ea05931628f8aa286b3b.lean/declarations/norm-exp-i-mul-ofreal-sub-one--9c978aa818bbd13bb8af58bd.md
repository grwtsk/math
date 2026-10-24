# norm_exp_I_mul_ofReal_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 973,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22425a6b-002e-9ef3-5ee1-c8b8900f2e62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d696e5e-9b1a-da78-62d7-ad79caaa6f1d",
  "kind": "theorem",
  "lexical_name": "norm_exp_I_mul_ofReal_sub_one",
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
  "slug": "norm-exp-i-mul-ofreal-sub-one--9c978aa818bbd13bb8af58bd",
  "source": {
    "blob": "d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 973,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c978aa818bbd13bb8af58bd07ed10e3a8b8c85eedce41408821d8a47a26b0e6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d696e5e-9b1a-da78-62d7-ad79caaa6f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_I_mul_ofReal_sub_one (x : ℝ) : ‖exp (I * x) - 1‖ = ‖2 * Real.sin (x / 2)‖ := by
  rw [show ‖2 * Real.sin (x / 2)‖ = ‖2 * sin (x / 2)‖ by norm_cast, two_sin]
  nth_rw 2 [← one_mul (_ - _), ← exp_zero]
  rw [← neg_add_cancel (x / 2 * I), exp_add, mul_assoc _ _ (_ - _), mul_sub, ← exp_add, ← exp_add,
    ← add_mul, ← add_mul]; norm_cast
  rw [add_neg_cancel, ofReal_zero, zero_mul, exp_zero, add_halves, ← neg_mul, Complex.norm_mul,
    norm_I, mul_one, Complex.norm_mul,
    show -(ofReal (x / 2)) = ofReal (-x / 2) by norm_cast; exact neg_div' 2 x,
    norm_exp_ofReal_mul_I, one_mul, ← norm_neg, neg_sub, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
