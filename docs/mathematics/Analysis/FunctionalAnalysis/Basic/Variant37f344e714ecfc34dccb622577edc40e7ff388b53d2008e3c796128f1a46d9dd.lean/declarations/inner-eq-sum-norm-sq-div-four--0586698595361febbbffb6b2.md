# inner_eq_sum_norm_sq_div_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75aac879ab48e009bb05b5a71a189750e85382e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10161b99-a45d-54b8-3304-19ba6423b45c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1116c65e-69f4-3df9-40a2-59d4dfbda259",
  "kind": "theorem",
  "lexical_name": "inner_eq_sum_norm_sq_div_four",
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
  "slug": "inner-eq-sum-norm-sq-div-four--0586698595361febbbffb6b2",
  "source": {
    "blob": "75aac879ab48e009bb05b5a71a189750e85382e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 537,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0586698595361febbbffb6b2e0cdab5cdf7aab79ae82f8bb39ac89e476d1255a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1116c65e-69f4-3df9-40a2-59d4dfbda259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_eq_sum_norm_sq_div_four (x y : E) :
    ⟪x, y⟫ = ((‖x + y‖ : 𝕜) ^ 2 - (‖x - y‖ : 𝕜) ^ 2 +
              ((‖x - IK • y‖ : 𝕜) ^ 2 - (‖x + IK • y‖ : 𝕜) ^ 2) * IK) / 4 := by
  rw [← re_add_im ⟪x, y⟫, re_inner_eq_norm_add_mul_self_sub_norm_sub_mul_self_div_four,
    im_inner_eq_norm_sub_i_smul_mul_self_sub_norm_add_i_smul_mul_self_div_four]
  push_cast
  simp only [sq, ← mul_div_right_comm, ← add_div]

/-- Polarization identity: The real inner product, in terms of the norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75aac879ab48e009bb05b5a71a189750e85382e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
