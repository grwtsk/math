# logTest_factorization_requires_prime_ray_linearity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed36610-2ac3-9aa8-80a9-9dd6f38fe82b",
  "kind": "theorem",
  "lexical_name": "logTest_factorization_requires_prime_ray_linearity",
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
  "slug": "logtest-factorization-requires-prime-ray-linearity--f42e9d759f4edb604e8c050f",
  "source": {
    "blob": "c535a9a0e64d1171b5b1e6fe142d65dcca5fbde7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 202,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f42e9d759f4edb604e8c050fccfd3a10cff55426bb052ec210e9ea4091e12270",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed36610-2ac3-9aa8-80a9-9dd6f38fe82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logTest_factorization_requires_prime_ray_linearity
    (f : ℝ → ℝ) (h : FactorsThroughCollapse (logTestReadout f))
    (p : PrimeIndex) (m : ℕ) (hm : 0 < m) :
    f ((m : ℝ) * Real.log (p.1 : ℝ)) =
      (m : ℤ) • f (Real.log (p.1 : ℝ)) := by
  have hlin := factorsThroughCollapse_exponent_linear h p m hm
  change f ((m : ℝ) * Real.log (p.1 : ℝ)) =
    (m : ℤ) • f (((1 : ℕ) : ℝ) * Real.log (p.1 : ℝ)) at hlin
  simpa only [Nat.cast_one, one_mul] using hlin

/-- A finite source stage for the dynamically sized fourth witness channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c535a9a0e64d1171b5b1e6fe142d65dcca5fbde7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
