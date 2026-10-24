# coe_eq_of_mem_split_of_lt_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb538b796d39d195a00650b3ca3fffc6e05bf965",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06430780-d470-fb4c-50a7-f190de02f629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1d174c8-ec47-4d03-322d-009b213ee018",
  "kind": "theorem",
  "lexical_name": "coe_eq_of_mem_split_of_lt_mem",
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
  "slug": "coe-eq-of-mem-split-of-lt-mem--71cafa088249521a697ecd43",
  "source": {
    "blob": "eb538b796d39d195a00650b3ca3fffc6e05bf965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71cafa088249521a697ecd4336f238d26029c1c6299c746b5355f3bffc0bd8ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1d174c8-ec47-4d03-322d-009b213ee018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_eq_of_mem_split_of_lt_mem {y : ι → ℝ} (h₁ : J ∈ split I i x) (h₂ : y ∈ J)
    (h₃ : x < y i) : (J : Set (ι → ℝ)) = ↑I ∩ { y | x < y i } := by
  refine' (mem_split_iff'.1 h₁).resolve_left fun H => _
  rw [← Box.mem_coe, H] at h₂
  exact h₃.not_le h₂.2
#align box_integral.prepartition.coe_eq_of_mem_split_of_lt_mem BoxIntegral.Prepartition.coe_eq_of_mem_split_of_lt_mem

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb538b796d39d195a00650b3ca3fffc6e05bf965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
