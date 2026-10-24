# isCompact_closure_image_coe_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d4eab32-a250-ca6c-56c4-8557d9b662e5",
  "kind": "theorem",
  "lexical_name": "isCompact_closure_image_coe_of_bounded",
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
  "slug": "iscompact-closure-image-coe-of-bounded--142791b78a81661563e842f1",
  "source": {
    "blob": "ce89b94bc69ef6160c4384f1fd7e906d5be86167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142791b78a81661563e842f15fbfca08e8f7c1d4970e041152b180f98a75a6b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d4eab32-a250-ca6c-56c4-8557d9b662e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closure_image_coe_of_bounded [ProperSpace F] {s : Set (E' →SL[σ₁₂] F)}
    (hb : IsBounded s) : IsCompact (closure (((↑) : (E' →SL[σ₁₂] F) → E' → F) '' s)) :=
  have : ∀ x, IsCompact (closure (apply' F σ₁₂ x '' s)) := fun x =>
    ((apply' F σ₁₂ x).lipschitz.isBounded_image hb).isCompact_closure
  (isCompact_pi_infinite this).closure_of_subset
    (image_subset_iff.2 fun _ hg _ => subset_closure <| mem_image_of_mem _ hg)

/-- Let `s` be a bounded set in the space of continuous (semi)linear maps `E →SL[σ] F` taking values
in a proper space. If `s` interpreted as a set in the space of maps `E → F` with topology of
pointwise convergence is closed, then it is compact.

TODO: reformulate this in terms of a type synonym with the right topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce89b94bc69ef6160c4384f1fd7e906d5be86167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
