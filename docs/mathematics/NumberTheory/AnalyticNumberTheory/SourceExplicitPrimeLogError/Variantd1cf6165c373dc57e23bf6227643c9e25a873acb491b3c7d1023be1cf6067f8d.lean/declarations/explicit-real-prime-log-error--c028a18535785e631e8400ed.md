# explicit_real_prime_log_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9558c659-fa71-4c05-3406-d41b77305220",
  "kind": "theorem",
  "lexical_name": "explicit_real_prime_log_error",
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
  "slug": "explicit-real-prime-log-error--c028a18535785e631e8400ed",
  "source": {
    "blob": "3e1b02e2f6ae6c83e62253ce7aa31a86123fab4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantd1cf6165c373dc57e23bf6227643c9e25a873acb491b3c7d1023be1cf6067f8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c028a18535785e631e8400ed6e1cd5279ff77d7f5c515afbaa1093f51ff4317e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantd1cf6165c373dc57e23bf6227643c9e25a873acb491b3c7d1023be1cf6067f8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9558c659-fa71-4c05-3406-d41b77305220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_real_prime_log_error (x : ℝ) (hx : 1 ≤ x) :
    |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ)) - Real.log x| ≤ explicitPrimeLogConstant := by
  have hw := explicit_natural_prime_log_error ⌊x⌋₊ ((Nat.one_le_floor_iff x).mpr hx)
  rw [weightedPrime_eq_filtered] at hw
  have hf := log_floor_error x hx
  calc
    _ = |((∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - Real.log (⌊x⌋₊ : ℝ)) +
        (Real.log (⌊x⌋₊ : ℝ) - Real.log x)| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ explicitPrimeLogConstant := add_le_add hw hf

/-- The concrete error constant is in the precise admitted logarithmic observation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantd1cf6165c373dc57e23bf6227643c9e25a873acb491b3c7d1023be1cf6067f8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantd1cf6165c373dc57e23bf6227643c9e25a873acb491b3c7d1023be1cf6067f8d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1b02e2f6ae6c83e62253ce7aa31a86123fab4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
