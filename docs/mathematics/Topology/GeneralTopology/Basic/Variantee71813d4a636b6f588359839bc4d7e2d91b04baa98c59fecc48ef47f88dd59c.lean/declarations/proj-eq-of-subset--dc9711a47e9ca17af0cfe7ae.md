# proj_eq_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c4a56f7-f1ec-7340-a1cb-527653437bac",
  "kind": "theorem",
  "lexical_name": "proj_eq_of_subset",
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
  "slug": "proj-eq-of-subset--dc9711a47e9ca17af0cfe7ae",
  "source": {
    "blob": "5d7bf4d8f6605259eeb0a8b72099922ba045358b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9711a47e9ca17af0cfe7aeedfa23a2799a1d0095e04860d8568605703f7aeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c4a56f7-f1ec-7340-a1cb-527653437bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proj_eq_of_subset (h : ∀ i, J i → K i) : π (π C K) J = π C J := by
  ext x
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · obtain ⟨y, ⟨z, hz, rfl⟩, rfl⟩ := h
    refine ⟨z, hz, (?_ : _ = (Proj J ∘ Proj K) z)⟩
    rw [proj_comp_of_subset J K h]
  · obtain ⟨y, hy, rfl⟩ := h
    dsimp [π]
    rw [← Set.image_comp]
    refine ⟨y, hy, ?_⟩
    rw [proj_comp_of_subset J K h]

variable {J K L}

/-- A variant of `ProjRestrict` with domain of the form `π C K` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7bf4d8f6605259eeb0a8b72099922ba045358b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
