# five_eight_mixed_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7240aa4-2ac5-d869-16b3-4fe79e1973f3",
  "kind": "theorem",
  "lexical_name": "five_eight_mixed_identity",
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
  "slug": "five-eight-mixed-identity--94087cabac137c24e71efbae",
  "source": {
    "blob": "466f8bf03cbf0b96353a2cb85c137b2708c08f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant8df122142359a49c028200f3aa0f435fb24a334c13c1fd3d66c0130b70caf13d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94087cabac137c24e71efbae16c7d26f3c5701334807549ac7dfcdf4ac4aee73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant8df122142359a49c028200f3aa0f435fb24a334c13c1fd3d66c0130b70caf13d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7240aa4-2ac5-d869-16b3-4fe79e1973f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem five_eight_mixed_identity :
    expandedAtom 2 4 5 8 + expandedAtom 2 4 8 5 =
      ((Real.log 5 - 5 * Real.log 2) /
        (6 * Real.sqrt 5 * Real.sqrt 8)) *
          sourceCorrelation explicitSecondDerivative 2 (Real.log 5 + Real.log 8) := by
  unfold expandedAtom
  rw [discrepancyCoefficient_four_eight, discrepancyCoefficient_four_five,
    vonMangoldt_apply_prime (by norm_num : Nat.Prime 5), mangoldt_eight]
  norm_num only [Nat.cast_ofNat]
  rw [show Real.log (8 : ℝ) + Real.log 5 = Real.log 5 + Real.log 8 by ring]
  ring

/-- The prime-power direction dominates with a negative sign in the genuine mixed block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant8df122142359a49c028200f3aa0f435fb24a334c13c1fd3d66c0130b70caf13d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant8df122142359a49c028200f3aa0f435fb24a334c13c1fd3d66c0130b70caf13d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466f8bf03cbf0b96353a2cb85c137b2708c08f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
