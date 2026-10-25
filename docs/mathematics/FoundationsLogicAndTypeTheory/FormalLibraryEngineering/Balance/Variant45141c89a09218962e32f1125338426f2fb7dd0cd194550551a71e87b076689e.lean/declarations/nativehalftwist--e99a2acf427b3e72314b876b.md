# nativeHalfTwist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbbbad5c9cf07de26f38203f18eb2903af610e4754355f1f1f00dbb7e66156b4",
  "kind": "def",
  "lexical_name": "nativeHalfTwist",
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
  "slug": "nativehalftwist--e99a2acf427b3e72314b876b",
  "source": {
    "blob": "4ae37e5abec2feeec0b2b062917f47c71af9e5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balance/Variant45141c89a09218962e32f1125338426f2fb7dd0cd194550551a71e87b076689e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e99a2acf427b3e72314b876bca4b34c7bd7488bc5ea073aca4b826725e78227a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balance/Variant45141c89a09218962e32f1125338426f2fb7dd0cd194550551a71e87b076689e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbbbad5c9cf07de26f38203f18eb2903af610e4754355f1f1f00dbb7e66156b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nativeHalfTwist : NativeTwist :=
  {
    twistAt := center
    beforePlusRole := .nondegenerate
    beforeMinusRole := .degenerate
    afterPlusRole := roleSwap .nondegenerate
    afterMinusRole := roleSwap .degenerate
    beforePlusEmission := .one
    beforeMinusEmission := .zero
    afterPlusEmission := emissionComplement .zero
    afterMinusEmission := emissionComplement .one
    emissionComplemented := true
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balance/Variant45141c89a09218962e32f1125338426f2fb7dd0cd194550551a71e87b076689e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balance/Variant45141c89a09218962e32f1125338426f2fb7dd0cd194550551a71e87b076689e.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae37e5abec2feeec0b2b062917f47c71af9e5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
