# approx_mem_Icc_right_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d4f1e4992149b89860d993d63593c9ef22f450b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0bba0d6-a419-e2d2-9f1f-2103c2ea6c98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c753d84a-de94-41ca-75ce-8c8eb778843e",
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
  "slug": "approx-mem-icc-right-left--bf629d6de3a869f0f872c99a",
  "source": {
    "blob": "8d4f1e4992149b89860d993d63593c9ef22f450b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf629d6de3a869f0f872c99afd1646779dc0096a7d5a3c1e63ef6aaaf5260008",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c753d84a-de94-41ca-75ce-8c8eb778843e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_mem_Icc_right_left (c : CU P) (n : ℕ) (x : X) :
    c.approx n x ∈ Icc (c.right.approx n x) (c.left.approx n x) := by
  induction n generalizing c with
  | zero =>
    simp only [approx]
    refine ⟨le_rfl, ?_⟩
    grw [left_U_subset]
    rw [Pi.one_apply]; positivity -- TODO: `positivity` doesn't prove that `1 x` is nonnegative
  | succ n ihn =>
    simp only [approx, mem_Icc]
    refine ⟨midpoint_le_midpoint ?_ (ihn _).1, midpoint_le_midpoint (ihn _).2 ?_⟩ <;>
      apply approx_le_approx_of_U_sub_C
    exacts [subset_closure, subset_closure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4f1e4992149b89860d993d63593c9ef22f450b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
