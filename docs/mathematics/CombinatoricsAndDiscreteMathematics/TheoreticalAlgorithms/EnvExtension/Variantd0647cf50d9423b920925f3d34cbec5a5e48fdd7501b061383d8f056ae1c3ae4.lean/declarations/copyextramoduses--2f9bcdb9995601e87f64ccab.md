# copyExtraModUses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43d69be12eb09ddb810d62da961e6e89e82198ae511b4f9fdcd5311817a453e5",
  "kind": "def",
  "lexical_name": "copyExtraModUses",
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
  "slug": "copyextramoduses--2f9bcdb9995601e87f64ccab",
  "source": {
    "blob": "e1b04fa19db41fc9a00ee48fd5053ca89803021c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantd0647cf50d9423b920925f3d34cbec5a5e48fdd7501b061383d8f056ae1c3ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f9bcdb9995601e87f64ccabb81fe79aedec9896c4d541e7feda70ddf850ba92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantd0647cf50d9423b920925f3d34cbec5a5e48fdd7501b061383d8f056ae1c3ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43d69be12eb09ddb810d62da961e6e89e82198ae511b4f9fdcd5311817a453e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def copyExtraModUses (src dest : Environment)
    (srcAsyncMode := extraModUsesAsyncMode)
    (destAsyncMode := extraModUsesAsyncMode) (destAsyncDecl := Name.anonymous) :
    Environment := Id.run do
  let mut env := dest
  for entry in extraModUses.getEntries src srcAsyncMode do
    if !(extraModUses.getState env destAsyncMode destAsyncDecl).contains entry then
      env := extraModUses.addEntry env entry destAsyncMode destAsyncDecl
  env

/-- Copies new indirect mod uses from `src` and adds them to `dest`. Does not erase extra mod uses
already in `dest`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantd0647cf50d9423b920925f3d34cbec5a5e48fdd7501b061383d8f056ae1c3ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantd0647cf50d9423b920925f3d34cbec5a5e48fdd7501b061383d8f056ae1c3ae4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b04fa19db41fc9a00ee48fd5053ca89803021c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
