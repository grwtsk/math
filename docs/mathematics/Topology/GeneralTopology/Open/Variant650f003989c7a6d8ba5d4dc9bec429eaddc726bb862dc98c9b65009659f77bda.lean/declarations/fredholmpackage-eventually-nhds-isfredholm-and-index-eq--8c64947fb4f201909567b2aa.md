# FredholmPackage.eventually_nhds_isFredholm_and_index_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb52d5d881e9822e3ee5edb1d14b64c3f6643197",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6022fab1-4d13-fd06-5400-3667e29e2769",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f28610cf-9b40-0f65-d70a-27e8099c9b80",
  "kind": "theorem",
  "lexical_name": "FredholmPackage.eventually_nhds_isFredholm_and_index_eq",
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
  "slug": "fredholmpackage-eventually-nhds-isfredholm-and-index-eq--8c64947fb4f201909567b2aa",
  "source": {
    "blob": "eb52d5d881e9822e3ee5edb1d14b64c3f6643197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c64947fb4f201909567b2aa31ef8d117b318289e06a6c69b65929a37247080c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f28610cf-9b40-0f65-d70a-27e8099c9b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem FredholmPackage.eventually_nhds_isFredholm_and_index_eq [CompleteSpace 𝕜]
    {T₀ : E →L[𝕜] F} (pkg : T₀.FredholmPackage) :
    ∀ᶠ T in 𝓝 T₀, T.IsFredholm ∧
      T.index = (finrank 𝕜 pkg.decDom.X₀ : ℤ) - finrank 𝕜 pkg.decCodom.X₀ := by
  filter_upwards [pkg.eventually_nhds_isInvertible] with T h_inv
  have A : IsFredholm pkg.decDom.X₁.subtypeL :=
    have := pkg.decDom.cofg_X₁
    pkg.decDom.X₁.isFredholm_subtypeL pkg.decDom.isTopCompl.isClosed
  have B : IsFredholm pkg.decCodom.proj := pkg.decCodom.isFredholm_proj
  have C : IsFredholm T := by
    rw [← A.comp_iff_left, ← B.comp_iff_right]
    exact h_inv.isFredholm
  refine ⟨C, ?_⟩
  have key := LinearMap.index_of_bijective h_inv.bijective
  rw [B.index_comp (C.comp A), C.index_comp A, toLinearMap_projectionOntoL, index_projectionOnto,
    toLinearMap_subtypeL, index_subtype,
    (Submodule.quotientEquivOfIsCompl _ _ pkg.decDom.isTopCompl.isCompl).finrank_eq] at key
  lia

/-- If `T₀` is a Fredholm operator between two Banach spaces, then every operator `T` close
enough to `T₀` (in operator norm) is also Fredholm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb52d5d881e9822e3ee5edb1d14b64c3f6643197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
