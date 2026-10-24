# hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ca8575e-18fd-a77a-d4ad-081548c9b2a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac5feb04-2547-cd64-b206-a0076e22bbf0",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric",
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
  "slug": "hasfderivwithinat-curveintegral-segment-of-hasfderivwithinat-symmetric--037d93363e816de45f75009c",
  "source": {
    "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 343,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:037d93363e816de45f75009c7f8d716457759fd92e009a7ba3f9c7ad113a51eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5feb04-2547-cd64-b206-a0076e22bbf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric (hs : Convex ℝ s)
    (hω : ∀ x ∈ s, HasFDerivWithinAt ω (dω x) s x)
    (hdω : ∀ a ∈ s, ∀ x ∈ tangentConeAt ℝ s a, ∀ y ∈ tangentConeAt ℝ s a, dω a x y = dω a y x)
    (ha : a ∈ s) (hb : b ∈ s) :
    HasFDerivWithinAt (∫ᶜ x in .segment a ·, ω x) (ω b) s b := by
  suffices HasFDerivWithinAt (∫ᶜ x in .segment a b, ω x + ∫ᶜ x in .segment b ·, ω x) (ω b) s b from
    this.congr' (fun _ h ↦
      (hs.curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric hω hdω ha hb h).symm) hb
  refine .const_add _ <| ?_
  refine HasFDerivWithinAt.curveIntegral_segment_source hs ?_ hb
  exact fun x hx ↦ (hω x hx).continuousWithinAt

/-- If `ω` is a closed `1`-form on a convex set `s`, then it admits a primitive,
a version stated in terms of `HasFDerivWithinAt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a87cb3a0d2a5d2dc3cc452a7319962a792d91dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
