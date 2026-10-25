# getFVarIdCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a989cbfaf78bcc313daa469fecff683a6aa0584ddc3f52574ca3c4918c9630a2",
  "kind": "def",
  "lexical_name": "getFVarIdCandidates",
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
  "slug": "getfvaridcandidates--b960ea177d6aca4c5e65703d",
  "source": {
    "blob": "37ab45bf334aaaf5f004bde7cce26d37af5ec574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b960ea177d6aca4c5e65703db452a5260b0382b156571d0b67f1e7f748e9924c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a989cbfaf78bcc313daa469fecff683a6aa0584ddc3f52574ca3c4918c9630a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFVarIdCandidates (fv : FVarId) (name : Name) (lctx : LocalContext) : Array FVarId :=
  #[lctx.find? fv, lctx.findFromUserName? name].reduceOption.map (·.fvarId)

/-!
Tactics often change the name of the current `MVarId`, as well as the names of the `FVarId`s
appearing in their local contexts.
The function `reallyPersist` makes an attempt at "tracking" pairs `(fvar, mvar)` across a
simultaneous change represented by an "old" list of `MVarId`s and the corresponding
`MetavarContext` and a new one.

This arises in the context of the information encoded in the `InfoTree`s when processing a
tactic proof.
-/

/-- `persistFVars` is one step in persisting: track a single `FVarId` between two `LocalContext`s.
If an `FVarId` with the same unique name exists in the new context, use it.
Otherwise, if an `FVarId` with the same `userName` exists in the new context, use it.
If both of these fail, return `default` (i.e. "fail"). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ab45bf334aaaf5f004bde7cce26d37af5ec574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
