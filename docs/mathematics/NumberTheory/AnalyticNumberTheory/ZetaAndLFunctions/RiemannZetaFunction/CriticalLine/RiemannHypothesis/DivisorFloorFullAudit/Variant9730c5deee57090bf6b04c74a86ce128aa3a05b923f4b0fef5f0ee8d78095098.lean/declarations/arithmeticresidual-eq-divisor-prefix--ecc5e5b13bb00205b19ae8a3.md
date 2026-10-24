# arithmeticResidual_eq_divisor_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4293bd4-aa3c-cbe3-49e4-b26e3c827587",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_eq_divisor_prefix",
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
  "slug": "arithmeticresidual-eq-divisor-prefix--ecc5e5b13bb00205b19ae8a3",
  "source": {
    "blob": "7ed409e8c85993c0fb7eb7c563d73b7d22f9f16a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecc5e5b13bb00205b19ae8a3cb5be7d609d8f844580cc7b1cb9d262c72de30e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4293bd4-aa3c-cbe3-49e4-b26e3c827587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_eq_divisor_prefix (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) := by
  have hX0 : (0 : ℝ) < X := by exact_mod_cast (show 0 < X by omega)
  have hz : ⌊x / (X : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr ((div_lt_one hX0).mpr hxX)
  rw [arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX.le, hz]
  simp

/-- Without damping the unchanged source cancels exactly on the strict original cutoff interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ed409e8c85993c0fb7eb7c563d73b7d22f9f16a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
