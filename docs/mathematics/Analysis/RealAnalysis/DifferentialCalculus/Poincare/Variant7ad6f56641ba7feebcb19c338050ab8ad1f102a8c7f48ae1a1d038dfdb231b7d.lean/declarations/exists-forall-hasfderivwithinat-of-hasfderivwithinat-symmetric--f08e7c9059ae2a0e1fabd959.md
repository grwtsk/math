# exists_forall_hasFDerivWithinAt_of_hasFDerivWithinAt_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3dd3553-ef9d-6724-8654-ce346ed80e0a",
  "kind": "theorem",
  "lexical_name": "exists_forall_hasFDerivWithinAt_of_hasFDerivWithinAt_symmetric",
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
  "slug": "exists-forall-hasfderivwithinat-of-hasfderivwithinat-symmetric--f08e7c9059ae2a0e1fabd959",
  "source": {
    "blob": "c515e8e039695cbb48aa58af65271ef278faf615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 365,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f08e7c9059ae2a0e1fabd959803d177e0e83038afa5bdf9b484c041059672015",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3dd3553-ef9d-6724-8654-ce346ed80e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_hasFDerivWithinAt_of_hasFDerivWithinAt_symmetric
    (hs : Convex ℝ s) (hω : ∀ x ∈ s, HasFDerivWithinAt ω (dω x) s x)
    (hdω : ∀ a ∈ s, ∀ x ∈ tangentConeAt ℝ s a, ∀ y ∈ tangentConeAt ℝ s a, dω a x y = dω a y x) :
    ∃ f, ∀ a ∈ s, HasFDerivWithinAt f (ω a) s a := by
  rcases s.eq_empty_or_nonempty with rfl | ⟨a, ha⟩
  · simp
  · use (curveIntegral ω <| .segment a ·)
    intro b hb
    exact hs.hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric hω hdω ha hb

/-- If `ω` is a closed `1`-form on a convex set `s`, then it admits a primitive,
a version stated in terms of `fderivWithin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c515e8e039695cbb48aa58af65271ef278faf615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
