# prod_map_comap_prod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f8899b8-1541-b1b5-36d8-067d92c070f2",
  "kind": "theorem",
  "lexical_name": "prod_map_comap_prod'",
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
  "slug": "prod-map-comap-prod--355b006ffc9d20665e4b28f3",
  "source": {
    "blob": "889f97dea8be98bfb53d0ed2a7ec849bada3d1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1233,
    "line": 1225,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355b006ffc9d20665e4b28f381e0fb516bc90ff27fde213d542b26a76a921fba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f8899b8-1541-b1b5-36d8-067d92c070f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1225–1233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_map_comap_prod' {M' : Type*} {N' : Type*} [MulOneClass M'] [MulOneClass N']
    (f : M →* N) (g : M' →* N') (S : Submonoid N) (S' : Submonoid N') :
    (S.prod S').comap (prodMap f g) = (S.comap f).prod (S'.comap g) :=
  SetLike.coe_injective <| Set.preimage_prod_map_prod f g _ _
#align monoid_hom.prod_map_comap_prod' MonoidHom.prod_map_comap_prod'
-- Porting note: to_additive translated the name incorrectly in mathlib 3.
#align add_monoid_hom.sum_map_comap_sum' AddMonoidHom.prod_map_comap_prod'

@[to_additive mker_prod_map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean#L1225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889f97dea8be98bfb53d0ed2a7ec849bada3d1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
