# JudgePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da82fa8b1e695dd77b216ec080baebc61f3b0cce4b2a3fc20b33463885f6ade5",
  "kind": "abbrev",
  "lexical_name": "JudgePair",
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
  "slug": "judgepair--1422dcd2c0a0bf74b80aa9f1",
  "source": {
    "blob": "ff961aa178853e394f173bcfb518534270782c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 54,
    "path": "GRWTSK/Algebra/Imo1998Q2/Variantc4dcf4c3372f46296a0a42bdc98cb8646ee50c205d0eb0379f94794ddf49f990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1422dcd2c0a0bf74b80aa9f10933a02663d1c72bb8a8609e4fe662a0d896d1ad",
  "verification": {
    "reference": "docs/verification/Algebra/Imo1998Q2/Variantc4dcf4c3372f46296a0a42bdc98cb8646ee50c205d0eb0379f94794ddf49f990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da82fa8b1e695dd77b216ec080baebc61f3b0cce4b2a3fc20b33463885f6ade5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev JudgePair (J : Type*) :=
  J × J

/-- A triple consisting of contestant together with an ordered pair of judges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo1998Q2/Variantc4dcf4c3372f46296a0a42bdc98cb8646ee50c205d0eb0379f94794ddf49f990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo1998Q2/Variantc4dcf4c3372f46296a0a42bdc98cb8646ee50c205d0eb0379f94794ddf49f990.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff961aa178853e394f173bcfb518534270782c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
