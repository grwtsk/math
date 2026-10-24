# readout_with_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410f7512-813a-433d-38f6-5aace1b700d0",
  "kind": "theorem",
  "lexical_name": "readout_with_tail_bound",
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
  "slug": "readout-with-tail-bound--6baa8ba361c57104dd67956e",
  "source": {
    "blob": "50f2ce40a11d73bb68f0793b49f2d3d470b63396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 155,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6baa8ba361c57104dd67956e8fa0e72b56d334033ba739dd3de1e025cdeb653f",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:410f7512-813a-433d-38f6-5aace1b700d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_with_tail_bound (weight : ι → ℝ) (test : ι → ℂ)
    (source : ι × ι → ℂ) (feature : κ → ι → ℂ) (actual tail : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (sourceReadout : actual = (complexReadout test source).re + tail) :
    |actual - (complexReadout test (complexGram feature)).re| ≤
      modulusMass (pairWeight weight) (fun p => source p - complexGram feature p) + |tail| := by
  have difference : complexReadout test source - complexReadout test (complexGram feature) =
      complexReadout test (fun p => source p - complexGram feature p) := by
    simp only [complexReadout, mul_sub, sub_mul, Finset.sum_sub_distrib]
  have finiteBound := (Complex.abs_re_le_norm
    (complexReadout test (fun p => source p - complexGram feature p))).trans
    (readout_modulus_bound weight test (fun p => source p - complexGram feature p)
      weightsNonnegative testBound)
  rw [← difference, Complex.sub_re] at finiteBound
  calc
    _ = |((complexReadout test source).re -
        (complexReadout test (complexGram feature)).re) + tail| := by
      rw [sourceReadout]
      congr 1
      ring
    _ ≤ |(complexReadout test source).re -
        (complexReadout test (complexGram feature)).re| + |tail| := abs_add_le _ _
    _ ≤ _ := add_le_add_left finiteBound _

omit τFinite in
/-- Residual dynamics follow from the supplied complex model update, with all signs retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f2ce40a11d73bb68f0793b49f2d3d470b63396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
