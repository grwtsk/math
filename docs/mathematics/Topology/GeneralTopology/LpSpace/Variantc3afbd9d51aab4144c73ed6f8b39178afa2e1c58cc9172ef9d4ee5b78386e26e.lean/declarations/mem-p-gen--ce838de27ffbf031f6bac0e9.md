# memℓp_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b656b252641bdb234d6ae406086ca565fde48d6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51db5100-839e-4423-8f24-97c8d7fe8f42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25b71406-320b-e97d-a34d-9127b8f0fea0",
  "kind": "theorem",
  "lexical_name": "memℓp_gen",
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
  "slug": "mem-p-gen--ce838de27ffbf031f6bac0e9",
  "source": {
    "blob": "b656b252641bdb234d6ae406086ca565fde48d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce838de27ffbf031f6bac0e9c37d92bda9aca56a6cc8b68dfd24cd6c724cc5de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25b71406-320b-e97d-a34d-9127b8f0fea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memℓp_gen {f : ∀ i, E i} (hf : Summable fun i => ‖f i‖ ^ p.toReal) : Memℓp f p := by
  rcases p.trichotomy with (rfl | rfl | hp)
  · apply memℓp_zero
    have H : Summable fun _ : α => (1 : ℝ) := by simpa using hf
    exact (Set.Finite.of_summable_const (by norm_num) H).subset (Set.subset_univ _)
  · apply memℓp_infty
    have H : Summable fun _ : α => (1 : ℝ) := by simpa using hf
    simpa using ((Set.Finite.of_summable_const (by norm_num) H).image fun i => ‖f i‖).bddAbove
  exact (memℓp_gen_iff hp).2 hf
#align mem_ℓp_gen memℓp_gen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b656b252641bdb234d6ae406086ca565fde48d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
