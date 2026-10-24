# pullbackAwayιIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:738a4e8c35c6f0d3169279782b1a700f392bb2dd0f8cddf9168bc77be863d451",
  "kind": "def",
  "lexical_name": "pullbackAwayιIso",
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
  "slug": "pullbackaway-iso--ea52aa795f970af4a3378924",
  "source": {
    "blob": "817ed1571c3c72c45bd0935b33f5bc9f1ac84a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 252,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea52aa795f970af4a33789245a0e3346df17fcfe22df0a47d1bda54b988b585c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:738a4e8c35c6f0d3169279782b1a700f392bb2dd0f8cddf9168bc77be863d451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackAwayιIso :
    Limits.pullback (awayι 𝒜 f f_deg hm) (awayι 𝒜 g g_deg hm') ≅
      Spec (CommRingCat.of (Away 𝒜 x)) :=
    IsOpenImmersion.isoOfRangeEq (Limits.pullback.fst _ _ ≫ awayι 𝒜 f f_deg hm)
      (awayι 𝒜 x (hx ▸ SetLike.mul_mem_graded f_deg g_deg) (hm.trans_le (m.le_add_right m'))) <| by
  rw [IsOpenImmersion.range_pullback_to_base_of_left]
  show ((awayι 𝒜 f _ _).opensRange ⊓ (awayι 𝒜 g _ _).opensRange).1 = (awayι 𝒜 _ _ _).opensRange.1
  rw [opensRange_awayι, opensRange_awayι, opensRange_awayι, ← basicOpen_mul, hx]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817ed1571c3c72c45bd0935b33f5bc9f1ac84a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
