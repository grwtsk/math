# DirSupClosedOn.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61d58395b38114a9c32feecf4db89da3145fe7e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/430c328a1a481b972c3988f434f64e8438dca236b83ff46c2aed49c8ecbc7341.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f87bc08-ccdb-b8b6-8a04-fe3ec2d6ec08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bba6304-23f6-e02d-4599-afb8f19eaafb",
  "kind": "theorem",
  "lexical_name": "DirSupClosedOn.union",
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
  "slug": "dirsupclosedon-union--cfb6287bb55ab960a5a42138",
  "source": {
    "blob": "61d58395b38114a9c32feecf4db89da3145fe7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirSupClosed/Variant430c328a1a481b972c3988f434f64e8438dca236b83ff46c2aed49c8ecbc7341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb6287bb55ab960a5a42138251bf2578ad1d9197d10f21a2e6defd2c43d50c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirSupClosed/Variant430c328a1a481b972c3988f434f64e8438dca236b83ff46c2aed49c8ecbc7341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bba6304-23f6-e02d-4599-afb8f19eaafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DirSupClosedOn.union (hDL : IsLowerSet D)
    (hs : DirSupClosedOn D s) (ht : DirSupClosedOn D t) : DirSupClosedOn D (s ∪ t) := by
  intro d hD hdu hd₀ hd₁ a ha
  have hdst : d ∩ s ∪ d ∩ t = d := by grind
  wlog h : DirectedOn (· ≤ ·) (d ∩ s) ∧ IsCofinalFor (d ∩ t) (d ∩ s)
  · rw [union_comm] at hdu hdst ⊢
    exact this hDL ht hs hD hdu hd₀ hd₁ ha hdst <|
      (directedOn_union_iff.mp (by rwa [hdst])).resolve_right h
  obtain ⟨hds, hcof⟩ := h
  have hcof' : IsCofinalFor d (d ∩ s) := hcof.union_right.mono_left hdst.ge
  exact .inl <| hs (hDL inter_subset_left hD) inter_subset_right
    (hcof'.nonempty hd₀) hds (ha.of_isCofinalFor inter_subset_left hcof')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirSupClosed/Variant430c328a1a481b972c3988f434f64e8438dca236b83ff46c2aed49c8ecbc7341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirSupClosed/Variant430c328a1a481b972c3988f434f64e8438dca236b83ff46c2aed49c8ecbc7341.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d58395b38114a9c32feecf4db89da3145fe7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
