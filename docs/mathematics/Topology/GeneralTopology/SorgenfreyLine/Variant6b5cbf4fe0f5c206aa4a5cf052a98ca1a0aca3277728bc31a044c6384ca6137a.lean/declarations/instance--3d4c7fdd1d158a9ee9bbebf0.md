# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7c5a50e15a705d7c97f8caa5d871c8c71d91296a0b4217934c950f7ff4e4b4e",
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
  "slug": "instance--3d4c7fdd1d158a9ee9bbebf0",
  "source": {
    "blob": "23582fb2902b062dd26917e7d8fdcd44b6ef901b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d4c7fdd1d158a9ee9bbebf061622bed229bebee74b3b8ca2201e1eca6e95559",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7c5a50e15a705d7c97f8caa5d871c8c71d91296a0b4217934c950f7ff4e4b4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompletelyNormalSpace ℝₗ := by
  /-
  Let `s` and `t` be disjoint closed sets.
  For each `x ∈ s` we choose `X x` such that `Set.Ico x (X x)` is disjoint with `t`.
  Similarly, for each `y ∈ t` we choose `Y y` such that `Set.Ico y (Y y)` is disjoint with `s`.
  Then `⋃ x ∈ s, Ico x (X x)` and `⋃ y ∈ t, Ico y (Y y)` are
  disjoint open sets that include `s` and `t`.
  -/
  refine ⟨fun s t hd₁ hd₂ => ?_⟩
  choose! X hX hXd using fun x (hx : x ∈ s) =>
    exists_Ico_disjoint_closed isClosed_closure (disjoint_left.1 hd₂ hx)
  choose! Y hY hYd using fun y (hy : y ∈ t) =>
    exists_Ico_disjoint_closed isClosed_closure (disjoint_right.1 hd₁ hy)
  refine disjoint_of_disjoint_of_mem ?_
    (bUnion_mem_nhdsSet fun x hx => (isOpen_Ico x (X x)).mem_nhds <| left_mem_Ico.2 (hX x hx))
    (bUnion_mem_nhdsSet fun y hy => (isOpen_Ico y (Y y)).mem_nhds <| left_mem_Ico.2 (hY y hy))
  simp only [disjoint_iUnion_left, disjoint_iUnion_right, Ico_disjoint_Ico]
  intro y hy x hx
  rcases le_total x y with hle | hle
  · calc
      min (X x) (Y y) ≤ X x := min_le_left _ _
      _ ≤ y := (not_lt.1 fun hyx => (hXd x hx).le_bot ⟨⟨hle, hyx⟩, subset_closure hy⟩)
      _ ≤ max x y := le_max_right _ _
  · calc
      min (X x) (Y y) ≤ Y y := min_le_right _ _
      _ ≤ x := (not_lt.1 fun hxy => (hYd y hy).le_bot ⟨⟨hle, hxy⟩, subset_closure hx⟩)
      _ ≤ max x y := le_max_left _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23582fb2902b062dd26917e7d8fdcd44b6ef901b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
