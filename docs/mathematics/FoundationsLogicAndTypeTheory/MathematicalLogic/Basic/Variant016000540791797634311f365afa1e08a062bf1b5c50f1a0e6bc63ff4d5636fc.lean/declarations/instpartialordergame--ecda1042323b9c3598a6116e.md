# instPartialOrderGame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efe41eedfdb6b13c4266df852cf7c1957f335ed3ec90cb81194a9dd03e187577",
  "kind": "instance",
  "lexical_name": "instPartialOrderGame",
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
  "slug": "instpartialordergame--ecda1042323b9c3598a6116e",
  "source": {
    "blob": "63aee731e221da7ed91d75dd854fadf2690de46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecda1042323b9c3598a6116e5d2764ff161eabd92b7f2d2fb47aedcbb6e16c93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efe41eedfdb6b13c4266df852cf7c1957f335ed3ec90cb81194a9dd03e187577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPartialOrderGame : PartialOrder Game where
  le := Quotient.lift₂ (· ≤ ·) fun _ _ _ _ hx hy => propext (le_congr hx hy)
  le_refl := by
    rintro ⟨x⟩
    exact le_refl x
  le_trans := by
    rintro ⟨x⟩ ⟨y⟩ ⟨z⟩
    exact @le_trans _ _ x y z
  le_antisymm := by
    rintro ⟨x⟩ ⟨y⟩ h₁ h₂
    apply Quot.sound
    exact ⟨h₁, h₂⟩
  lt := Quotient.lift₂ (· < ·) fun _ _ _ _ hx hy => propext (lt_congr hx hy)
  lt_iff_le_not_le := by
    rintro ⟨x⟩ ⟨y⟩
    exact @lt_iff_le_not_le _ _ x y

/-- The less or fuzzy relation on games.

If `0 ⧏ x` (less or fuzzy with), then Left can win `x` as the first player. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63aee731e221da7ed91d75dd854fadf2690de46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
