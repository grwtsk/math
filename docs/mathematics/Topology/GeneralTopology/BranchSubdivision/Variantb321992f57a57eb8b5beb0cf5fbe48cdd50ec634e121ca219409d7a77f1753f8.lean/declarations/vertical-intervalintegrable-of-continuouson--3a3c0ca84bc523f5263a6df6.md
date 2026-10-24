# vertical_intervalIntegrable_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11b5f019-1084-8e87-6731-8015b3456a3b",
  "kind": "theorem",
  "lexical_name": "vertical_intervalIntegrable_of_continuousOn",
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
  "slug": "vertical-intervalintegrable-of-continuouson--3a3c0ca84bc523f5263a6df6",
  "source": {
    "blob": "1c1c63377f168a60a35d80f5fc6e80de1fdf0230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a3c0ca84bc523f5263a6df68f2e2afc7052dad774213fdf54a5a6fe88bce911",
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

Occurrence: `result:11b5f019-1084-8e87-6731-8015b3456a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem vertical_intervalIntegrable_of_continuousOn
    (f : ℂ → ℂ) {a b p q x : ℝ}
    (hpq : p ≤ q)
    (hx : x ∈ Set.uIcc a b)
    (hf : ContinuousOn f
      (closedRectangle (corner a p) (corner b q))) :
    IntervalIntegrable (fun y : ℝ => f (corner x y)) volume p q := by
  apply ContinuousOn.intervalIntegrable_of_Icc hpq
  have hcorner : ContinuousOn (fun y : ℝ => corner x y) (Set.Icc p q) := by
    simp only [corner_eq_add_mul_I]
    fun_prop
  have hmaps : Set.MapsTo (fun y : ℝ => corner x y) (Set.Icc p q)
      (closedRectangle (corner a p) (corner b q)) := by
    intro y hy
    exact ⟨hx, Set.Icc_subset_uIcc hy⟩
  change ContinuousOn (f ∘ fun y : ℝ => corner x y) (Set.Icc p q)
  exact hf.comp hcorner hmaps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1c63377f168a60a35d80f5fc6e80de1fdf0230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
