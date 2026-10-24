# contDiffOn_enat_picard_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54c9a665-e74d-b30e-b1b1-760f6d938f24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6491d15b-ba16-b03b-2eaf-70e3753aa6fe",
  "kind": "lemma",
  "lexical_name": "contDiffOn_enat_picard_Icc",
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
  "slug": "contdiffon-enat-picard-icc--ce2e3db610a541d0d20be01d",
  "source": {
    "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 546,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2e3db610a541d0d20be01d4ea60d8e395d8ce6118b54a7e570956bfb840ecf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6491d15b-ba16-b03b-2eaf-70e3753aa6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contDiffOn_enat_picard_Icc
    (ht₀ : t₀ ∈ Icc tmin tmax) {n : ℕ∞}
    (hf : ContDiffOn ℝ n (uncurry f) ((Icc tmin tmax) ×ˢ u))
    (hα : ContinuousOn α (Icc tmin tmax))
    (hmem : ∀ t ∈ Icc tmin tmax, α t ∈ u) (x₀ : E)
    (heqon : ∀ t ∈ Icc tmin tmax, α t = picard f t₀ x₀ α t) :
    ContDiffOn ℝ n (picard f t₀ x₀ α) (Icc tmin tmax) := by
  induction n with
  | top =>
    rw [contDiffOn_infty] at *
    exact fun k ↦ contDiffOn_nat_picard_Icc ht₀ (hf k) hα hmem x₀ heqon
  | coe n => exact contDiffOn_nat_picard_Icc ht₀ hf hα hmem x₀ heqon

/-- Solutions to ODEs defined by $C^n$ vector fields are also $C^n$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd2276d677e667f58c96e09126c3cafb8bb4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
