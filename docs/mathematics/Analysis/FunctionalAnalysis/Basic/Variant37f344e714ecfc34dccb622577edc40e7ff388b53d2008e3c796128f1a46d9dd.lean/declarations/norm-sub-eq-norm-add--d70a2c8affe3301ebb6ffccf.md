# norm_sub_eq_norm_add

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
      "line": 611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:584bf627-8fc1-f412-5953-351f310c84e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43ffb316-10f3-7716-cd86-56fe9be8105c",
  "kind": "theorem",
  "lexical_name": "norm_sub_eq_norm_add",
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
  "slug": "norm-sub-eq-norm-add--d70a2c8affe3301ebb6ffccf",
  "source": {
    "blob": "75aac879ab48e009bb05b5a71a189750e85382e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 611,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70a2c8affe3301ebb6ffccf40124c049dcc1af9cab9a011c5b42bdea058500c",
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

Occurrence: `result:43ffb316-10f3-7716-cd86-56fe9be8105c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_eq_norm_add {v w : E} (h : ⟪v, w⟫ = 0) : ‖w - v‖ = ‖w + v‖ := by
  rw [← mul_self_inj_of_nonneg (norm_nonneg _) (norm_nonneg _)]
  simp only [h, ← @inner_self_eq_norm_mul_norm 𝕜, sub_neg_eq_add, sub_zero, map_sub, zero_re,
    zero_sub, add_zero, map_add, inner_add_right, inner_sub_left, inner_sub_right, inner_re_symm,
    zero_add]

/-- The real inner product of two vectors, divided by the product of their
norms, has absolute value at most 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75aac879ab48e009bb05b5a71a189750e85382e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
