# isCompact_image_coe_of_bounded_of_weak_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:031213b4-7f51-1e83-a8a0-74f6c086f30a",
  "kind": "theorem",
  "lexical_name": "isCompact_image_coe_of_bounded_of_weak_closed",
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
  "slug": "iscompact-image-coe-of-bounded-of-weak-closed--15a0d82f785e92849889ec96",
  "source": {
    "blob": "ce89b94bc69ef6160c4384f1fd7e906d5be86167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a0d82f785e92849889ec96ea7a235c7f6a178a8f37fa38f0a86212a9312970",
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

Occurrence: `result:031213b4-7f51-1e83-a8a0-74f6c086f30a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_image_coe_of_bounded_of_weak_closed [ProperSpace F] {s : Set (E' →SL[σ₁₂] F)}
    (hb : IsBounded s) (hc : ∀ f : E' →SL[σ₁₂] F,
      (⇑f : E' → F) ∈ closure (((↑) : (E' →SL[σ₁₂] F) → E' → F) '' s) → f ∈ s) :
    IsCompact (((↑) : (E' →SL[σ₁₂] F) → E' → F) '' s) :=
  isCompact_image_coe_of_bounded_of_closed_image hb <|
    isClosed_image_coe_of_bounded_of_weak_closed hb hc

/-- A closed ball is closed in the weak-* topology. We don't have a name for `E →SL[σ] F` with
weak-* topology in `mathlib`, so we use an equivalent condition (see `isClosed_induced_iff'`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce89b94bc69ef6160c4384f1fd7e906d5be86167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
