# measurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c343c16b4d12cf53911717e76e9d5e52e96d9b89e9fe78bbf0c1f4a3a3731071",
  "kind": "def",
  "lexical_name": "measurableSpace",
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
  "slug": "measurablespace--45f2f2b05c3932ba40e470e8",
  "source": {
    "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45f2f2b05c3932ba40e470e80742b6fb2fd8779d78d252789f013ff2f26c416c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c343c16b4d12cf53911717e76e9d5e52e96d9b89e9fe78bbf0c1f4a3a3731071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def measurableSpace (hτ : IsStoppingTime f τ) : MeasurableSpace Ω where
  MeasurableSet' s := ∀ i : ι, MeasurableSet[f i] (s ∩ {ω | τ ω ≤ i})
  measurableSet_empty i := (Set.empty_inter {ω | τ ω ≤ i}).symm ▸ @MeasurableSet.empty _ (f i)
  measurableSet_compl s hs i := by
    rw [(_ : sᶜ ∩ {ω | τ ω ≤ i} = (sᶜ ∪ {ω | τ ω ≤ i}ᶜ) ∩ {ω | τ ω ≤ i})]
    · refine' MeasurableSet.inter _ _
      · rw [← Set.compl_inter]
        exact (hs i).compl
      · exact hτ i
    · rw [Set.union_inter_distrib_right]
      simp only [Set.compl_inter_self, Set.union_empty]
  measurableSet_iUnion s hs i := by
    rw [forall_swap] at hs
    rw [Set.iUnion_inter]
    exact MeasurableSet.iUnion (hs i)
#align measure_theory.is_stopping_time.measurable_space MeasureTheory.IsStoppingTime.measurableSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a5c033f38226401d2b83043ee33645bc887d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
