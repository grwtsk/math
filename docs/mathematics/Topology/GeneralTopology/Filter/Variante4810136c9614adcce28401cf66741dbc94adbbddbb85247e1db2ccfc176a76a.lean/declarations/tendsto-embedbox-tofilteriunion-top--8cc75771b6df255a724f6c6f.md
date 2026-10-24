# tendsto_embedBox_toFilteriUnion_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56290c77fab34762a7379df0c69c70d2c0fe1fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fda294f3-7b2e-1335-097d-3efd33a47448",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2571cf82-025c-3ef0-5a57-6aba8395d442",
  "kind": "theorem",
  "lexical_name": "tendsto_embedBox_toFilteriUnion_top",
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
  "slug": "tendsto-embedbox-tofilteriunion-top--8cc75771b6df255a724f6c6f",
  "source": {
    "blob": "56290c77fab34762a7379df0c69c70d2c0fe1fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 464,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc75771b6df255a724f6c6ffe0678e0e513d7cc016045f481277337ce05253f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2571cf82-025c-3ef0-5a57-6aba8395d442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_embedBox_toFilteriUnion_top (l : IntegrationParams) (h : I ≤ J) :
    Tendsto (TaggedPrepartition.embedBox I J h) (l.toFilteriUnion I ⊤)
      (l.toFilteriUnion J (Prepartition.single J I h)) := by
  simp only [toFilteriUnion, tendsto_iSup]; intro c
  set π₀ := Prepartition.single J I h
  refine le_iSup_of_le (max c π₀.compl.distortion) ?_
  refine ((l.hasBasis_toFilterDistortioniUnion I c ⊤).tendsto_iff
    (l.hasBasis_toFilterDistortioniUnion J _ _)).2 fun r hr => ?_
  refine ⟨r, hr, fun π hπ => ?_⟩
  rw [mem_setOf_eq, Prepartition.iUnion_top] at hπ
  refine ⟨⟨hπ.1.1, hπ.1.2, fun hD => le_trans (hπ.1.3 hD) (le_max_left _ _), fun _ => ?_⟩, ?_⟩
  · refine ⟨_, π₀.iUnion_compl.trans ?_, le_max_right _ _⟩
    congr 1
    exact (Prepartition.iUnion_single h).trans hπ.2.symm
  · exact hπ.2.trans (Prepartition.iUnion_single _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variante4810136c9614adcce28401cf66741dbc94adbbddbb85247e1db2ccfc176a76a.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56290c77fab34762a7379df0c69c70d2c0fe1fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
