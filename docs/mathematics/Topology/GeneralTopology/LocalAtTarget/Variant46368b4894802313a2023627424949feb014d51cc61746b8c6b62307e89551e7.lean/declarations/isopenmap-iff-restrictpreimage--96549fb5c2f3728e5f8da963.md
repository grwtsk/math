# isOpenMap_iff_restrictPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90fb49ee-ad60-3bc6-ce11-26452a7b4a0c",
  "kind": "theorem",
  "lexical_name": "isOpenMap_iff_restrictPreimage",
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
  "slug": "isopenmap-iff-restrictpreimage--96549fb5c2f3728e5f8da963",
  "source": {
    "blob": "0ad3e2371bc619127432213694d3da7c0465c1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96549fb5c2f3728e5f8da9635ce113613be032572cef883ad5bade3c31b2d00c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90fb49ee-ad60-3bc6-ce11-26452a7b4a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_iff_restrictPreimage :
    IsOpenMap f ↔ ∀ i, IsOpenMap ((U i).1.restrictPreimage f) := by
  refine ⟨fun h i ↦ h.restrictPreimage _, fun H s hs ↦ ?_⟩
  rw [hU.isOpen_iff_coe_preimage]
  intro i
  convert H i _ (hs.preimage continuous_subtype_val)
  ext ⟨x, hx⟩
  suffices (∃ y, y ∈ s ∧ f y = x) ↔ ∃ y, y ∈ s ∧ f y ∈ U i ∧ f y = x by simpa [← Subtype.coe_inj]
  exact ⟨fun ⟨a, b, c⟩ ↦ ⟨a, b, c.symm ▸ hx, c⟩, by tauto⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad3e2371bc619127432213694d3da7c0465c1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
