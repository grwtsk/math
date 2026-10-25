# oneExitPointQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c63621be6eac7233fa6bcaa873442f175a6c0b5102ce9717595a689a21a6b0",
  "kind": "def",
  "lexical_name": "oneExitPointQuick",
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
  "slug": "oneexitpointquick--6a4b8333eef598285dcf88be",
  "source": {
    "blob": "186cc9e3655eab9bdf4391440296506dd6ca9d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a4b8333eef598285dcf88be45c4a00d9de2923034cd5041a3e7b6cf6d14c2e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c63621be6eac7233fa6bcaa873442f175a6c0b5102ce9717595a689a21a6b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def oneExitPointQuick (c : Code .pure) : Bool :=
  go c
where
  go (c : Code .pure) : Bool :=
    match c with
    | .let _ k | .fun _ k => go k
    -- Approximation, the cases may have many unreachable alternatives, and only reachable.
    | .cases c => c.alts.size == 1 && go c.alts[0]!.getCode
    -- Approximation, we assume that any code containing join points have more than one exit point
    | .jp .. | .jmp .. | .unreach .. => false
    | .return .. => true

/--
Create a new local function declaration when `info.args.size < info.params.size`.
We use this function to inline/specialize a partial application of a local function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `186cc9e3655eab9bdf4391440296506dd6ca9d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
