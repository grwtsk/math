# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7501bbdd16f393e4e67aece952cc0e900d4fa37913edba50b421db4550dd60d",
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
  "slug": "instance--99af6b480f3488e6d05c3bb9",
  "source": {
    "blob": "8acb840ce4dc2000854f00befb54e57293eb7fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 467,
    "path": "GRWTSK/Algebra/GroupTheory/Congruence/Variant77d752fd351994905fc3663ab608f3f133b2da45b429d1223d8db3e563ef4742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99af6b480f3488e6d05c3bb9d2426945b8d6c4362939de81e423f386b26c9238",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Congruence/Variant77d752fd351994905fc3663ab608f3f133b2da45b429d1223d8db3e563ef4742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7501bbdd16f393e4e67aece952cc0e900d4fa37913edba50b421db4550dd60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PartialOrder (Con M) where
  le := (· ≤ ·)
  lt c d := c ≤ d ∧ ¬d ≤ c
  le_refl _ _ _ := id
  le_trans _ _ _ h1 h2 _ _ h := h2 <| h1 h
  lt_iff_le_not_le _ _ := Iff.rfl
  le_antisymm _ _ hc hd := ext fun _ _ => ⟨fun h => hc h, fun h => hd h⟩

/-- The complete lattice of congruence relations on a given type with a multiplication. -/
@[to_additive "The complete lattice of additive congruence relations on a given type with
an addition."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Congruence/Variant77d752fd351994905fc3663ab608f3f133b2da45b429d1223d8db3e563ef4742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Congruence/Variant77d752fd351994905fc3663ab608f3f133b2da45b429d1223d8db3e563ef4742.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8acb840ce4dc2000854f00befb54e57293eb7fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
