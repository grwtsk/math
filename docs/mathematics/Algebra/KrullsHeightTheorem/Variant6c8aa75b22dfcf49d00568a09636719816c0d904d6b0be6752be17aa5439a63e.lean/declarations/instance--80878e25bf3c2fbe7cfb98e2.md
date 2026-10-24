# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eb41e621fe9f1b22d66f0f0380c89c2f526866bcf240340e6d97a2beac540fe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--80878e25bf3c2fbe7cfb98e2",
  "source": {
    "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80878e25bf3c2fbe7cfb98e2c46158e829a0a533e8714f53b4b5f9afc1f3c3f6",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eb41e621fe9f1b22d66f0f0380c89c2f526866bcf240340e6d97a2beac540fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsNoetherianRing R] [IsLocalRing R] : FiniteRingKrullDim R := by
  apply finiteRingKrullDim_iff_ne_bot_and_top.mpr
  rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim]
  constructor
  · exact WithBot.coe_ne_bot
  · rw [← WithBot.coe_top, ne_eq, WithBot.coe_inj]
    exact ((IsLocalRing.maximalIdeal R).finiteHeight_iff.mp
      (IsLocalRing.maximalIdeal R).finiteHeight_of_isNoetherianRing).resolve_left
        Ideal.IsPrime.ne_top'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7224db578768f05f3dcd1859c50a2b7dabb63cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
