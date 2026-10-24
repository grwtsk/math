# deriv2_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22cfb270646646d61913c5b6caf2fbaa9e98152a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ed0c01f-ed26-0f47-2d4e-04438e66e38c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aeda086-edba-a9ee-0056-e573fe53e041",
  "kind": "lemma",
  "lexical_name": "deriv2_mul_log",
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
  "slug": "deriv2-mul-log--b2316c6e78c1000fe9c687a2",
  "source": {
    "blob": "22cfb270646646d61913c5b6caf2fbaa9e98152a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2316c6e78c1000fe9c687a24a5dc462c45c2542d762596424c7f5b06c0b9079",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aeda086-edba-a9ee-0056-e573fe53e041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv2_mul_log (x : ℝ) : deriv^[2] (fun x ↦ x * log x) x = x⁻¹ := by
  simp only [Function.iterate_succ, Function.iterate_zero, Function.id_comp, Function.comp_apply]
  by_cases hx : x = 0
  · rw [hx, inv_zero]
    exact deriv_zero_of_not_differentiableAt
      (fun h ↦ not_continuousAt_deriv_mul_log_zero h.continuousAt)
  · suffices ∀ᶠ y in (𝓝 x), deriv (fun x ↦ x * log x) y = log y + 1 by
      refine (Filter.EventuallyEq.deriv_eq this).trans ?_
      rw [deriv_add_const, deriv_log x]
    filter_upwards [eventually_ne_nhds hx] with y hy using deriv_mul_log hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22cfb270646646d61913c5b6caf2fbaa9e98152a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
