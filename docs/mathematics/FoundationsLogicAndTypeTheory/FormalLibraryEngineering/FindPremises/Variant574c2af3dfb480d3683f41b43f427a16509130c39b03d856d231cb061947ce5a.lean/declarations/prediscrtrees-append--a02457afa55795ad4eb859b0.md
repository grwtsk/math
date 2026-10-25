# PreDiscrTrees.append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2feb250a1d0519c51476a3e4f4bdedc9e581f0666dd97105a934b8ffbc406ce",
  "kind": "def",
  "lexical_name": "PreDiscrTrees.append",
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
  "slug": "prediscrtrees-append--a02457afa55795ad4eb859b0",
  "source": {
    "blob": "602568f1498758ccd989769dc8aa40280d88206e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a02457afa55795ad4eb859b0af694021e5757936ea61c9f7ceb86eb2763a7394",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2feb250a1d0519c51476a3e4f4bdedc9e581f0666dd97105a934b8ffbc406ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreDiscrTrees.append (pres : PreDiscrTrees) (maps : Entries) : PreDiscrTrees where
  rw := maps.rw.foldl (init := pres.rw) fun pre (key, e) ↦ pre.push key e
  grw := maps.grw.foldl (init := pres.grw) fun pre (key, e) ↦ pre.push key e
  app := maps.app.foldl (init := pres.app) fun pre (key, e) ↦ pre.push key e
  appAt := maps.appAt.foldl (init := pres.appAt) fun pre (key, e) ↦ pre.push key e

/-- The configuration used when indexing into the discrimination tree, and when looking up in it.

We do not reduce projections so that e.g. `Fin.val_mk : ⟨m, h⟩.val = m` can be indexed properly.

TODO?: projections should be reduced inside implicit arguments,
because otherwise we may reject some valid matches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602568f1498758ccd989769dc8aa40280d88206e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
