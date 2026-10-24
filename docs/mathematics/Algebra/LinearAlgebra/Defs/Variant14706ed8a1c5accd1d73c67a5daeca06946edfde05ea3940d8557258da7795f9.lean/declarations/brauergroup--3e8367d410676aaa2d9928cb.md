# BrauerGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf9914d649a003f80cf04995b39e80946562afabc44daf68df8f16b3982e6542",
  "kind": "abbrev",
  "lexical_name": "BrauerGroup",
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
  "slug": "brauergroup--3e8367d410676aaa2d9928cb",
  "source": {
    "blob": "8119195d127ed228a5787b065fd735a3477531a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e8367d410676aaa2d9928cb25cd2af9fa72ee0781d5f94b458e3f20981daef9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf9914d649a003f80cf04995b39e80946562afabc44daf68df8f16b3982e6542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev BrauerGroup := Quotient (Brauer.CSA_Setoid K)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8119195d127ed228a5787b065fd735a3477531a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
