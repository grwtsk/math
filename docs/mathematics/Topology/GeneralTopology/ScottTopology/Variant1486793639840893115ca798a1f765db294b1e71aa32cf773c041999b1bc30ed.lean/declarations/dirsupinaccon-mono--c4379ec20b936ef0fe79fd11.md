# DirSupInaccOn.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37f679fa-6aae-896e-0492-f1b77629c935",
  "kind": "lemma",
  "lexical_name": "DirSupInaccOn.mono",
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
  "slug": "dirsupinaccon-mono--c4379ec20b936ef0fe79fd11",
  "source": {
    "blob": "43a71df3592ef86ca5339c89a845585e58ae5f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant1486793639840893115ca798a1f765db294b1e71aa32cf773c041999b1bc30ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4379ec20b936ef0fe79fd1151b73d8d6767e0a07b530d5446a9b883951c4cb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variant1486793639840893115ca798a1f765db294b1e71aa32cf773c041999b1bc30ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f679fa-6aae-896e-0492-f1b77629c935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DirSupInaccOn.mono {D₁ D₂ : Set (Set α)} (hD : D₁ ⊆ D₂) (hf : DirSupInaccOn D₂ s) :
    DirSupInaccOn D₁ s := fun ⦃_⦄ a ↦ hf (hD a)

/--
A set `s` is said to be closed under directed joins if, whenever a directed set `d` has a least
upper bound `a` and is a subset of `s` then `a` also lies in `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variant1486793639840893115ca798a1f765db294b1e71aa32cf773c041999b1bc30ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variant1486793639840893115ca798a1f765db294b1e71aa32cf773c041999b1bc30ed.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a71df3592ef86ca5339c89a845585e58ae5f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
