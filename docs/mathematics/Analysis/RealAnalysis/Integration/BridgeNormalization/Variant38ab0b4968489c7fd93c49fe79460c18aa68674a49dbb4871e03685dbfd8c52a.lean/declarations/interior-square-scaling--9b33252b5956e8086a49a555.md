# interior_square_scaling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:580ecdf7-7268-0362-c704-56a904e1a610",
  "kind": "theorem",
  "lexical_name": "interior_square_scaling",
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
  "slug": "interior-square-scaling--9b33252b5956e8086a49a555",
  "source": {
    "blob": "490649b651808e779f685bc4b7a0a8f28f3a29a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b33252b5956e8086a49a5553e5c7fe8591465cff91984996ff9537eef0b338f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:580ecdf7-7268-0362-c704-56a904e1a610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_square_scaling (A x : ℝ) (hA : 0 < A) :
    (secondInterior A x - bumpInterior A x / 4) ^ 2 =
      (unitSecond (x / A) / A ^ 2 - unitBump (x / A) / 4) ^ 2 / A := by
  have factor : secondInterior A x - bumpInterior A x / 4 =
      (unitSecond (x / A) / A ^ 2 - unitBump (x / A) / 4) / Real.sqrt A := by
    dsimp [secondInterior, bumpInterior, unitSecond, unitBump]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [factor, div_pow, Real.sq_sqrt hA.le]

/-- The unscaled unit-interval integral gives the exact source normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490649b651808e779f685bc4b7a0a8f28f3a29a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
