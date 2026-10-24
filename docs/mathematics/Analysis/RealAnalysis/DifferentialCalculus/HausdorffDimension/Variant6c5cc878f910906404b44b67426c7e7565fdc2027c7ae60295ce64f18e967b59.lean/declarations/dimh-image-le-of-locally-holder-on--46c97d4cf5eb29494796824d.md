# dimH_image_le_of_locally_holder_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0235fc0d813222dfb04131c3b136de8ace9fa913",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c5cc878f910906404b44b67426c7e7565fdc2027c7ae60295ce64f18e967b59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceb2fab0-9b27-f5cd-973d-4211a865a21f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d31c10f-0952-e57f-092d-71e6927f65b3",
  "kind": "theorem",
  "lexical_name": "dimH_image_le_of_locally_holder_on",
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
  "slug": "dimh-image-le-of-locally-holder-on--46c97d4cf5eb29494796824d",
  "source": {
    "blob": "0235fc0d813222dfb04131c3b136de8ace9fa913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 293,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant6c5cc878f910906404b44b67426c7e7565fdc2027c7ae60295ce64f18e967b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c97d4cf5eb29494796824d98db2f6e7b4de324a7db1ec6cafa9dad0276cade",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant6c5cc878f910906404b44b67426c7e7565fdc2027c7ae60295ce64f18e967b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d31c10f-0952-e57f-092d-71e6927f65b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dimH_image_le_of_locally_holder_on [SecondCountableTopology X] {r : ℝ≥0} {f : X → Y}
    (hr : 0 < r) {s : Set X} (hf : ∀ x ∈ s, ∃ C : ℝ≥0, ∃ t ∈ 𝓝[s] x, HolderOnWith C r f t) :
    dimH (f '' s) ≤ dimH s / r := by
  choose! C t htn hC using hf
  rcases countable_cover_nhdsWithin htn with ⟨u, hus, huc, huU⟩
  replace huU := inter_eq_self_of_subset_left huU; rw [inter_iUnion₂] at huU
  rw [← huU, image_iUnion₂, dimH_bUnion huc, dimH_bUnion huc]; simp only [ENNReal.iSup_div]
  exact iSup₂_mono fun x hx => ((hC x (hus hx)).mono inter_subset_right).dimH_image_le hr

/-- If `f : X → Y` is Hölder continuous in a neighborhood of every point `x : X` with the same
positive exponent `r` but possibly different coefficients, then the Hausdorff dimension of the range
of `f` is at most the Hausdorff dimension of `X` divided by `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant6c5cc878f910906404b44b67426c7e7565fdc2027c7ae60295ce64f18e967b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant6c5cc878f910906404b44b67426c7e7565fdc2027c7ae60295ce64f18e967b59.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0235fc0d813222dfb04131c3b136de8ace9fa913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
