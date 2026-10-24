# finset_iUnion_of_pairwise_separated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67885fef-affb-0eac-de6f-6fb128286c63",
  "kind": "theorem",
  "lexical_name": "finset_iUnion_of_pairwise_separated",
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
  "slug": "finset-iunion-of-pairwise-separated--23dca5d6964fd8b40864a122",
  "source": {
    "blob": "065cf771a127130908e3624200b95d0b0a238f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 148,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23dca5d6964fd8b40864a12282db8e196c003823e9445774f2debc99e635be33",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67885fef-affb-0eac-de6f-6fb128286c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_iUnion_of_pairwise_separated (hm : IsMetric μ) {I : Finset ι} {s : ι → Set X}
    (hI : ∀ i ∈ I, ∀ j ∈ I, i ≠ j → Metric.AreSeparated (s i) (s j)) :
    μ (⋃ i ∈ I, s i) = ∑ i ∈ I, μ (s i) := by
  classical
  induction I using Finset.induction_on with
  | empty => simp
  | insert i I hiI ihI =>
    simp only [Finset.mem_insert] at hI
    rw [Finset.set_biUnion_insert, hm, ihI, Finset.sum_insert hiI]
    exacts [fun i hi j hj hij => hI i (Or.inr hi) j (Or.inr hj) hij,
      Metric.AreSeparated.finset_iUnion_right fun j hj =>
        hI i (Or.inl rfl) j (Or.inr hj) (ne_of_mem_of_not_mem hj hiI).symm]

/-- Caratheodory theorem. If `m` is a metric outer measure, then every Borel measurable set `t` is
Caratheodory measurable: for any (not necessarily measurable) set `s` we have
`μ (s ∩ t) + μ (s \ t) = μ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065cf771a127130908e3624200b95d0b0a238f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
