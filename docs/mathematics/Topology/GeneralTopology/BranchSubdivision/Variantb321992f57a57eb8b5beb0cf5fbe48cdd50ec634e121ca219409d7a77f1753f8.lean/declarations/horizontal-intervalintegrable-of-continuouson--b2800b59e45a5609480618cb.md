# horizontal_intervalIntegrable_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cca12f71-6d9c-0bc9-a0f1-e5a6069107c6",
  "kind": "theorem",
  "lexical_name": "horizontal_intervalIntegrable_of_continuousOn",
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
  "slug": "horizontal-intervalintegrable-of-continuouson--b2800b59e45a5609480618cb",
  "source": {
    "blob": "1c1c63377f168a60a35d80f5fc6e80de1fdf0230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2800b59e45a5609480618cb09b8daa0a93f3b83f1ee2d597b488f07ae91d792",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cca12f71-6d9c-0bc9-a0f1-e5a6069107c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem horizontal_intervalIntegrable_of_continuousOn
    (f : ℂ → ℂ) {a b p q y : ℝ}
    (hab : a ≤ b)
    (hy : y ∈ Set.uIcc p q)
    (hf : ContinuousOn f
      (closedRectangle (corner a p) (corner b q))) :
    IntervalIntegrable (fun x : ℝ => f (corner x y)) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  have hcorner : ContinuousOn (fun x : ℝ => corner x y) (Set.Icc a b) := by
    simp only [corner_eq_add_mul_I]
    fun_prop
  have hmaps : Set.MapsTo (fun x : ℝ => corner x y) (Set.Icc a b)
      (closedRectangle (corner a p) (corner b q)) := by
    intro x hx
    exact ⟨Set.Icc_subset_uIcc hx, hy⟩
  change ContinuousOn (f ∘ fun x : ℝ => corner x y) (Set.Icc a b)
  exact hf.comp hcorner hmaps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1c63377f168a60a35d80f5fc6e80de1fdf0230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
