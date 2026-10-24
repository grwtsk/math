# mertens_residual_tail_of_prime_smooth_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5a25102c301635ea3ad4a796c2320a813f3e75b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d878848-228b-d2a3-671c-0bdb97b54f70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:791ea2ca-4e7d-9193-6891-208b6cd8b121",
  "kind": "theorem",
  "lexical_name": "mertens_residual_tail_of_prime_smooth_tail",
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
  "slug": "mertens-residual-tail-of-prime-smooth-tail--2a6e097662aa4503c90ca820",
  "source": {
    "blob": "e5a25102c301635ea3ad4a796c2320a813f3e75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 274,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a6e097662aa4503c90ca820e5012cc23f04c624fdabae897b6ebe8049d521df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791ea2ca-4e7d-9193-6891-208b6cd8b121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_residual_tail_of_prime_smooth_tail
    (h : PrimeSmoothDefectTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨D, hD, R, hR, hdef⟩ := h
  refine
    ⟨D + 2 * Real.sqrt 2, by positivity,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hs :=
    (abs_le.mp (smoothMoment_abs_le A hA)).2
  have heq :=
    primeSmoothDefect_eq_mertensResidual_sub_smooth A hA
  linarith [hdef A hRA]

/-- After all exact source transports, the previous prime-smooth obstruction
and the complete Mertens residual obstruction are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a25102c301635ea3ad4a796c2320a813f3e75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
