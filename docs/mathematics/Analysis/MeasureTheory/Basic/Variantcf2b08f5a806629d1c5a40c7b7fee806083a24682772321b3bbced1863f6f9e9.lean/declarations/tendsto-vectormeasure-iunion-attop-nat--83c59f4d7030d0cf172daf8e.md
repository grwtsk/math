# tendsto_vectorMeasure_iUnion_atTop_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8970b66-a949-2362-5bd6-04acc78afe94",
  "kind": "theorem",
  "lexical_name": "tendsto_vectorMeasure_iUnion_atTop_nat",
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
  "slug": "tendsto-vectormeasure-iunion-attop-nat--83c59f4d7030d0cf172daf8e",
  "source": {
    "blob": "e0cdae00254e0ab3c85de7152bd6d615385e39ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c59f4d7030d0cf172daf8e42b2409be4418196b35849921ddabfddfee2d7d3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8970b66-a949-2362-5bd6-04acc78afe94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_vectorMeasure_iUnion_atTop_nat
    {s : ℕ → Set α} (hm : Monotone s) (hs : ∀ i, MeasurableSet (s i)) :
    Tendsto (fun n ↦ v (s n)) atTop (𝓝 (v (⋃ n, s n))) := by
  set t : ℕ → Set α := disjointed s
  have ht n : MeasurableSet (t n) := .disjointed (fun n ↦ hs n) n
  have : HasSum (fun n ↦ v (t n)) (v (⋃ n, s n)) := by
    rw [← iUnion_disjointed]
    apply m_iUnion _ ht (disjoint_disjointed _)
  convert! (HasSum.tendsto_sum_nat this).comp (tendsto_add_atTop_nat 1) with n
  dsimp
  rw [← of_biUnion_finset]
  · rw [biUnion_range_succ_disjointed, Monotone.partialSups_eq hm]
  · exact fun i hi j hj hij ↦ disjoint_disjointed _ hij
  · exact fun b hb ↦ ht _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cdae00254e0ab3c85de7152bd6d615385e39ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
