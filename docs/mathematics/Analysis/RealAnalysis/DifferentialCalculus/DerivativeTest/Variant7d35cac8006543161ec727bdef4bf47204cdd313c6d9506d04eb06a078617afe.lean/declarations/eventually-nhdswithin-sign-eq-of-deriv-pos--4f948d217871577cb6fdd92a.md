# eventually_nhdsWithin_sign_eq_of_deriv_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1017da179f46259c0349010e25819d0173d94ed8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d475abe-9f92-dd19-ba6e-3a06d2071e3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e91836a-925d-9d48-97bf-83f69d64c71c",
  "kind": "lemma",
  "lexical_name": "eventually_nhdsWithin_sign_eq_of_deriv_pos",
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
  "slug": "eventually-nhdswithin-sign-eq-of-deriv-pos--4f948d217871577cb6fdd92a",
  "source": {
    "blob": "1017da179f46259c0349010e25819d0173d94ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f948d217871577cb6fdd92a2e384d83d3d080747556986de6b3a936ccf3d5c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e91836a-925d-9d48-97bf-83f69d64c71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_nhdsWithin_sign_eq_of_deriv_pos (hf : deriv f x₀ > 0) (hx : f x₀ = 0) :
    ∀ᶠ x in 𝓝 x₀, sign (f x) = sign (x - x₀) := by
  rw [← nhdsNE_sup_pure x₀, eventually_sup]
  refine ⟨?_, by simpa⟩
  have h_tendsto := hasDerivAt_iff_tendsto_slope.mp
    (differentiableAt_of_deriv_ne_zero <| ne_of_gt hf).hasDerivAt
  filter_upwards [(h_tendsto.eventually <| eventually_gt_nhds hf),
    self_mem_nhdsWithin] with x hx₀ hx₁
  rw [mem_compl_iff, mem_singleton_iff, ← Ne.eq_def] at hx₁
  obtain (hx' | hx') := hx₁.lt_or_gt
  · rw [sign_neg (neg_of_slope_pos hx' hx₀ hx), sign_neg (sub_neg.mpr hx')]
  · rw [sign_pos (pos_of_slope_pos hx' hx₀ hx), sign_pos (sub_pos.mpr hx')]

/-- If the derivative of `f` is negative at a root `x₀` of `f`, then locally the sign of `f x`
matches `x₀ - x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1017da179f46259c0349010e25819d0173d94ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
