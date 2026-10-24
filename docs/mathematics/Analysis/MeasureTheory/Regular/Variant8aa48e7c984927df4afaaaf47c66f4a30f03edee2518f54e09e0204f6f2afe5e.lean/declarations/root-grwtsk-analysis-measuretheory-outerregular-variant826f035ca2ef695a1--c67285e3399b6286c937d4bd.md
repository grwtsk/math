# _root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.IsCompact.exists_isOpen_lt_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9d840b1-9844-3cb8-5131-94b9d1eba23e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.IsCompact.exists_isOpen_lt_add",
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
  "slug": "root-grwtsk-analysis-measuretheory-outerregular-variant826f035ca2ef695a1--c67285e3399b6286c937d4bd",
  "source": {
    "blob": "f6e69fa585aaaf73abedd816c6839719a3c4b77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 816,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67285e3399b6286c937d4bd75fa2a01d7e3de2d6134a05db61965cc6e57cbb6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9d840b1-9844-3cb8-5131-94b9d1eba23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.IsCompact.exists_isOpen_lt_add [InnerRegularCompactLTTop μ]
    [IsLocallyFiniteMeasure μ] [R1Space α] [BorelSpace α]
    {K : Set α} (hK : IsCompact K) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ U, K ⊆ U ∧ IsOpen U ∧ μ U < μ K + ε :=
  hK.exists_isOpen_lt_of_lt _ (ENNReal.lt_add_right hK.measure_lt_top.ne hε)

/-- Let `μ` be a locally finite measure on an R₁ topological space with Borel σ-algebra.
If `μ` is inner regular for finite measure sets with respect to compact sets,
then any measurable set of finite measure can be approximated in measure by an open set.
See also `Set.exists_isOpen_lt_of_lt` and `MeasurableSet.exists_isOpen_diff_lt`
for the case of an outer regular measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e69fa585aaaf73abedd816c6839719a3c4b77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
