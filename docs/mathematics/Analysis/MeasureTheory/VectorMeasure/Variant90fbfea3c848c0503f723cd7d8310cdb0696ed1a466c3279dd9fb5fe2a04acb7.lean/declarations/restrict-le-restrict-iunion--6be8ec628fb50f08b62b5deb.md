# restrict_le_restrict_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10bda309-a9fd-9ca4-4279-d862138d531e",
  "kind": "theorem",
  "lexical_name": "restrict_le_restrict_iUnion",
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
  "slug": "restrict-le-restrict-iunion--6be8ec628fb50f08b62b5deb",
  "source": {
    "blob": "1bc7047d4e9c89a107ff3c8d23514847ae0ce913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 964,
    "line": 943,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be8ec628fb50f08b62b5deb7e7e760f753735d5faf461290ff2d5c17596e04b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10bda309-a9fd-9ca4-4279-d862138d531e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 943–964.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_le_restrict_iUnion {f : ℕ → Set α} (hf₁ : ∀ n, MeasurableSet (f n))
    (hf₂ : ∀ n, v ≤[f n] w) : v ≤[⋃ n, f n] w := by
  refine' restrict_le_restrict_of_subset_le v w fun a ha₁ ha₂ => _
  have ha₃ : ⋃ n, a ∩ disjointed f n = a := by
    rwa [← Set.inter_iUnion, iUnion_disjointed, Set.inter_eq_left_iff_subset]
  have ha₄ : Pairwise (Disjoint on fun n => a ∩ disjointed f n) :=
    (disjoint_disjointed _).mono fun i j => Disjoint.mono inf_le_right inf_le_right
  rw [← ha₃, v.of_disjoint_iUnion_nat _ ha₄, w.of_disjoint_iUnion_nat _ ha₄]
  refine' tsum_le_tsum (fun n => (restrict_le_restrict_iff v w (hf₁ n)).1 (hf₂ n) _ _) _ _
  · exact ha₁.inter (MeasurableSet.disjointed hf₁ n)
  · exact Set.Subset.trans (Set.inter_subset_right _ _) (disjointed_subset _ _)
  · refine' (v.m_iUnion (fun n => _) _).summable
    · exact ha₁.inter (MeasurableSet.disjointed hf₁ n)
    · exact (disjoint_disjointed _).mono fun i j => Disjoint.mono inf_le_right inf_le_right
  · refine' (w.m_iUnion (fun n => _) _).summable
    · exact ha₁.inter (MeasurableSet.disjointed hf₁ n)
    · exact (disjoint_disjointed _).mono fun i j => Disjoint.mono inf_le_right inf_le_right
  · intro n
    exact ha₁.inter (MeasurableSet.disjointed hf₁ n)
  · exact fun n => ha₁.inter (MeasurableSet.disjointed hf₁ n)
#align measure_theory.vector_measure.restrict_le_restrict_Union MeasureTheory.VectorMeasure.restrict_le_restrict_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean#L943).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc7047d4e9c89a107ff3c8d23514847ae0ce913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
