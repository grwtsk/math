# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21a8941ad8467d6603e4dc36d90367421207df5657f9db28a627ab80e6c2d2e1",
  "kind": "example",
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
  "slug": "example--88beb3a7994de84afd86c4c7",
  "source": {
    "blob": "87240e6539304044b4c729f92dc5346e935edfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 66,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88beb3a7994de84afd86c4c7f6ce957ad31d860480a925a0ac152e0f0e4926c5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21a8941ad8467d6603e4dc36d90367421207df5657f9db28a627ab80e6c2d2e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {X₁ Y₁ X₂ Y₂ : C} (f : X₁ ⟶ Y₁) (g : X₂ ⟶ Y₂) : f ⊗ g = X₁ ◁ g ≫ f ▷ Y₂ := by
  rw [MonoidalCategory.whisker_exchange]
  rw [MonoidalCategory.tensorHom_def]

end

set_option trace.string_diagram true

variable {C : Type u} [Category.{v} C] [i : MonoidalCategory C] {X Y : C}

/--
info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_1_1)
    Left(E_3_0_0, E_3_1_1)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_1_1)

[string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_1_1)
    Left(E_3_0_0, E_3_1_1)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_1_1)
-/
#guard_msgs (whitespace := lax) in
#string_diagram MonoidalCategory.whisker_exchange

/-- info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_1_1)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_0_0)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)

[string_diagram] Penrose substance: Left(E_0_0_0, E_0_1_1)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_1_1)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_0_0)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
-/
#guard_msgs (whitespace := lax) in
#string_diagram MonoidalCategory.whisker_exchange_assoc

/--
info: [string_diagram] Penrose substance:

[string_diagram] Penrose substance:
-/
#guard_msgs (whitespace := lax) in
#string_diagram MonoidalCategory.pentagon

/--
info: [string_diagram] Penrose substance:

[string_diagram] Penrose substance:
-/
#guard_msgs (whitespace := lax) in
#string_diagram MonoidalCategory.whiskerLeft_id

/--
info: [string_diagram] Penrose substance:
    Left(E_1_0_0, E_1_0_2)
    Left(E_2_0_0, E_2_1_1)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_2)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_1 := MakeString (E_1_0_0, E_2_1_1)
    Mor1 f_1_4 := MakeString (E_1_0_2, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)

[string_diagram] Penrose substance:
-/
#guard_msgs (whitespace := lax) in
#string_diagram left_triangle

/--
info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_2_2)
    Left(E_2_0_0, E_2_1_1)
    Left(E_3_0_0, E_3_2_2)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_0_0)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_2_2)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_1 := MakeString (E_1_0_0, E_2_1_1)
    Mor1 f_1_4 := MakeString (E_1_2_2, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_0_0)
    Mor1 f_2_3 := MakeString (E_2_1_1, E_3_2_2)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_1 := MakeString (E_3_0_0, E_4_1_1)
    Mor1 f_3_4 := MakeString (E_3_2_2, E_4_2_2)

[string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_2_2)
    Left(E_3_0_0, E_3_1_1)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_0_0)
    Mor1 f_1_3 := MakeString (E_1_1_1, E_2_2_2)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_1 := MakeString (E_2_0_0, E_3_1_1)
    Mor1 f_2_4 := MakeString (E_2_2_2, E_3_1_1)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_2 := MakeString (E_3_1_1, E_4_1_1)
    Mor1 f_3_3 := MakeString (E_3_1_1, E_4_2_2)
-/
#guard_msgs (whitespace := lax) in
#string_diagram yang_baxter

/--
info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_2_2)
    Left(E_2_0_0, E_2_1_1)
    Left(E_3_0_0, E_3_2_2)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_0_0)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_2_2)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_1 := MakeString (E_1_0_0, E_2_1_1)
    Mor1 f_1_4 := MakeString (E_1_2_2, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_0_0)
    Mor1 f_2_3 := MakeString (E_2_1_1, E_3_2_2)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_1 := MakeString (E_3_0_0, E_4_1_1)
    Mor1 f_3_4 := MakeString (E_3_2_2, E_4_2_2)

[string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_2_2)
    Left(E_3_0_0, E_3_1_1)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_0_0)
    Mor1 f_1_3 := MakeString (E_1_1_1, E_2_2_2)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_1 := MakeString (E_2_0_0, E_3_1_1)
    Mor1 f_2_4 := MakeString (E_2_2_2, E_3_1_1)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_2 := MakeString (E_3_1_1, E_4_1_1)
    Mor1 f_3_3 := MakeString (E_3_1_1, E_4_2_2)
-/
#guard_msgs (whitespace := lax) in
#string_diagram yang_baxter'

/--
info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_2_2)
    Left(E_2_0_0, E_2_1_1)
    Left(E_3_0_0, E_3_2_2)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_0_0)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_2_2)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_1 := MakeString (E_1_0_0, E_2_1_1)
    Mor1 f_1_4 := MakeString (E_1_2_2, E_2_1_1)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_2 := MakeString (E_2_1_1, E_3_0_0)
    Mor1 f_2_3 := MakeString (E_2_1_1, E_3_2_2)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_1 := MakeString (E_3_0_0, E_4_1_1)
    Mor1 f_3_4 := MakeString (E_3_2_2, E_4_2_2)

[string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Left(E_0_1_1, E_0_2_2)
    Left(E_1_0_0, E_1_1_1)
    Left(E_2_0_0, E_2_2_2)
    Left(E_3_0_0, E_3_1_1)
    Left(E_4_0_0, E_4_1_1)
    Left(E_4_1_1, E_4_2_2)
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_1_1)
    Mor1 f_0_4 := MakeString (E_0_2_2, E_1_1_1)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_2 := MakeString (E_1_1_1, E_2_0_0)
    Mor1 f_1_3 := MakeString (E_1_1_1, E_2_2_2)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_2_1 := MakeString (E_2_0_0, E_3_1_1)
    Mor1 f_2_4 := MakeString (E_2_2_2, E_3_1_1)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
    Mor1 f_3_2 := MakeString (E_3_1_1, E_4_1_1)
    Mor1 f_3_3 := MakeString (E_3_1_1, E_4_2_2)
-/
#guard_msgs (whitespace := lax) in
#string_diagram yang_baxter''

/--
info: [string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)

[string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Above(E_3_0_0, E_4_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
    Mor1 f_3_0 := MakeString (E_3_0_0, E_4_0_0)
-/
#guard_msgs (whitespace := lax) in
#string_diagram Category.assoc

/--
info: [string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)

[string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
-/
#guard_msgs (whitespace := lax) in
#string_diagram Functor.map_comp

/--
info: [string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)

[string_diagram] Penrose substance:
    Above(E_0_0_0, E_1_0_0)
    Above(E_1_0_0, E_2_0_0)
    Above(E_2_0_0, E_3_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_2_0 := MakeString (E_2_0_0, E_3_0_0)
-/
#guard_msgs (whitespace := lax) in
#string_diagram NatTrans.naturality

variable (f : 𝟙_ _ ⟶ X ⊗ Y) in
/--
info: [string_diagram] Penrose substance:
    Left(E_2_0_0, E_2_1_1)
    Above(E_1_0_0, E_2_0_0)
    Mor1 f_1_0 := MakeString (E_1_0_0, E_2_0_0)
    Mor1 f_1_1 := MakeString (E_1_0_0, E_2_1_1)
-/
#guard_msgs (whitespace := lax) in
#string_diagram f

variable (g : Y ⊗ X ⟶ 𝟙_ _) in
/--
info: [string_diagram] Penrose substance:
    Left(E_0_0_0, E_0_1_1)
    Above(E_0_0_0, E_1_0_0)
    Mor1 f_0_0 := MakeString (E_0_0_0, E_1_0_0)
    Mor1 f_0_2 := MakeString (E_0_1_1, E_1_0_0)
-/
#guard_msgs (whitespace := lax) in
#string_diagram g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87240e6539304044b4c729f92dc5346e935edfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
