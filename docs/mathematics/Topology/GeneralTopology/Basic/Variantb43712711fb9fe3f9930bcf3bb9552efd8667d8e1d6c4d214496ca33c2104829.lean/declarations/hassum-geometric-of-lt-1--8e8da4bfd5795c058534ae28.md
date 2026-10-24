# hasSum_geometric_of_lt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0018a342-4f45-f67d-0b06-791a802acab6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26302023-2aa1-4740-cc41-70bcd1a4db91",
  "kind": "theorem",
  "lexical_name": "hasSum_geometric_of_lt_1",
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
  "slug": "hassum-geometric-of-lt-1--8e8da4bfd5795c058534ae28",
  "source": {
    "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8da4bfd5795c058534ae285240dc99a290233407df86b6564941a6f261887d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26302023-2aa1-4740-cc41-70bcd1a4db91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_geometric_of_lt_1 {r : ℝ} (h₁ : 0 ≤ r) (h₂ : r < 1) :
    HasSum (fun n : ℕ => r ^ n) (1 - r)⁻¹ :=
  have : r ≠ 1 := ne_of_lt h₂
  have : Tendsto (fun n => (r ^ n - 1) * (r - 1)⁻¹) atTop (𝓝 ((0 - 1) * (r - 1)⁻¹)) :=
    ((tendsto_pow_atTop_nhds_0_of_lt_1 h₁ h₂).sub tendsto_const_nhds).mul tendsto_const_nhds
  (hasSum_iff_tendsto_nat_of_nonneg (pow_nonneg h₁) _).mpr <| by
    simp_all [neg_inv, geom_sum_eq, div_eq_mul_inv]
#align has_sum_geometric_of_lt_1 hasSum_geometric_of_lt_1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d700d75becd50b8155f0085e13ae951929d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
