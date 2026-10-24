# radialEnergy_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d960d4f3-8e77-e6cb-fe1e-338d7284790d",
  "kind": "theorem",
  "lexical_name": "radialEnergy_nonneg",
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
  "slug": "radialenergy-nonneg--2183b710e264d297e7c0e67c",
  "source": {
    "blob": "66230497e382cde186eeb9077b13b4ec3a71662c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2183b710e264d297e7c0e67c0e743d0d16a69ad1a3453ba2eee8db1c44bb144d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d960d4f3-8e77-e6cb-fe1e-338d7284790d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialEnergy_nonneg (z : ℂ) : 0 ≤ radialEnergy z := by
  apply intervalIntegral.integral_nonneg (by norm_num)
  intro r hr
  exact mul_nonneg (pow_nonneg hr.1 10) (sq_nonneg _)

/-- The source profile is nonzero on a sufficiently short radial interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66230497e382cde186eeb9077b13b4ec3a71662c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
