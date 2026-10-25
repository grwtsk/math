# ecard_lt_ecard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e164277-1f37-20fc-2ef4-85a10f3af951",
  "kind": "theorem",
  "lexical_name": "ecard_lt_ecard",
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
  "slug": "ecard-lt-ecard--dcb1f3476e3187f5f73cc230",
  "source": {
    "blob": "6cacfb9324ea28d0203f403d1fcbdcce474d8f3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb1f3476e3187f5f73cc230fe4212777a2abbe17636151ac32c52078d0008a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e164277-1f37-20fc-2ef4-85a10f3af951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ecard_lt_ecard (hs : s.Finite) (hsub : s ⊂ t) : ENat.card s < ENat.card t := by
  classical
  suffices ENat.card t ≤ ENat.card s → t ⊆ s from
    lt_of_le_not_ge (ecard_le_ecard hsub.subset) fun hle ↦ not_subset_of_ssubset hsub <| this hle
  intro hle
  suffices ENat.card ↑(t \ s) ≤ 0 by
    rwa [← sdiff_eq_empty, ← Set.isEmpty_coe_sort, ← ENat.card_eq_zero_iff_empty,
      ← nonpos_iff_eq_zero]
  suffices ENat.card ↑(t \ s) + ENat.card ↑s ≤ 0 + ENat.card ↑s from
    WithTop.le_of_add_le_add_right (ENat.card_lt_top.mpr hs).ne this
  suffices ENat.card ↑t ≤ 0 + ENat.card ↑s by
    rwa [← ENat.card_sum, ← ENat.card_congr <| Equiv.Set.union disjoint_sdiff_left,
      sdiff_union_of_subset hsub.subset]
  exact le_add_of_le_right hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cacfb9324ea28d0203f403d1fcbdcce474d8f3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
