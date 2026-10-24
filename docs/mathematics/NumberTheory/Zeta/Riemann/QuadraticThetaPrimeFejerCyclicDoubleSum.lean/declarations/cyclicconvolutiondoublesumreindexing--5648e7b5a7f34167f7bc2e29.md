# cyclicConvolutionDoubleSumReindexing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:644e079d-05c7-3ab6-aa64-7c8ae74c0d99",
  "kind": "theorem",
  "lexical_name": "cyclicConvolutionDoubleSumReindexing",
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
  "slug": "cyclicconvolutiondoublesumreindexing--5648e7b5a7f34167f7bc2e29",
  "source": {
    "blob": "dab6a7b6d1a0dfebe3d4235f3b5947466e4de078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 14,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5648e7b5a7f34167f7bc2e292291b0fbac86ee5fb4c01ee77b8661d900e5bcaf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:644e079d-05c7-3ab6-aa64-7c8ae74c0d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicConvolutionDoubleSumReindexing :
    CyclicConvolutionDoubleSumReindexingClaim := by
  intro X N m hreg
  let L := fejerOctavePeriod X
  have hinner :
      ∀ x : ZMod L,
        (∑ y : ZMod L,
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y|)
        =
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
    intro x
    exact Fintype.sum_equiv (cyclicSubEquiv x) _ _ (by
      intro y
      simp [cyclicSubEquiv])
  calc
    (∑ x : ZMod L,
      ∑ y : ZMod L,
        cyclicFejerKernel X N (x - y) *
          |cyclicSharpPrefixIndicator X m x -
            cyclicSharpPrefixIndicator X m y|)
      =
      ∑ x : ZMod L,
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            apply Finset.sum_congr rfl
            intro x hx
            exact hinner x
    _ =
      ∑ r : ZMod L,
        ∑ x : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            rw [Finset.sum_comm]
    _ =
      ∑ r : ZMod L,
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r := by
            apply Finset.sum_congr rfl
            intro r hr
            unfold cyclicSharpTranslationL1
            rw [Finset.mul_sum]

/-- The cyclic convex-combination L1 supplier is now source-proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab6a7b6d1a0dfebe3d4235f3b5947466e4de078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
