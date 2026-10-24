# minimalPeriod_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1a1d2bd4055ba8db0f59eddfa84c0a32db575e637f0d1afdd94e5bec5a4fdce",
  "kind": "instance",
  "lexical_name": "minimalPeriod_pos",
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
  "slug": "minimalperiod-pos--33d77cb5cd7158d7fce1f4fa",
  "source": {
    "blob": "87888abfcc8b20ed150f462715155502ecfda9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 152,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33d77cb5cd7158d7fce1f4fa3dd4eada36ca61267e0380e703210888c73b7505",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1a1d2bd4055ba8db0f59eddfa84c0a32db575e637f0d1afdd94e5bec5a4fdce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance minimalPeriod_pos [Finite <| orbit (zpowers a) b] :
    NeZero <| minimalPeriod (a • ·) b :=
  ⟨by
    cases nonempty_fintype (orbit (zpowers a) b)
    have : Nonempty (orbit (zpowers a) b) := (nonempty_orbit b).to_subtype
    rw [minimalPeriod_eq_card]
    exact Fintype.card_ne_zero⟩

end MulAction

section Group

open Subgroup

variable {α : Type*} [Group α] (a : α)

/-- See also `Fintype.card_zpowers`. -/
@[to_additive (attr := simp) /-- See also `Fintype.card_zmultiples`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87888abfcc8b20ed150f462715155502ecfda9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
