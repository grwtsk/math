# rectangle_left_edge_mem_border_of_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1098,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4104cc5e-d17d-cef1-0a4c-f67ccfeb8a4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:851651c0-cb38-0f73-46b0-7029e43034ce",
  "kind": "lemma",
  "lexical_name": "rectangle_left_edge_mem_border_of_re_eq",
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
  "slug": "rectangle-left-edge-mem-border-of-re-eq--6fb12e4308e6ba59685fc809",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1110,
    "line": 1098,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb12e4308e6ba59685fc80940cb5d96171acf519bf5279358de874046b9201e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:851651c0-cb38-0f73-46b0-7029e43034ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1098–1110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rectangle_left_edge_mem_border_of_re_eq {z z0 w : ℂ}
    (hz_rect : z ∈ Rectangle z0 w) (hz0w_re : z0.re ≤ w.re) (hz0w_im : z0.im ≤ w.im)
    (hz_eq : z0.re = z.re) :
    z ∈ RectangleBorder z0 w := by
  obtain ⟨_, _, hz_im_low, hz_im_high⟩ := (mem_Rect hz0w_re hz0w_im z).1 hz_rect
  simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff]
  refine Or.inl <| Or.inl <| Or.inr ?_
  constructor
  · simpa using hz_eq.symm
  · have hz_im_low' : z0.im ≤ z.im := by simpa using hz_im_low
    have hz_im_high' : z.im ≤ w.im := by simpa using hz_im_high
    simpa [Set.uIcc_of_le hz0w_im] using And.intro hz_im_low' hz_im_high'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L1098).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
