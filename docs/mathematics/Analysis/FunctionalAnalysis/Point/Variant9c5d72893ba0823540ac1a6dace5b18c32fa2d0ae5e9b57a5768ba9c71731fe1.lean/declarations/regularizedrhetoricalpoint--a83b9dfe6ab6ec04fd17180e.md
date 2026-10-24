# regularizedRhetoricalPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c5eeb23a074eb718204df6c77b6f10e218052df507bbb26d65f4a0f14844f1e",
  "kind": "def",
  "lexical_name": "regularizedRhetoricalPoint",
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
  "slug": "regularizedrhetoricalpoint--a83b9dfe6ab6ec04fd17180e",
  "source": {
    "blob": "ed3826fe7241a45441fdcbba0e32e86308f6adc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 83,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a83b9dfe6ab6ec04fd17180e0750099d729939c7b8b0ab98b54dfc584430df15",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c5eeb23a074eb718204df6c77b6f10e218052df507bbb26d65f4a0f14844f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regularizedRhetoricalPoint
    (semantic : PositiveKernel RhetoricalIndex)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    (index : RhetoricalIndex) :
    RhetoricalPoint
      (regularizedKernel semantic epsilon epsilonPositive) where
  concept := index.1
  role := index.2
  diagonal_pos := by
    let basis := Raw.basisVector
      (regularizedKernel semantic epsilon epsilonPositive) index
    have basisNonzero : basis ≠ 0 := by
      change Finsupp.single index (1 : ℂ) ≠ 0
      exact Finsupp.single_ne_zero.mpr one_ne_zero
    have positiveEnergy :=
      (regularizedKernel_posDef semantic epsilon epsilonPositive).2
        basisNonzero
    change 0 < Raw.inner
      (regularizedKernel semantic epsilon epsilonPositive) basis basis at positiveEnergy
    rw [Raw.inner_basisVector_basisVector] at positiveEnergy
    exact (Complex.pos_iff.mp positiveEnergy).1

/-- Identity regularization makes every canonical concept-role vector
nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3826fe7241a45441fdcbba0e32e86308f6adc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
