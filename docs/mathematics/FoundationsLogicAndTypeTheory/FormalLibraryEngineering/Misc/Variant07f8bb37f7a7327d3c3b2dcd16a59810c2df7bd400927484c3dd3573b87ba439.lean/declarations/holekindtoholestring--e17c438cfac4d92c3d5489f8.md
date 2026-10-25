# holeKindToHoleString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f70a709a7b6c7c4bbe0d0e2d0a2fe488c0706ed4369aa421f11eb090341460ad",
  "kind": "def",
  "lexical_name": "holeKindToHoleString",
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
  "slug": "holekindtoholestring--e17c438cfac4d92c3d5489f8",
  "source": {
    "blob": "2b480dd006405f80640df5ba74b92bf07fb2758a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e17c438cfac4d92c3d5489f8f4de08376650ce786cbc29b282ed83e6fd52fce4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f70a709a7b6c7c4bbe0d0e2d0a2fe488c0706ed4369aa421f11eb090341460ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def holeKindToHoleString : (elaborator : Name) → (synthName : String) → String
  | ``Elab.Term.elabSyntheticHole, name => "?" ++ name
  | ``Elab.Term.elabSorry, _ => "sorry"
  | _, _ => "_"

/--
Hole code action used to fill in a structure's field when specifying an instance.

In the following:
```lean
instance : Monad Id := _
```

invoking the hole code action "Generate a skeleton for the structure under construction." produces:
```lean
instance : Monad Id := {
  map := _
  mapConst := _
  pure := _
  seq := _
  seqLeft := _
  seqRight := _
  bind := _
}
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b480dd006405f80640df5ba74b92bf07fb2758a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
