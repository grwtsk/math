# measurable_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd6ac53b-f961-b6f3-bf47-a44ff87a58e7",
  "kind": "lemma",
  "lexical_name": "measurable_sqrt",
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
  "slug": "measurable-sqrt--65f8ffd57db10c8cb4c73f60",
  "source": {
    "blob": "4aadcdfe9743a7b90b40ddb7bd690a9e697313a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variant36bbbc90659d4b1d87b8f0e154fa3d79a155b75cdf0072218fc97c4550816215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65f8ffd57db10c8cb4c73f60f6da71f1af118e3d074fa62f650bb050976d6d85",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variant36bbbc90659d4b1d87b8f0e154fa3d79a155b75cdf0072218fc97c4550816215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6ac53b-f961-b6f3-bf47-a44ff87a58e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_sqrt : Measurable (sqrt : A → A) := by
  have h_measurable : MeasurableSet {S : A | 0 ≤ S} :=
    (isClosed_le continuous_const continuous_id).measurableSet
  classical
  convert continuousOn_sqrt.measurable_piecewise (continuousOn_const (c := 0)) h_measurable
  ext S
  by_cases hS : 0 ≤ S
  · simp [hS]
  · simp [hS, sqrt_of_not_nonneg]

end CFC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variant36bbbc90659d4b1d87b8f0e154fa3d79a155b75cdf0072218fc97c4550816215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variant36bbbc90659d4b1d87b8f0e154fa3d79a155b75cdf0072218fc97c4550816215.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aadcdfe9743a7b90b40ddb7bd690a9e697313a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
