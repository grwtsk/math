# withCtorAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a7f78986e571766efc68139cd99c89f824fb79cf7a18e10471c7fdd4e2fd108",
  "kind": "def",
  "lexical_name": "withCtorAlt",
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
  "slug": "withctoralt--6f6ed822bb86ed855c82d83b",
  "source": {
    "blob": "7b7ef1e41b5cea84d054d59625e52fafc96b4c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f6ed822bb86ed855c82d83bfb7fefbda2dbb0d071804e5ca61f95ebed8d72ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a7f78986e571766efc68139cd99c89f824fb79cf7a18e10471c7fdd4e2fd108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withCtorAlt (discr : FVarId) (c : CtorInfo) (x : RcM α) : RcM α := do
  withReader
    (fun ctx =>
      { ctx with
        varMap :=
          match ctx.varMap.get? discr with
          | some info =>
            let isPossibleRef := c.isRef
            let isDefiniteRef := c.isRef
            ctx.varMap.insert discr
              { info with isPossibleRef, isDefiniteRef, idx := ctx.idx + 1, ctorInfo := some c }
          | none => ctx.varMap
        idx := ctx.idx + 1
      }) do x

/--
Reset the currently collected liveVars, run `x`, return the liveVars it collected and recover the
original set.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7ef1e41b5cea84d054d59625e52fafc96b4c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
