# aestronglyMeasurable_integral_condDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecd39ea4-bfd8-07b1-dc54-c4ed5611f8de",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_integral_condDistrib",
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
  "slug": "aestronglymeasurable-integral-conddistrib--a31ddfa68da7c84ebc572c6f",
  "source": {
    "blob": "8a664e4cf9b584979ed5a9fccfc68508a3faa2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a31ddfa68da7c84ebc572c6fc73cf891669dbecb290c0195517546be18af7b8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd39ea4-bfd8-07b1-dc54-c4ed5611f8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_integral_condDistrib (hX : AEMeasurable X μ) (hY : AEMeasurable Y μ)
    (hf : AEStronglyMeasurable f (μ.map fun a => (X a, Y a))) :
    AEStronglyMeasurable[mβ.comap X] (fun a => ∫ y, f (X a, y) ∂condDistrib Y X μ (X a)) μ :=
  (hf.integral_condDistrib_map hY).comp_ae_measurable' hX

@[deprecated (since := "2025-01-24")]
alias aestronglyMeasurable'_integral_condDistrib := aestronglyMeasurable_integral_condDistrib

end Measurability

/-- `condDistrib` is a.e. uniquely defined as the kernel satisfying the defining property of
`condKernel`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a664e4cf9b584979ed5a9fccfc68508a3faa2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
