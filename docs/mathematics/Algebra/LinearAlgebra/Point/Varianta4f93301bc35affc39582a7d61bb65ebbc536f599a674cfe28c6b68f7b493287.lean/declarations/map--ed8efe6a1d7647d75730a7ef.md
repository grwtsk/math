# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a08bc2800ddbc231af694b6072fab7b3c1737b81dee2a2c67a80241c7cb42b42",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--ed8efe6a1d7647d75730a7ef",
  "source": {
    "blob": "1c3fb4147b96c096ea6786a2b255719b2bab131e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 662,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed8efe6a1d7647d75730a7ef4aff8322a88d63cf39b4f16618f20cd067a1b816",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a08bc2800ddbc231af694b6072fab7b3c1737b81dee2a2c67a80241c7cb42b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def map : W'⟮F⟯ →+ W'⟮K⟯ where
  toFun P := match P with
    | 0 => 0
    | some h => some <| (baseChange_nonsingular _ _ f.injective).mpr h
  map_zero' := rfl
  map_add' := by
    rintro (_ | @⟨x₁, y₁, _⟩) (_ | @⟨x₂, y₂, _⟩)
    any_goals rfl
    by_cases hxy : x₁ = x₂ ∧ y₁ = (W'.baseChange F).toAffine.negY x₂ y₂
    · rw [add_of_Y_eq hxy.left hxy.right,
        add_of_Y_eq (congr_arg _ hxy.left) <| by rw [hxy.right, baseChange_negY]]
    · simp only [add_some hxy, ← baseChange_addX, ← baseChange_addY, ← baseChange_slope]
      rw [add_some fun h => hxy ⟨f.injective h.1, f.injective (W'.baseChange_negY f .. ▸ h).2⟩]

@[deprecated (since := "2025-02-01")] alias mapFun := map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3fb4147b96c096ea6786a2b255719b2bab131e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
