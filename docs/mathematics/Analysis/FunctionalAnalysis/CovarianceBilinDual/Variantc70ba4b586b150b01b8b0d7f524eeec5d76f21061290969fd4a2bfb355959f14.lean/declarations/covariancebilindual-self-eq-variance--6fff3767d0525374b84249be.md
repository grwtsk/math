# covarianceBilinDual_self_eq_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a3e2d17-78af-37a1-0a5b-334dfb3156c5",
  "kind": "lemma",
  "lexical_name": "covarianceBilinDual_self_eq_variance",
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
  "slug": "covariancebilindual-self-eq-variance--6fff3767d0525374b84249be",
  "source": {
    "blob": "e80cde296bc69db2a1015dddbf0d3a68b4797da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 364,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fff3767d0525374b84249bee0109622afc4aa2ad26bec265c2f40ec1a2b083f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a3e2d17-78af-37a1-0a5b-334dfb3156c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilinDual_self_eq_variance (h : MemLp id 2 μ) (L : StrongDual ℝ E) :
    covarianceBilinDual μ L L = Var[L; μ] := by
  rw [covarianceBilinDual_eq_covariance h, covariance_self (by fun_prop)]

end Covariance

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cde296bc69db2a1015dddbf0d3a68b4797da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
