# curveIntegral_segment_complexOneForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8211c3365d6a2ef133791d1a6219a2b7179afa9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:539eef77-439b-56f6-8984-46295480f0d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a2371d2-3080-5543-2a14-bec9900fdfbc",
  "kind": "theorem",
  "lexical_name": "curveIntegral_segment_complexOneForm",
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
  "slug": "curveintegral-segment-complexoneform--a344ae25ce6b5864fb223f52",
  "source": {
    "blob": "a8211c3365d6a2ef133791d1a6219a2b7179afa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a344ae25ce6b5864fb223f526a448938cc059ed02ed313fbb66672670956a27c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2371d2-3080-5543-2a14-bec9900fdfbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_segment_complexOneForm
    (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (complexOneForm f) (Path.segment a b) =
      ∫ t : ℝ in 0..1, f (lineMap a b t) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro t ht
  simp [complexOneForm]

/-! ## Missing normalization and geometry bridges

The segment adapter above is positive evidence that the raw rectangle edges
can be converted one at a time after proving elementary affine-substitution
lemmas.  Pinned mathlib does not currently package that conversion, does not
identify `circleIntegral` with a `curveIntegral` along a circle path, and does
not provide reparameterization invariance for `curveIntegral`.

More importantly, the Poincare theorem requires the extended homotopy map to
be globally `C²` on the closed parameter square.  A single loop obtained by
concatenating four line segments has four parameter corners, so the direct
whole-rectangle-to-circle homotopy cannot meet that hypothesis.  A possible
unbounded development would split the region into four smooth strips, prove
four homotopy identities, and cancel their transverse seams.  That requires
new circle-arc, reparameterization, affine edge, seam cancellation, and range
lemmas and is outside the bounded CA-03 branch.
-/

#check_failure rectangleBoundaryIntegral_eq_curveIntegral
#check_failure circleIntegral_eq_curveIntegral_circlePath
#check_failure curveIntegral_reparam
#check_failure Path.curveIntegral_reparam

#print axioms curveIntegral_segment_complexOneForm

end


end Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopyPoincare
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8211c3365d6a2ef133791d1a6219a2b7179afa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
