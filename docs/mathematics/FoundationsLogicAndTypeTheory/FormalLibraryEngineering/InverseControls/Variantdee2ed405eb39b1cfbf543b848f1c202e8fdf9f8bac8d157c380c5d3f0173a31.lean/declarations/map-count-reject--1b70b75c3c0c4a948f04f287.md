# map_count_reject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e14b43221ad89d913ac1443cb05d7705e4badf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/systems/foundation/canonical/formal/c2/InverseControls.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e993ae-c493-0f6a-ffd4-f36976825cb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5b87252-a9d9-1c34-676a-2263593bb63d",
  "kind": "theorem",
  "lexical_name": "map_count_reject",
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
  "slug": "map-count-reject--1b70b75c3c0c4a948f04f287",
  "source": {
    "blob": "3e14b43221ad89d913ac1443cb05d7705e4badf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseControls/Variantdee2ed405eb39b1cfbf543b848f1c202e8fdf9f8bac8d157c380c5d3f0173a31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b70b75c3c0c4a948f04f2876e4121911fc4b3947f5f5e706da4b9ff37646cd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseControls/Variantdee2ed405eb39b1cfbf543b848f1c202e8fdf9f8bac8d157c380c5d3f0173a31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b87252-a9d9-1c34-676a-2263593bb63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_count_reject (fuel : Nat) (ps : List (Bytes × Value)) (s : Bytes)
    (h : 64 < ps.length) : parseValue (fuel+1) (emit (.map ps) ++ s) = none := by
  simp only [emit, List.cons_append, List.append_assoc]
  rw [parseValue]
  simp [readNat_digits _ _ ':' (by decide), h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseControls/Variantdee2ed405eb39b1cfbf543b848f1c202e8fdf9f8bac8d157c380c5d3f0173a31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseControls/Variantdee2ed405eb39b1cfbf543b848f1c202e8fdf9f8bac8d157c380c5d3f0173a31.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e14b43221ad89d913ac1443cb05d7705e4badf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
