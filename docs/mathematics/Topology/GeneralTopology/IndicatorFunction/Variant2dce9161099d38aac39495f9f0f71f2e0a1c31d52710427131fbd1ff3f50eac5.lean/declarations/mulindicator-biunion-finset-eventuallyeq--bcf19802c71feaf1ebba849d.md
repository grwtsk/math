# mulIndicator_biUnion_finset_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5560aa8d-2946-b88e-ccab-333154240e93",
  "kind": "theorem",
  "lexical_name": "mulIndicator_biUnion_finset_eventuallyEq",
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
  "slug": "mulindicator-biunion-finset-eventuallyeq--bcf19802c71feaf1ebba849d",
  "source": {
    "blob": "cdeccda59c69e4752a214c3290522e4672981e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf19802c71feaf1ebba849d59001c84fe781f6ed6dc909bd47e3235cf6b1c27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5560aa8d-2946-b88e-ccab-333154240e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_biUnion_finset_eventuallyEq {ι} [One β] (s : ι → Set α) (f : α → β) (a : α) :
    (fun n : Finset ι => mulIndicator (⋃ i ∈ n, s i) f a) =ᶠ[atTop]
      fun _ ↦ mulIndicator (iUnion s) f a := by
  rw [iUnion_eq_iUnion_finset s]
  apply Monotone.mulIndicator_eventuallyEq_iUnion
  exact fun _ _ ↦ biUnion_subset_biUnion_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeccda59c69e4752a214c3290522e4672981e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
