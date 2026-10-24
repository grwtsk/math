# Measure.MeasureDense.completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce4821f5-03c8-85cc-ef97-74c76dc1510d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d4cb7c6-a563-567d-5c17-1c225e4aa33a",
  "kind": "theorem",
  "lexical_name": "Measure.MeasureDense.completion",
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
  "slug": "measure-measuredense-completion--7aa56f6ec801b2e586b2278c",
  "source": {
    "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aa56f6ec801b2e586b2278c21f420908ac35afda6bacf1bee9ecccdf633d8d8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d4cb7c6-a563-567d-5c17-1c225e4aa33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measure.MeasureDense.completion (h𝒜 : μ.MeasureDense 𝒜) : μ.completion.MeasureDense 𝒜 where
  measurable s hs := (h𝒜.measurable s hs).nullMeasurableSet
  approx s hs hμs ε ε_pos := by
    obtain ⟨t, ht, hμst⟩ :=
      h𝒜.approx (toMeasurable μ s) (measurableSet_toMeasurable μ s) (by simpa) ε ε_pos
    refine ⟨t, ht, ?_⟩
    convert! hμst using 1
    rw [completion_apply]
    exact measure_congr <| ae_eq_set_symmDiff (NullMeasurableSet.toMeasurable_ae_eq hs).symm
      Filter.EventuallyEq.rfl

/-- If a family of sets `𝒜` is measure-dense in `X`, then any measurable set with finite measure
can be approximated by sets in `𝒜` with finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
