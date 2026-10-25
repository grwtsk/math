# Lean.ppConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b07028800885744a86fb8fe90b8d4efd6ba6937236ab3161040fc9e375b31524",
  "kind": "def",
  "lexical_name": "Lean.ppConst",
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
  "slug": "lean-ppconst--69b5ea2a2945d488fe2fe923",
  "source": {
    "blob": "8d93b361ddf4bbc44d2209edd628fb7db7d02b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborator/Variant0d21b01c415bd6159f4b25aa3d66d953be16ee9af4b226efad1d5ff9eccb8f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69b5ea2a2945d488fe2fe9230ed660b91392aa2e0cb0cda0babd8505e69ff96f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborator/Variant0d21b01c415bd6159f4b25aa3d66d953be16ee9af4b226efad1d5ff9eccb8f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b07028800885744a86fb8fe90b8d4efd6ba6937236ab3161040fc9e375b31524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.ppConst (e : Expr) : MessageData :=
  if e.isConst then
    .ofPPFormat {
      pp := fun
        | some ctx => ctx.runMetaM <| withOptions (pp.tagAppFns.set · true) <|
          -- The pp.tagAppFns option causes the `delabConst` function to annotate
          -- the constant with terminfo, which is necessary for seeing the type on mouse hover.
          PrettyPrinter.ppExprWithInfos (delab := delabConst) e
        | none => return f!"{e}"
    }
  else
    panic! "not a constant"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborator/Variant0d21b01c415bd6159f4b25aa3d66d953be16ee9af4b226efad1d5ff9eccb8f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborator/Variant0d21b01c415bd6159f4b25aa3d66d953be16ee9af4b226efad1d5ff9eccb8f7b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d93b361ddf4bbc44d2209edd628fb7db7d02b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
