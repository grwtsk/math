# approx_mem_Icc_right_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3d4855a-ba8f-8f4f-23fd-33fd47b19a7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:165533b6-95d0-c58b-f838-366556e5f7e3",
  "kind": "theorem",
  "lexical_name": "approx_mem_Icc_right_left",
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
  "slug": "approx-mem-icc-right-left--4488aad24d65c22942ed595d",
  "source": {
    "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4488aad24d65c22942ed595d6988169f1b1460f4159724f7857c64b2ecc97c85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:165533b6-95d0-c58b-f838-366556e5f7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_mem_Icc_right_left (c : CU P) (n : ℕ) (x : X) :
    c.approx n x ∈ Icc (c.right.approx n x) (c.left.approx n x) := by
  induction n generalizing c with
  | zero =>
    exact ⟨le_rfl, indicator_le_indicator_of_subset (compl_subset_compl.2 c.left_U_subset)
      (fun _ => zero_le_one) _⟩
  | succ n ihn =>
    simp only [approx, mem_Icc]
    refine ⟨midpoint_le_midpoint ?_ (ihn _).1, midpoint_le_midpoint (ihn _).2 ?_⟩ <;>
      apply approx_le_approx_of_U_sub_C
    exacts [subset_closure, subset_closure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9394cf07ff8f84c2c7a018b66c1dffe0a15fa444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
