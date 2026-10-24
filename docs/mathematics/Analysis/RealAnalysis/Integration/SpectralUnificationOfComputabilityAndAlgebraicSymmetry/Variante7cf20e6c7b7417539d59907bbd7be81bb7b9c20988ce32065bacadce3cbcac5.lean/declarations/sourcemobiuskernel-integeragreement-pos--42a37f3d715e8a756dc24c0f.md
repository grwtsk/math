# sourceMobiusKernel_integerAgreement_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5937bd6a-a5d1-922d-0c0e-325d608c6dfa",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_integerAgreement_pos",
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
  "slug": "sourcemobiuskernel-integeragreement-pos--42a37f3d715e8a756dc24c0f",
  "source": {
    "blob": "116a2e8e67c38f51b239ae950b0cd0e9760bca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a37f3d715e8a756dc24c0fff930f9a237a5cff9c5ce318412c0a858f87c955",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5937bd6a-a5d1-922d-0c0e-325d608c6dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_integerAgreement_pos (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ n ∈ primePowerInventory (2 * A),
        ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0 := by
  by_cases hd1 : d = 1
  · subst d
    simpa only [Nat.cast_one] using sourceMobiusKernel_integerAgreement_one A hA
  · rw [sourceMobiusKernel_eq_admissible_sum A hA d hd]
    exact (integer_antidiagonal_eq_admissible_of_two_le A hA d (by omega)).symm

/-- Every first factor in the actual prime inventory belongs to the full positive
divisor inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116a2e8e67c38f51b239ae950b0cd0e9760bca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
