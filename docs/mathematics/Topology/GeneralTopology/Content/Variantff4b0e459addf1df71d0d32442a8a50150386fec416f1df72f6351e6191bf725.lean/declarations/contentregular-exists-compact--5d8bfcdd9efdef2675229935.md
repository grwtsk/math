# contentRegular_exists_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b8e295-27ca-7c81-a196-5094dbaeed7e",
  "kind": "theorem",
  "lexical_name": "contentRegular_exists_compact",
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
  "slug": "contentregular-exists-compact--5d8bfcdd9efdef2675229935",
  "source": {
    "blob": "4a2539b7b86548703cbfbeaf15060a2de2c04683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 427,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8bfcdd9efdef26752299351dd1f5287fb0b492277cba6112cc3791c1abde03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b8e295-27ca-7c81-a196-5094dbaeed7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contentRegular_exists_compact (H : ContentRegular μ) (K : TopologicalSpace.Compacts G)
    {ε : NNReal} (hε : ε ≠ 0) :
    ∃ K' : TopologicalSpace.Compacts G, K.carrier ⊆ interior K'.carrier ∧ μ K' ≤ μ K + ε := by
  by_contra hc
  simp only [not_exists, not_and, not_le] at hc
  have lower_bound_iInf : μ K + ε ≤
      ⨅ (K' : TopologicalSpace.Compacts G) (_ : (K : Set G) ⊆ interior (K' : Set G)), μ K' :=
    le_iInf fun K' => le_iInf fun K'_hyp => le_of_lt (hc K' K'_hyp)
  rw [← H] at lower_bound_iInf
  exact (lt_self_iff_false (μ K)).mp (lt_of_le_of_lt' lower_bound_iInf
    (ENNReal.lt_add_right (ne_top_of_lt (μ.lt_top K)) (ENNReal.coe_ne_zero.mpr hε)))
#align measure_theory.content.content_regular_exists_compact MeasureTheory.Content.contentRegular_exists_compact

variable [MeasurableSpace G] [T2Space G] [BorelSpace G]

/-- If `μ` is a regular content, then the measure induced by `μ` will agree with `μ`
  on compact sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2539b7b86548703cbfbeaf15060a2de2c04683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
