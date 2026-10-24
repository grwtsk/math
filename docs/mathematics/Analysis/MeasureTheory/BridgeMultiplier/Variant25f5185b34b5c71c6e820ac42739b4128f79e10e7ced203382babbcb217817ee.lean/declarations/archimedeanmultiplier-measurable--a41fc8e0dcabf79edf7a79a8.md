# archimedeanMultiplier_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f345708a-cb0e-4771-4a6e-abd9dc73c12b",
  "kind": "theorem",
  "lexical_name": "archimedeanMultiplier_measurable",
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
  "slug": "archimedeanmultiplier-measurable--a41fc8e0dcabf79edf7a79a8",
  "source": {
    "blob": "6d3227c8ea0fd75e5254a46ff0d09121891f63ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Analysis/MeasureTheory/BridgeMultiplier/Variant25f5185b34b5c71c6e820ac42739b4128f79e10e7ced203382babbcb217817ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41fc8e0dcabf79edf7a79a88d42d97cdba684bb6f0f420700a11fad01417268",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BridgeMultiplier/Variant25f5185b34b5c71c6e820ac42739b4128f79e10e7ced203382babbcb217817ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f345708a-cb0e-4771-4a6e-abd9dc73c12b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanMultiplier_measurable : Measurable archimedeanMultiplier := by
  have hd : Measurable Complex.digamma := Complex.meromorphic_digamma.measurable
  have hp : Measurable (fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := by
    fun_prop
  exact (Complex.measurable_re.comp (hd.comp hp)).sub measurable_const

/-- The source's two-sided estimate supplies a concrete absolute-value majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BridgeMultiplier/Variant25f5185b34b5c71c6e820ac42739b4128f79e10e7ced203382babbcb217817ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BridgeMultiplier/Variant25f5185b34b5c71c6e820ac42739b4128f79e10e7ced203382babbcb217817ee.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3227c8ea0fd75e5254a46ff0d09121891f63ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
