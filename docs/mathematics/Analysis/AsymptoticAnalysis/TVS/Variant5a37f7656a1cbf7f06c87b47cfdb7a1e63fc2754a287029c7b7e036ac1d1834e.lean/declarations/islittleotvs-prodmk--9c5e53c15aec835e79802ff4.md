# IsLittleOTVS.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dbd1d7363a36193dbe45d1c3afe0f7f948faac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5adb890-2e55-2588-739e-6dc33dbd59bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97cf3326-daa0-57b5-aaab-572a5f1a38c8",
  "kind": "theorem",
  "lexical_name": "IsLittleOTVS.prodMk",
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
  "slug": "islittleotvs-prodmk--9c5e53c15aec835e79802ff4",
  "source": {
    "blob": "8dbd1d7363a36193dbe45d1c3afe0f7f948faac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 465,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c5e53c15aec835e79802ff4721c4e0777e2cfe1d4a24eeb1196f34cce0fe392",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97cf3326-daa0-57b5-aaab-572a5f1a38c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleOTVS.prodMk [ContinuousSMul 𝕜 E] [ContinuousSMul 𝕜 F] {k : α → G}
    (hf : f =o[𝕜; l] k) (hg : g =o[𝕜; l] k) : (fun x ↦ (f x, g x)) =o[𝕜; l] k := by
  rw [((nhds_basis_balanced 𝕜 E).prod_nhds (nhds_basis_balanced 𝕜 F)).isLittleOTVS_iff
    (basis_sets _)]
  rintro ⟨U, V⟩ ⟨⟨hU, hUb⟩, hV, hVb⟩
  rcases ((hf.eventually_smallSets U hU).and (hg.eventually_smallSets V hV)).exists_mem_of_smallSets
    with ⟨W, hW, hWf, hWg⟩
  refine ⟨W, hW, fun ε hε ↦ ?_⟩
  filter_upwards [hWf ε hε, hWg ε hε] with x hfx hgx
  simp [egauge_prod_mk, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dbd1d7363a36193dbe45d1c3afe0f7f948faac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
