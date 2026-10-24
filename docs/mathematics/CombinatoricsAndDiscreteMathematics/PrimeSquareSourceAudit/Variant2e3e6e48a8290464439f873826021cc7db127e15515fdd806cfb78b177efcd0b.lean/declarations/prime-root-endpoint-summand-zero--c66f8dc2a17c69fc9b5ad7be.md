# prime_root_endpoint_summand_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6b0743a-e920-44cd-ddc4-e79f06c9232d",
  "kind": "theorem",
  "lexical_name": "prime_root_endpoint_summand_zero",
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
  "slug": "prime-root-endpoint-summand-zero--c66f8dc2a17c69fc9b5ad7be",
  "source": {
    "blob": "7f22fb316265e3c42cdb9559ce61ad31009d28c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c66f8dc2a17c69fc9b5ad7be65a61027b13387a4708c7d052cb36c99c87985a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b0743a-e920-44cd-ddc4-e79f06c9232d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_root_endpoint_summand_zero (A : ℝ) (hA : 1 ≤ A) (p : ℕ)
    (hp : p ∈ closedPrimeRoots A) (hnot : p ∉ strictPrimeRoots A) :
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) = 0 := by
  obtain ⟨hp, hle⟩ := (mem_closedPrimeRoots_iff A p).mp hp
  have heq : (p : ℝ) = Real.exp A := by
    apply le_antisymm hle
    by_contra h
    exact hnot ((mem_strictPrimeRoots_iff A p).mpr ⟨hp, lt_of_not_ge h⟩)
  rw [heq, Real.log_exp]
  rw [CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A)
    (by linarith) (le_abs_self (2 * A)), mul_zero]

/-- Closing the root cutoff preserves the actual source because the precise boundary value vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f22fb316265e3c42cdb9559ce61ad31009d28c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
