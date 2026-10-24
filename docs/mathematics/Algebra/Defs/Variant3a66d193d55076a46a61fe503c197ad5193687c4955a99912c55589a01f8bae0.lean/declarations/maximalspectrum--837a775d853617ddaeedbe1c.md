# MaximalSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:407c7fcd93b53484fc83cbef920b94df1d114c7ffa2875d9463499591a1b7222",
  "kind": "structure",
  "lexical_name": "MaximalSpectrum",
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
  "slug": "maximalspectrum--837a775d853617ddaeedbe1c",
  "source": {
    "blob": "0a798a9410e85a6dc8d63c00c3d25c31c6c7c7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Algebra/Defs/Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:837a775d853617ddaeedbe1cc2893d19d170b3bec9592fef7ffd16c5d1f52cb5",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:407c7fcd93b53484fc83cbef920b94df1d114c7ffa2875d9463499591a1b7222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MaximalSpectrum (R : Type*) [CommSemiring R] where
  asIdeal : Ideal R
  isMaximal : asIdeal.IsMaximal

@[deprecated (since := "2025-01-16")] alias MaximalSpectrum.IsMaximal := MaximalSpectrum.isMaximal

attribute [instance] MaximalSpectrum.isMaximal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a798a9410e85a6dc8d63c00c3d25c31c6c7c7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
