# circleIntegral_eq_of_singleHole_annulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08e965617d8be3bf6e1f5d46487ac998d403a42b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7941457-303d-fe8a-b2d2-fb2557c3e048",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f97447c-16c8-ff55-91c4-5164269599b8",
  "kind": "theorem",
  "lexical_name": "circleIntegral_eq_of_singleHole_annulus",
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
  "slug": "circleintegral-eq-of-singlehole-annulus--01512c3d6414ee2f9862d040",
  "source": {
    "blob": "08e965617d8be3bf6e1f5d46487ac998d403a42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 129,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01512c3d6414ee2f9862d04002bedec7d62beed7757d67634c782a5dcded1c2b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f97447c-16c8-ff55-91c4-5164269599b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_eq_of_singleHole_annulus
    {h : ℂ → ℂ} {c : ℂ} {r R : ℝ}
    (hr : 0 < r) (hrR : r ≤ R)
    (hc : ContinuousOn h (Metric.closedBall c R \ Metric.ball c r))
    (hd : ∀ z ∈ Metric.ball c R \ Metric.closedBall c r,
      DifferentiableAt ℂ h z) :
    circleIntegral h c R = circleIntegral h c r := by
  exact Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
    hr hrR Set.countable_empty hc (by simpa using hd)

/-!
The preceding circular theorems compare concentric circles only.  The smooth
homotopy theorem can compare general smooth paths, but the shared target
requires

`rectangleBoundaryIntegral f R.lower R.upper = circleIntegral f H.center H.radius`.

No theorem packages the required geometric homotopy or identifies the raw
rectangle/circle interval integrals with the relevant curve integrals.  A
single whole-loop homotopy also fails the available theorem's `C²` hypothesis:
the rectangular loop has four interior parameter corners.  The viable route
is four smooth radial strips, with explicit cancellation of their transverse
seams, plus reparameterization/normalization lemmas for each outer segment and
inner circular arc.  Pinned mathlib has no curve-integral reparameterization
theorem, so this branch cannot inhabit `SingleHoleExcisionStatement` within
the bounded branch budget.
-/

#print axioms circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient
#print axioms circleIntegral_eq_of_singleHole_annulus
#print axioms curveIntegral_coefficientOneForm_homotopy

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e965617d8be3bf6e1f5d46487ac998d403a42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
