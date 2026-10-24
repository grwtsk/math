# prod_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcda187671ab2b4ded4e301fb30ca0391eb41c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c299af3a-19ac-fe49-314e-291fc699e363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5221221-093f-1422-99b1-5ef954d5c33b",
  "kind": "theorem",
  "lexical_name": "prod_apply_le",
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
  "slug": "prod-apply-le--0f0df20d5b86875bbc687ff3",
  "source": {
    "blob": "dcda187671ab2b4ded4e301fb30ca0391eb41c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0df20d5b86875bbc687ff3637ac6c23cd24c75c994188d739a234da6a74875",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5221221-093f-1422-99b1-5ef954d5c33b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_apply_le {s : Set (α × β)} (hs : MeasurableSet s) :
    μ.prod ν s ≤ ∫⁻ x, ν (Prod.mk x ⁻¹' s) ∂μ := by
  simp only [Measure.prod, ← map_apply measurable_prodMk_left hs]
  exact bind_apply_le Measurable.map_prodMk_left.aemeasurable hs

/-- For any measures `μ` and `ν` and any sets `s` and `t`,
we have `μ.prod ν (s ×ˢ t) ≤ μ s * ν t`.

If `ν` is an s-finite measure (which is usually true),
then this inequality becomes an equality, see `prod_prod` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcda187671ab2b4ded4e301fb30ca0391eb41c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
