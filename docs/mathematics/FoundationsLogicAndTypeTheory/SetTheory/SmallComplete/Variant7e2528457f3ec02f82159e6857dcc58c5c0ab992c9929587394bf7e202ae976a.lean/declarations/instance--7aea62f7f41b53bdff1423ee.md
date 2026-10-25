# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a74ac31b4806cf9b8f0b0fb448e83109c164e8f4983fbf283445734895548214",
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
  "slug": "instance--7aea62f7f41b53bdff1423ee",
  "source": {
    "blob": "e84711faf0877851d52959302ea430fe3e994950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/SmallComplete/Variant7e2528457f3ec02f82159e6857dcc58c5c0ab992c9929587394bf7e202ae976a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7aea62f7f41b53bdff1423ee600e3adcef32f7cec2cc31993f01dd2595a5761f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/SmallComplete/Variant7e2528457f3ec02f82159e6857dcc58c5c0ab992c9929587394bf7e202ae976a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a74ac31b4806cf9b8f0b0fb448e83109c164e8f4983fbf283445734895548214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) : Quiver.IsThin C := fun X Y =>
  ⟨fun r s => by
    classical
      by_contra r_ne_s
      have z : (2 : Cardinal) ≤ #(X ⟶ Y) := by
        rw [Cardinal.two_le_iff]
        exact ⟨_, _, r_ne_s⟩
      let md := ΣZ W : C, Z ⟶ W
      let α := #md
      apply not_le_of_lt (Cardinal.cantor α)
      let yp : C := ∏ᶜ fun _ : md => Y
      apply _root_.trans _ _
      · exact #(X ⟶ yp)
      · apply le_trans (Cardinal.power_le_power_right z)
        rw [Cardinal.power_def]
        apply le_of_eq
        rw [Cardinal.eq]
        refine ⟨⟨Pi.lift, fun f k => f ≫ Pi.π _ k, ?_, ?_⟩⟩
        · intro f
          ext k
          simp [yp]
        · intro f
          ext ⟨j⟩
          simp [yp]
      · apply Cardinal.mk_le_of_injective _
        · intro f
          exact ⟨_, _, f⟩
        · rintro f g k
          cases k
          rfl⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/SmallComplete/Variant7e2528457f3ec02f82159e6857dcc58c5c0ab992c9929587394bf7e202ae976a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/SmallComplete/Variant7e2528457f3ec02f82159e6857dcc58c5c0ab992c9929587394bf7e202ae976a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84711faf0877851d52959302ea430fe3e994950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
