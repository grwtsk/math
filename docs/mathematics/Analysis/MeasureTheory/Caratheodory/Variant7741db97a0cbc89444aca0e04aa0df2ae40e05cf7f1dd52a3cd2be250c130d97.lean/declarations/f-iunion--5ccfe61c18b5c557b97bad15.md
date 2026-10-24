# f_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a455cf5-07a4-e55e-a70b-d2fc1f64c60a",
  "kind": "theorem",
  "lexical_name": "f_iUnion",
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
  "slug": "f-iunion--5ccfe61c18b5c557b97bad15",
  "source": {
    "blob": "b17fc0431ec4b86afd2ce22973064e537cac4f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7741db97a0cbc89444aca0e04aa0df2ae40e05cf7f1dd52a3cd2be250c130d97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ccfe61c18b5c557b97bad153db920a07ed11731a9d7968f077b390f076111d1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Caratheodory/Variant7741db97a0cbc89444aca0e04aa0df2ae40e05cf7f1dd52a3cd2be250c130d97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a455cf5-07a4-e55e-a70b-d2fc1f64c60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_iUnion {s : ℕ → Set α} (h : ∀ i, IsCaratheodory m (s i)) (hd : Pairwise (Disjoint on s)) :
    m (⋃ i, s i) = ∑' i, m (s i) := by
  refine le_antisymm (measure_iUnion_le s) ?_
  rw [ENNReal.tsum_eq_iSup_nat]
  refine iSup_le fun n => ?_
  have := @isCaratheodory_sum _ m _ h hd univ n
  simp only [inter_comm, inter_univ, univ_inter] at this; simp only [this]
  exact m.mono (iUnion₂_subset fun i _ => subset_iUnion _ i)

/-- The Carathéodory-measurable sets for an outer measure `m` form a Dynkin system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Caratheodory/Variant7741db97a0cbc89444aca0e04aa0df2ae40e05cf7f1dd52a3cd2be250c130d97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7741db97a0cbc89444aca0e04aa0df2ae40e05cf7f1dd52a3cd2be250c130d97.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17fc0431ec4b86afd2ce22973064e537cac4f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
