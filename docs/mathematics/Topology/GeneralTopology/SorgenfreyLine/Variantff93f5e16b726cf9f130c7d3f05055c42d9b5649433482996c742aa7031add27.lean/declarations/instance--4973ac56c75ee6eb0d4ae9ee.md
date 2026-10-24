# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06a270c329e376bcff7aef300a14fefb3495ebad66ecb60e76b6c565f7badecb",
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
  "slug": "instance--4973ac56c75ee6eb0d4ae9ee",
  "source": {
    "blob": "b167425ffbeb3679fb09554f7bfa7fed9109a156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4973ac56c75ee6eb0d4ae9ee40acf7ac3b2ab726cd29c35e8b14d5260ba10b5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06a270c329e376bcff7aef300a14fefb3495ebad66ecb60e76b6c565f7badecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : T5Space ℝₗ := by
  /-
  Let `s` and `t` be disjoint closed sets.
  For each `x ∈ s` we choose `X x` such that `Set.Ico x (X x)` is disjoint with `t`.
  Similarly, for each `y ∈ t` we choose `Y y` such that `Set.Ico y (Y y)` is disjoint with `s`.
  Then `⋃ x ∈ s, Ico x (X x)` and `⋃ y ∈ t, Ico y (Y y)` are
  disjoint open sets that include `s` and `t`.
  -/
  refine' ⟨fun s t hd₁ hd₂ => _⟩
  choose! X hX hXd using fun x (hx : x ∈ s) =>
    exists_Ico_disjoint_closed isClosed_closure (disjoint_left.1 hd₂ hx)
  choose! Y hY hYd using fun y (hy : y ∈ t) =>
    exists_Ico_disjoint_closed isClosed_closure (disjoint_right.1 hd₁ hy)
  refine' disjoint_of_disjoint_of_mem _
    (bUnion_mem_nhdsSet fun x hx => (isOpen_Ico x (X x)).mem_nhds <| left_mem_Ico.2 (hX x hx))
    (bUnion_mem_nhdsSet fun y hy => (isOpen_Ico y (Y y)).mem_nhds <| left_mem_Ico.2 (hY y hy))
  simp only [disjoint_iUnion_left, disjoint_iUnion_right, Ico_disjoint_Ico]
  intro y hy x hx
  cases' le_total x y with hle hle
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b167425ffbeb3679fb09554f7bfa7fed9109a156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
