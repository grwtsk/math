# actualRieszCriticalRegularization_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b57236de-6359-a1dc-14da-392804562d02",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalRegularization_eq",
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
  "slug": "actualrieszcriticalregularization-eq--758a514a98463f2c396f5649",
  "source": {
    "blob": "7a41655963df05e056f73dbf50b4f560e5b644b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758a514a98463f2c396f5649573a33df1a693d5880f92dc63a43935e129039cc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57236de-6359-a1dc-14da-392804562d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalRegularization_eq {z : ℂ} (hz : z ≠ 0) :
    actualRieszCriticalRegularization z =
      (actualRieszCriticalNumerator z - (actualRieszLimitingLinearCenter : ℂ) -
        actualRieszLocalConstantCenter * z) / z ^ 2 := by
  unfold actualRieszCriticalRegularization actualRieszLocalConstantCenter
  rw [dslope_of_ne _ hz, slope_def_field, dslope_of_ne _ hz, slope_def_field,
    dslope_same, actualRieszCriticalNumerator_zero]
  simp only [sub_zero]
  field_simp

/-- The finite source center keeps the full explicitly evaluated continuous payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a41655963df05e056f73dbf50b4f560e5b644b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
