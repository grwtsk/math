# WP.Frames.op_wp_upperAdjoint_le_wp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffa57bc89ab4bed7603a8bb3ef29eee576023d96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3d0c6e0-029b-ac65-5cf9-045a4231de75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44fcbecd-af0b-adc7-7d8f-25da2f7aa1c2",
  "kind": "theorem",
  "lexical_name": "WP.Frames.op_wp_upperAdjoint_le_wp",
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
  "slug": "wp-frames-op-wp-upperadjoint-le-wp--02ff0350614740a925e3d099",
  "source": {
    "blob": "ffa57bc89ab4bed7603a8bb3ef29eee576023d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ff0350614740a925e3d099eb8404994dac0b5591a77680ee2b8c468f4c2103",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44fcbecd-af0b-adc7-7d8f-25da2f7aa1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WP.Frames.op_wp_upperAdjoint_le_wp {R : Type t} (op : R → Pred → Pred)
    [∀ r, PreservesSup (op r)] {x : Prog} {F : R} (hframes : WP.Frames op x F) :
    ∀ Q E, op F (wp x (fun a => PreservesSup.upperAdjoint (op F) (Q a)) E) ⊑ wp x Q E := by
  intros
  apply PartialOrder.rel_trans
  apply hframes.conj_wp_le_wp_conj
  apply WP.wp_consequence
  intro
  apply PreservesSup.upperAdjoint_le

/-- `PreservesSup.le_frameClosure` at the `wp` layer: when `x` frames every resource `r`, landing
below `wp x Q E` suffices to land below the frame closure of `wp x · E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa57bc89ab4bed7603a8bb3ef29eee576023d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
