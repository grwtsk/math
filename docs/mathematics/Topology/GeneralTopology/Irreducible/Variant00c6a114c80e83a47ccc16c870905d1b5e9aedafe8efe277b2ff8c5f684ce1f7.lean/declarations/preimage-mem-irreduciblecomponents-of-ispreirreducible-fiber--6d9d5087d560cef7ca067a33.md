# preimage_mem_irreducibleComponents_of_isPreirreducible_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4281a808-e1c0-af1e-7331-5ffc8ede1c84",
  "kind": "lemma",
  "lexical_name": "preimage_mem_irreducibleComponents_of_isPreirreducible_fiber",
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
  "slug": "preimage-mem-irreduciblecomponents-of-ispreirreducible-fiber--6d9d5087d560cef7ca067a33",
  "source": {
    "blob": "5d240464803fa57793a1ed4004749ce28e34ecf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 471,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d9d5087d560cef7ca067a335823448bf246bc439e67fefa54bc40b2491d70c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4281a808-e1c0-af1e-7331-5ffc8ede1c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_mem_irreducibleComponents_of_isPreirreducible_fiber
    (ht : t ∈ irreducibleComponents X) {f : Y → X} (hf₁ : Continuous f) (hf₂ : IsOpenMap f)
    (hf₃ : ∀ x, IsPreirreducible (f ⁻¹' {x})) (h : (t ∩ range f).Nonempty) :
    f ⁻¹' t ∈ irreducibleComponents Y := by
  refine ⟨ht.1.preimage_of_isPreirreducible_fiber f hf₂ hf₃ h, fun u hu htu ↦ image_subset_iff.mp
    (subset_closure.trans (ht.2 (hu.image f hf₁.continuousOn).closure ?_))⟩
  suffices t ≤ closure (f '' f ⁻¹' t) from this.trans (closure_mono (image_mono htu))
  rw [image_preimage_eq_inter_range]
  exact subset_closure_inter_of_isPreirreducible_of_isOpen ht.1.2 hf₂.isOpen_range h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d240464803fa57793a1ed4004749ce28e34ecf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
