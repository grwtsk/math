# arctan_tan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d6ffd8c3539aa225796b0f39a9e208bff708c4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4c4b78c-6a31-4d97-6881-8457bbc66c69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04526310-e477-f39b-a05e-9c3218f6e6b7",
  "kind": "theorem",
  "lexical_name": "arctan_tan",
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
  "slug": "arctan-tan--de2812e9cffe3fb1d941c9ef",
  "source": {
    "blob": "3d6ffd8c3539aa225796b0f39a9e208bff708c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de2812e9cffe3fb1d941c9ef571505508c0607526e1e21bfeef59607b4b3d3e8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04526310-e477-f39b-a05e-9c3218f6e6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arctan_tan {z : ℂ} (h₀ : z ≠ π / 2) (h₁ : -(π / 2) < z.re) (h₂ : z.re ≤ π / 2) :
    arctan (tan z) = z := by
  have h := cos_ne_zero_of_arctan_bounds h₀ h₁ h₂
  unfold arctan tan
  -- multiply top and bottom by `cos z`
  rw [← mul_div_mul_right (1 + _) _ h, add_mul, sub_mul, one_mul, ← mul_rotate, mul_div_cancel₀ _ h]
  conv_lhs =>
    enter [2, 1, 2]
    rw [sub_eq_add_neg, ← neg_mul, ← sin_neg, ← cos_neg]
  rw [← exp_mul_I, ← exp_mul_I, ← exp_sub, show z * I - -z * I = 2 * (I * z) by ring, log_exp,
    show -I / 2 * (2 * (I * z)) = -(I * I) * z by ring, I_mul_I, neg_neg, one_mul]
  all_goals norm_num
  · rwa [← div_lt_iff₀' two_pos, neg_div]
  · rwa [← le_div_iff₀' two_pos]

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6ffd8c3539aa225796b0f39a9e208bff708c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
