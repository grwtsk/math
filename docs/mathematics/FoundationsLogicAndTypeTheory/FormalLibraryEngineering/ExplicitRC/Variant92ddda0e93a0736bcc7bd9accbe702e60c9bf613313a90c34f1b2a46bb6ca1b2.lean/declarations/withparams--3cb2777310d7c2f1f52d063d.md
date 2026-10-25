# withParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10fadba2e692976b52a41acf84b1b5432e9bff8064ce4544a37fc561232da217",
  "kind": "def",
  "lexical_name": "withParams",
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
  "slug": "withparams--3cb2777310d7c2f1f52d063d",
  "source": {
    "blob": "7b7ef1e41b5cea84d054d59625e52fafc96b4c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cb2777310d7c2f1f52d063d1e5177da1704c5fa956353824b67dafe29828d8c",
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

Occurrence: `declaration:10fadba2e692976b52a41acf84b1b5432e9bff8064ce4544a37fc561232da217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withParams (ps : Array (Param .impure)) (x : RcM α) : RcM α := do
  let update := fun ctx =>
    ps.foldl (init := ctx) fun ctx p =>
      let varMap := ctx.varMap.insert p.fvarId {
        isPossibleRef := p.type.isPossibleRef
        isDefiniteRef := p.type.isDefiniteRef
        persistent := false
        idx := ctx.idx,
        ctorInfo := none,
      }
      { ctx with idx := ctx.idx + 1, varMap }
  withReader update x

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7ef1e41b5cea84d054d59625e52fafc96b4c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
