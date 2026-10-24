# ciSup_partialSups_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592a08f05f096ff7b1ea91471b2e001b932d9a28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f42db4c-f13b-22dd-3e0d-ad8e0102b9cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73e2be69-c8f3-b7cb-349b-eb97db3aa1bb",
  "kind": "theorem",
  "lexical_name": "ciSup_partialSups_eq",
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
  "slug": "cisup-partialsups-eq--35acb8946abb69907f62d968",
  "source": {
    "blob": "592a08f05f096ff7b1ea91471b2e001b932d9a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35acb8946abb69907f62d968a0c4cde07fff654a50aa264825e062131a72c105",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e2be69-c8f3-b7cb-349b-eb97db3aa1bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ciSup_partialSups_eq {f : ℕ → α} (h : BddAbove (Set.range f)) :
    ⨆ n, partialSups f n = ⨆ n, f n := by
  refine' (ciSup_le fun n => _).antisymm (ciSup_mono _ <| le_partialSups f)
  · rw [partialSups_eq_ciSup_Iic]
    exact ciSup_le fun i => le_ciSup h _
  · rwa [bddAbove_range_partialSups]
#align csupr_partial_sups_eq ciSup_partialSups_eq

end ConditionallyCompleteLattice

section CompleteLattice

variable [CompleteLattice α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592a08f05f096ff7b1ea91471b2e001b932d9a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
