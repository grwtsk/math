# residual_firstPrime_uniform_replacement_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e2aad7d-f8c4-950e-a47f-714e1efc2661",
  "kind": "theorem",
  "lexical_name": "residual_firstPrime_uniform_replacement_error",
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
  "slug": "residual-firstprime-uniform-replacement-error--75037790169af395a9122db8",
  "source": {
    "blob": "95c005393a37a7709d6f4ea40f0c7d136473dab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75037790169af395a9122db84f5ea93adcd33cf31e882a23eb3e694c45fa23f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e2aad7d-f8c4-950e-a47f-714e1efc2661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_firstPrime_uniform_replacement_error :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |mertensResidual A - (firstPrimeMoment A + diagonalMainCoefficient A * A)| ≤ E := by
  obtain ⟨C, hC0, hC, _⟩ := primeSquareMoment_uniform_main_term_error
  exact ⟨11 * C + higherPrimePowerBudget,
    add_nonneg (mul_nonneg (by norm_num) hC0) higherPrimePowerBudget_nonneg,
    residual_sub_firstPrime_main_abs_le C hC0 hC⟩

/-- The remaining one-sided target retains first-prime signed compensation
of the square main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95c005393a37a7709d6f4ea40f0c7d136473dab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
