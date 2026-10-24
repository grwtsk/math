# P_eq_integral_exp_mul_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e210928-5776-c71c-69ea-df52783cde02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f694514-8d92-fd69-c3b5-eb70cba80a5a",
  "kind": "theorem",
  "lexical_name": "P_eq_integral_exp_mul_eval",
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
  "slug": "p-eq-integral-exp-mul-eval--a8575b11a5eb176264f31d3c",
  "source": {
    "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8575b11a5eb176264f31d3cb3ea1339ef794483d79a8b98d507e19bbb651bc2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f694514-8d92-fd69-c3b5-eb70cba80a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem P_eq_integral_exp_mul_eval (f : ℂ[X]) (s : ℂ) :
    P f s = exp s * (s * ∫ x in 0..1, exp (-(x • s)) * f.eval (x • s)) := by
  rw [integral_exp_mul_eval, mul_add, mul_neg, exp_neg, mul_inv_cancel_left₀ (exp_ne_zero s),
    neg_add_eq_sub, P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7e8a3bed03c25336391c82b82f1376a4b8c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
