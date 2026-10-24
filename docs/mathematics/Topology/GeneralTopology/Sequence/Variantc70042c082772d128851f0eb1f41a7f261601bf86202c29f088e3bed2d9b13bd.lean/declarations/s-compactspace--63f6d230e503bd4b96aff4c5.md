# S'_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6198ecf4cfe62253135d270015027baac93a152e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15c92f4a-2f56-a49f-ea2d-44dd76d6368b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d75620e-c1d2-1aa9-df43-3e319268116b",
  "kind": "lemma",
  "lexical_name": "S'_compactSpace",
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
  "slug": "s-compactspace--63f6d230e503bd4b96aff4c5",
  "source": {
    "blob": "6198ecf4cfe62253135d270015027baac93a152e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f6d230e503bd4b96aff4c5bee5956b29468e54a9392e32a675b3f310e0794a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d75620e-c1d2-1aa9-df43-3e319268116b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma S'_compactSpace [TopologicalSpace S] [T2Space S] [TopologicalSpace T]
    [CompactSpace T] [TopologicalSpace X] [T1Space (OnePoint X)]
    (π : T → S × OnePoint X) (hπ : Continuous π) : CompactSpace (S' π) := by
  rw [← isCompact_iff_compactSpace, show S' π =
    ⋂ (n : OnePoint X) (m : OnePoint X), {x | (π (x n).val).1 = (π (x m).val).1} by aesop]
  have (x : OnePoint X) : CompactSpace <| (Prod.snd ∘ π) ⁻¹' {x} :=
    isCompact_iff_compactSpace.mp (IsClosed.preimage (by fun_prop) isClosed_singleton).isCompact
  refine (isClosed_iInter fun n ↦ isClosed_iInter fun m ↦ isClosed_eq ?_ ?_).isCompact
  all_goals fun_prop

end

/-- This object is used to show that a certain map `T ⟶ X` descends
to a map `S ⊗ N∪{∞} → X`. Because epimorphisms in `LightProfinite`
are effective, it does so if the two maps `pullback π π → T → S ⊗ N∪{∞}`
are equal. This can be checked by precomposing with an epimorphism,
which is given by this morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6198ecf4cfe62253135d270015027baac93a152e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
