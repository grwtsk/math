# TensorFamilyBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01d7b870464615517fb7f87d045e98d2a4dd5863db85b6574ded03f11592cfe7",
  "kind": "structure",
  "lexical_name": "TensorFamilyBudget",
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
  "slug": "tensorfamilybudget--90e7a64788cddda7d04c669e",
  "source": {
    "blob": "0aa9834d448278092a22d2e5e36ac8c9be5eb96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90e7a64788cddda7d04c669e8ca38bb1e0eb3eab1c3dae1d35a82be7b5d3129c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/CompletedQuotientSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01d7b870464615517fb7f87d045e98d2a4dd5863db85b6574ded03f11592cfe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TensorFamilyBudget where
  conditioning : ℕ → ℝ
  coreBound : ℕ → ℝ
  errorBound : ℕ → ℝ
  conditioning_ge_one : ∀ n, 1 ≤ conditioning n
  core_nonnegative : ∀ n, 0 ≤ coreBound n
  error_nonnegative : ∀ n, 0 ≤ errorBound n
  reconstructed_bound : ∀ n,
    relativeHankel n ≤ conditioning n*(coreBound n+errorBound n)
  all_depth_log_budget : UpperSublinear (fun n =>
    Real.log (conditioning n)+Real.log (1+coreBound n+errorBound n))

/-- This is the proved generic asymptotic consumer instantiated at the declared source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/CompletedQuotientSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa9834d448278092a22d2e5e36ac8c9be5eb96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
