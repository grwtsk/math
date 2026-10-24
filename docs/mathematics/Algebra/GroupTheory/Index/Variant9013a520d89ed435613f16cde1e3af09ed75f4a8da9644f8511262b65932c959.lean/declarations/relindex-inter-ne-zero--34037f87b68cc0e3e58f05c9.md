# relindex_inter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2ba7b11-19c0-cdb0-b5ab-1f392960b0b0",
  "kind": "lemma",
  "lexical_name": "relindex_inter_ne_zero",
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
  "slug": "relindex-inter-ne-zero--34037f87b68cc0e3e58f05c9",
  "source": {
    "blob": "f2fca1f2afd86743252d35377a46d4abe0ac3967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 349,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant9013a520d89ed435613f16cde1e3af09ed75f4a8da9644f8511262b65932c959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34037f87b68cc0e3e58f05c9dd04928af86e092dd1fd548f914f752252ff9f72",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variant9013a520d89ed435613f16cde1e3af09ed75f4a8da9644f8511262b65932c959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ba7b11-19c0-cdb0-b5ab-1f392960b0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma relindex_inter_ne_zero {J K : Subgroup G} (hJK : J.relindex K ≠ 0) (L : Subgroup G) :
    (J ⊓ L).relindex (K ⊓ L) ≠ 0 := by
  rw [← range_subtype L, inf_comm, ← map_comap_eq, inf_comm, ← map_comap_eq, ← relindex_comap,
    comap_map_eq_self_of_injective (subtype_injective L)]
  exact relindex_comap_ne_zero _ hJK

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant9013a520d89ed435613f16cde1e3af09ed75f4a8da9644f8511262b65932c959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant9013a520d89ed435613f16cde1e3af09ed75f4a8da9644f8511262b65932c959.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2fca1f2afd86743252d35377a46d4abe0ac3967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
