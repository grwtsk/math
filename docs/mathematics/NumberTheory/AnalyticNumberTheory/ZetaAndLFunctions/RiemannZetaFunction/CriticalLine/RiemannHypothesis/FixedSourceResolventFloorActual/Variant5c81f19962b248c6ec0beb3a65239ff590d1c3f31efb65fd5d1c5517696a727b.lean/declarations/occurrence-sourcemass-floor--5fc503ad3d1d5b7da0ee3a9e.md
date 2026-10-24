# occurrence_sourceMass_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "438b425117bf83d589e92bd181a04fed4fde1671",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a2f0289-f970-fa7e-94c2-92ef97be4b8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b54fc145-8aff-c370-174c-14a06f179503",
  "kind": "theorem",
  "lexical_name": "occurrence_sourceMass_floor",
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
  "slug": "occurrence-sourcemass-floor--5fc503ad3d1d5b7da0ee3a9e",
  "source": {
    "blob": "438b425117bf83d589e92bd181a04fed4fde1671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActual/Variant5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fc503ad3d1d5b7da0ee3a9e0a1ded068aa8de20ff95f4bd67b62a135d722468",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActual/Variant5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b54fc145-8aff-c370-174c-14a06f179503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActual/Variant5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActual/Variant5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `438b425117bf83d589e92bd181a04fed4fde1671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
