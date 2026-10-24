# isLocallyFiniteMeasureSMulNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42815c9eef850dbdfd99e868c5e73a89b0f7c3e764ad813921a729a4e420ef8b",
  "kind": "instance",
  "lexical_name": "isLocallyFiniteMeasureSMulNNReal",
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
  "slug": "islocallyfinitemeasuresmulnnreal--cbb960eac7fa5a0c34a3e4d6",
  "source": {
    "blob": "e2717a7f54ffd95469e2887ba3e965c8d7718449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 323,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbb960eac7fa5a0c34a3e4d62e8f94e50eb101028e80f7d9575dbc6fcec5bbe7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42815c9eef850dbdfd99e868c5e73a89b0f7c3e764ad813921a729a4e420ef8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocallyFiniteMeasureSMulNNReal [TopologicalSpace α] (μ : Measure α)
    [IsLocallyFiniteMeasure μ] (c : ℝ≥0) : IsLocallyFiniteMeasure (c • μ) := by
  refine ⟨fun x => ?_⟩
  rcases μ.exists_isOpen_measure_lt_top x with ⟨o, xo, o_open, μo⟩
  refine ⟨o, o_open.mem_nhds xo, ?_⟩
  apply ENNReal.mul_lt_top _ μo
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2717a7f54ffd95469e2887ba3e965c8d7718449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
