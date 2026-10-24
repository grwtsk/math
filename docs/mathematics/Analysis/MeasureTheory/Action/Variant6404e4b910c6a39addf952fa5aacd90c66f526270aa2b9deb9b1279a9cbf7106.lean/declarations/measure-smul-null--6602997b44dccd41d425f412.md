# measure_smul_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9fae4be-3d42-0156-f64c-5a23742890d1",
  "kind": "theorem",
  "lexical_name": "measure_smul_null",
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
  "slug": "measure-smul-null--6602997b44dccd41d425f412",
  "source": {
    "blob": "8385a29014b00306f92d2f13598cb6134846a1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6602997b44dccd41d425f412e9e9cef668c7c63b17518a9b3fc3c4e530047d97",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9fae4be-3d42-0156-f64c-5a23742890d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_smul_null {s} (h : μ s = 0) (c : G) : μ (c • s) = 0 := by rwa [measure_smul]
#align measure_theory.measure_smul_null MeasureTheory.measure_smul_null

section IsMinimal

variable (G)
variable [TopologicalSpace α] [ContinuousConstSMul G α] [MulAction.IsMinimal G α] {K U : Set α}

/-- If measure `μ` is invariant under a group action and is nonzero on a compact set `K`, then it is
positive on any nonempty open set. In case of a regular measure, one can assume `μ ≠ 0` instead of
`μ K ≠ 0`, see `MeasureTheory.measure_isOpen_pos_of_smulInvariant_of_ne_zero`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8385a29014b00306f92d2f13598cb6134846a1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
