# y_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0fa5769890846ab75be134d74e8f4cee8dbf8f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50bc508f-875e-b223-adb6-ed8a8a93080c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e0629d6-6d87-289f-0bc7-3741cccebb01",
  "kind": "theorem",
  "lexical_name": "y_le_one",
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
  "slug": "y-le-one--1a73c7c452c4dd6b6a79df74",
  "source": {
    "blob": "c0fa5769890846ab75be134d74e8f4cee8dbf8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 373,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a73c7c452c4dd6b6a79df742d4c0484104ab40acd2a61b0a02051401c54ccc8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0629d6-6d87-289f-0bc7-3741cccebb01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_le_one {D : ℝ} (x : E) (Dpos : 0 < D) : y D x ≤ 1 := by
  have A : (w D ⋆[lsmul ℝ ℝ, μ] φ) x ≤ (w D ⋆[lsmul ℝ ℝ, μ] 1) x := by
    apply
      convolution_mono_right_of_nonneg _ (w_nonneg D) (indicator_le_self' fun x _ => zero_le_one)
        fun _ => zero_le_one
    refine ((w_compact_support E Dpos).convolutionExists_left _ ?_
      (locallyIntegrable_const (1 : ℝ)) x).integrable
    exact continuous_const.mul ((u_continuous E).comp (continuous_id.const_smul _))
  have B : (w D ⋆[lsmul ℝ ℝ, μ] fun _ => (1 : ℝ)) x = 1 := by
    simp only [convolution, ContinuousLinearMap.map_smul, mul_inv_rev, coe_smul', mul_one,
      lsmul_apply, Algebra.id.smul_eq_mul, integral_const_mul, w_integral E Dpos, Pi.smul_apply]
  exact A.trans (le_of_eq B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0fa5769890846ab75be134d74e8f4cee8dbf8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
