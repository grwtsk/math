# convexOn_of_hasDerivWithinAt2_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb240152a5e1ec3d5e0201b1e1949b8729bd018e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742ee72b-cdc2-7c28-400e-7e81c8cef54c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aa52783-3cd7-885c-ac26-cb9734cb5de0",
  "kind": "lemma",
  "lexical_name": "convexOn_of_hasDerivWithinAt2_nonneg",
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
  "slug": "convexon-of-hasderivwithinat2-nonneg--d6d2e1e453b5156378405e22",
  "source": {
    "blob": "eb240152a5e1ec3d5e0201b1e1949b8729bd018e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6d2e1e453b5156378405e22c4dda41900a3599c8cef1f9cb9fa56d4b82bab81",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa52783-3cd7-885c-ac26-cb9734cb5de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convexOn_of_hasDerivWithinAt2_nonneg {D : Set ℝ} (hD : Convex ℝ D) {f f' f'' : ℝ → ℝ}
    (hf : ContinuousOn f D) (hf' : ∀ x ∈ interior D, HasDerivWithinAt f (f' x) (interior D) x)
    (hf'' : ∀ x ∈ interior D, HasDerivWithinAt f' (f'' x) (interior D) x)
    (hf''₀ : ∀ x ∈ interior D, 0 ≤ f'' x) : ConvexOn ℝ D f := by
  have : (interior D).EqOn (deriv f) f' := deriv_eqOn isOpen_interior hf'
  refine convexOn_of_deriv2_nonneg hD hf (fun x hx ↦ (hf' _ hx).differentiableWithinAt) ?_ ?_
  · rw [differentiableOn_congr this]
    exact fun x hx ↦ (hf'' _ hx).differentiableWithinAt
  · rintro x hx
    convert hf''₀ _ hx using 1
    dsimp
    rw [deriv_eqOn isOpen_interior (fun y hy ↦ ?_) hx]
    exact (hf'' _ hy).congr this <| by rw [this hy]

/-- If a function `f` is continuous on a convex set `D ⊆ ℝ`, is twice differentiable on its
interior, and `f''` is nonpositive on the interior, then `f` is concave on `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb240152a5e1ec3d5e0201b1e1949b8729bd018e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
