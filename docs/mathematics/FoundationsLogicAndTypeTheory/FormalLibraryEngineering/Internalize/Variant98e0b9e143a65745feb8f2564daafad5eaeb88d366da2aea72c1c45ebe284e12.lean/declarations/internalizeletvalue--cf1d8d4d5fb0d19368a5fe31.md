# internalizeLetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81aecd6feb37eef2855ad95cf5680a25659e52367cec8e2d02042fe7d111b1ff",
  "kind": "def",
  "lexical_name": "internalizeLetValue",
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
  "slug": "internalizeletvalue--cf1d8d4d5fb0d19368a5fe31",
  "source": {
    "blob": "2d1f4f2b975c67aa8ee3c91ab9621ec077846698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1d8d4d5fb0d19368a5fe31aa3d46345b5be58193ca1eae5bc3cda615ee22fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81aecd6feb37eef2855ad95cf5680a25659e52367cec8e2d02042fe7d111b1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def internalizeLetValue (e : LetValue pu) : InternalizeM pu (LetValue pu) := do
  match e with
  | .erased | .lit .. => return e
  | .proj _ _ fvarId _ | .oproj _ fvarId _ | .sproj _ _ fvarId _ | .uproj _ fvarId _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateProj! fvarId'
    | .erased => return .erased
  | .const _ _ args _ | .fap _ args _ | .pap _ args _ | .ctor _ args _ =>
    return e.updateArgs! (← internalizeArgs args)
  | .fvar fvarId args => match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateFVar! fvarId' (← internalizeArgs args)
    | .erased => return .erased
  | .reset n fvarId _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateReset! n fvarId'
    | .erased => return .erased
  | .reuse fvarId info updateHeader args _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateReuse! fvarId' info updateHeader (← internalizeArgs args)
    | .erased => return .erased
  | .unbox fvarId _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateUnbox! fvarId'
    | .erased => return .erased
  | .box ty fvarId _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateBox! ty fvarId'
    | .erased => return .erased
  | .isShared fvarId _ =>
    match (← normFVar fvarId) with
    | .fvar fvarId' => return e.updateIsShared! fvarId'
    | .erased => return .erased

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1f4f2b975c67aa8ee3c91ab9621ec077846698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
