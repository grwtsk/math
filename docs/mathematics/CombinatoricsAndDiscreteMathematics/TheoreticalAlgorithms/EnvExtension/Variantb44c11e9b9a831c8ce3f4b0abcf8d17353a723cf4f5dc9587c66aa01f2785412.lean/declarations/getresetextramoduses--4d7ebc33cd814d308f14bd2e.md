# getResetExtraModUses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1694ca87ce7bfdc7380724e9e091872c739f4ba317ee29d8e0e15d49e568d30c",
  "kind": "def",
  "lexical_name": "getResetExtraModUses",
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
  "slug": "getresetextramoduses--4d7ebc33cd814d308f14bd2e",
  "source": {
    "blob": "54e50ed1ff3049557ebce4d8b8f83728e9a90198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d7ebc33cd814d308f14bd2ee55070bcd902e970bd831bda7d079ebdbd78b390",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1694ca87ce7bfdc7380724e9e091872c739f4ba317ee29d8e0e15d49e568d30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getResetExtraModUses (env : Environment)
    (asyncMode : EnvExtension.AsyncMode := extraModUsesAsyncMode)
    (asyncDecl : Name := Name.anonymous) :
    (List ExtraModUse × PHashSet ExtraModUse) × Environment :=
  (getNewExtraModUses env asyncMode asyncDecl, resetNewExtraModUses env)

/-- A wrapper for `isExtraRevModUseExt.toEnvExtension.asyncMode` to allow it to appear as an
`optParam` in a public-facing type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54e50ed1ff3049557ebce4d8b8f83728e9a90198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
