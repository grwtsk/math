# toSignedMeasure_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a759a90-cc5c-794e-34ee-cecdee522972",
  "kind": "theorem",
  "lexical_name": "toSignedMeasure_smul",
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
  "slug": "tosignedmeasure-smul--cf4b1781d20f1e476e2558cd",
  "source": {
    "blob": "9f2e8c3b7ca084fa741bfd3798b95748a962f059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4b1781d20f1e476e2558cd8d925d2c3624244157e1490570722b2ab0126de3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a759a90-cc5c-794e-34ee-cecdee522972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSignedMeasure_smul (r : ℝ≥0) : (r • j).toSignedMeasure = r • j.toSignedMeasure := by
  ext1 i hi
  rw [VectorMeasure.smul_apply, toSignedMeasure, toSignedMeasure,
    toSignedMeasure_sub_apply hi, toSignedMeasure_sub_apply hi, smul_sub, smul_posPart,
    smul_negPart, measureReal_nnreal_smul_apply, measureReal_nnreal_smul_apply]
  rfl

/-- A Jordan decomposition provides a Hahn decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e8c3b7ca084fa741bfd3798b95748a962f059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
