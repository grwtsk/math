# mertensResidual_eq_constant_add_compensated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af9329f0-cd17-636d-cf42-b60c67b29c00",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_constant_add_compensated",
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
  "slug": "mertensresidual-eq-constant-add-compensated--a0378ad48f8283fa86f888ff",
  "source": {
    "blob": "8c113cd61ca06ca3844baa2750511c3e3edc27cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantfb23c60fce735835695682e2f726e357cbe0ba2509c6b228073cb97f401859e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0378ad48f8283fa86f888fff0b1fbe8565ffa3232b69740e9b6cdcc3d04da73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantfb23c60fce735835695682e2f726e357cbe0ba2509c6b228073cb97f401859e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af9329f0-cd17-636d-cf42-b60c67b29c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_constant_add_compensated (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rightLineMajorant 2 + (compensatedAngularContour A).re := by
  have h := angularContour_eq_constant_add_compensated A hA
  rw [← mertensResidual_eq_angularContour A hA] at h
  exact_mod_cast congr_arg Complex.re h

/-- The only remaining whole-line witness is a common signed upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantfb23c60fce735835695682e2f726e357cbe0ba2509c6b228073cb97f401859e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantfb23c60fce735835695682e2f726e357cbe0ba2509c6b228073cb97f401859e9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c113cd61ca06ca3844baa2750511c3e3edc27cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
