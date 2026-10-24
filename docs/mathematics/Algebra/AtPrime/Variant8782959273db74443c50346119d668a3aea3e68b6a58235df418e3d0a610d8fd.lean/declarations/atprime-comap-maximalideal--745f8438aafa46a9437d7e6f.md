# AtPrime.comap_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc33d633-a1b7-8499-ec0a-626220578c4c",
  "kind": "theorem",
  "lexical_name": "AtPrime.comap_maximalIdeal",
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
  "slug": "atprime-comap-maximalideal--745f8438aafa46a9437d7e6f",
  "source": {
    "blob": "3169c6cc8c08926425ef8e8133332988c64d0ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:745f8438aafa46a9437d7e6f45f86a81928e0d4b2e427abf3a109a2215d491b4",
  "verification": {
    "reference": "docs/verification/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc33d633-a1b7-8499-ec0a-626220578c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AtPrime.comap_maximalIdeal :
    Ideal.comap (algebraMap R (Localization.AtPrime I))
        (IsLocalRing.maximalIdeal (Localization I.primeCompl)) =
      I :=
  -- Porting note: need to provide full name
  IsLocalization.AtPrime.comap_maximalIdeal _ _

/-- The image of `I` in the localization at `I.primeCompl` is a maximal ideal, and in particular
it is the unique maximal ideal given by the local ring structure `AtPrime.isLocalRing` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3169c6cc8c08926425ef8e8133332988c64d0ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
