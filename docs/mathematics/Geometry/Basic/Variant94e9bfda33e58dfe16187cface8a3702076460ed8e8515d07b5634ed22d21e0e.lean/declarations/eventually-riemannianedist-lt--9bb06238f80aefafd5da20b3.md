# eventually_riemannianEDist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e858df0-9f4e-cc60-fe89-285decdc7e99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:683cd2cc-05c7-7238-6093-103e85aea1a1",
  "kind": "lemma",
  "lexical_name": "eventually_riemannianEDist_lt",
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
  "slug": "eventually-riemannianedist-lt--9bb06238f80aefafd5da20b3",
  "source": {
    "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 373,
    "path": "GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb06238f80aefafd5da20b3ab35e45e8015de31b7ed4aa64e44b8aae26edaac",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:683cd2cc-05c7-7238-6093-103e85aea1a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_riemannianEDist_lt (x : M) {c : ℝ≥0∞} (hc : 0 < c) :
    ∀ᶠ y in 𝓝 x, riemannianEDist I x y < c := by
  rcases eventually_riemannianEDist_le_edist_extChartAt I x with ⟨C, C_pos, hC⟩
  have : (extChartAt I x) ⁻¹' (Metric.eball (extChartAt I x x) (c / C)) ∈ 𝓝 x := by
    apply (continuousAt_extChartAt x).preimage_mem_nhds
    exact Metric.eball_mem_nhds _ (ENNReal.div_pos hc.ne' (by simp))
  filter_upwards [this, hC] with y hy h'y
  apply h'y.trans_lt
  have : edist (extChartAt I x x) (extChartAt I x y) < c / C := by
    simpa only [mem_preimage, Metric.mem_eball'] using hy
  rwa [ENNReal.lt_div_iff_mul_lt, mul_comm] at this
  · exact Or.inl (mod_cast C_pos.ne')
  · simp

set_option backward.isDefEq.respectTransparency false in
/-- Any neighborhood of `x` contains all the points which are close enough to `x` for the
Riemannian distance, `ℝ≥0` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7756ee06d680a2cb53d78d4399be69426dfe4785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
