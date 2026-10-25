# MatchKind.toStringDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:018e25eadb1ab736f4e9942a686688bfbe617fc527ffa87f534be22a73691998",
  "kind": "def",
  "lexical_name": "MatchKind.toStringDescr",
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
  "slug": "matchkind-tostringdescr--81a36e08ec66eeea6f5ac201",
  "source": {
    "blob": "3d881b177c7417f37fe05237cb3532d49b0dacf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81a36e08ec66eeea6f5ac2016b117cb48b9251e127fc98c767e69bd7ab3d611b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:018e25eadb1ab736f4e9942a686688bfbe617fc527ffa87f534be22a73691998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MatchKind.toStringDescr : MatchKind → String
  | .syntactic => "syntactically equal to"
  | .defEq .default => s!"definitionally equal to"
  | .defEq .all => s!"definitionally equal (unfolding all constants) to"
  | .defEq .reducible => s!"definitionally equal (unfolding reducible constants) to"
  | .defEq .instances => s!"definitionally equal (unfolding instance_reducible) to"
  | .defEq .implicit => s!"definitionally equal (unfolding instance_reducible and implicit_reducible) to"
  | .defEq .none => s!"definitionally equal (not unfolding any constants) to"
  | .alphaEq => "alpha-equivalent to"

/-- Elaborate `a` and `b` and then do the given equality test `mk`. We make sure to unify
the types of `a` and `b` after elaboration so that when synthesizing pending metavariables
we don't get the wrong instances due to default instances (for example, for nat literals). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d881b177c7417f37fe05237cb3532d49b0dacf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
