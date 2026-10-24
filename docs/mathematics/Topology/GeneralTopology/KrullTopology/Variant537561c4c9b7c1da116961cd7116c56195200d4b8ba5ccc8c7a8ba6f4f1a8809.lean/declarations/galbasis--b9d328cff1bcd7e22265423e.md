# galBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8c11823620b4441eadf96e21366c36c22cc6903c3cf9ecdf97bd316fa4a7970",
  "kind": "def",
  "lexical_name": "galBasis",
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
  "slug": "galbasis--b9d328cff1bcd7e22265423e",
  "source": {
    "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9d328cff1bcd7e22265423ed559f77d9a06b6d7b40922f0506f3402b6b15e9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8c11823620b4441eadf96e21366c36c22cc6903c3cf9ecdf97bd316fa4a7970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def galBasis (K L : Type*) [Field K] [Field L] [Algebra K L] : FilterBasis (L ≃ₐ[K] L) where
  sets := (fun g => g.carrier) '' fixedByFinite K L
  nonempty := ⟨⊤, ⊤, top_fixedByFinite, rfl⟩
  inter_sets := by
    rintro _ _ ⟨_, ⟨E1, h_E1, rfl⟩, rfl⟩ ⟨_, ⟨E2, h_E2, rfl⟩, rfl⟩
    have : FiniteDimensional K E1 := h_E1
    have : FiniteDimensional K E2 := h_E2
    refine ⟨(E1 ⊔ E2).fixingSubgroup.carrier, ⟨_, ⟨_, E1.finiteDimensional_sup E2, rfl⟩, rfl⟩, ?_⟩
    exact Set.subset_inter (E1.fixingSubgroup_le le_sup_left) (E2.fixingSubgroup_le le_sup_right)

/-- A subset of `L ≃ₐ[K] L` is a member of `galBasis K L` if and only if it is the underlying set
of `Gal(L/E)` for some finite subextension `E/K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfa5ca65fbd459e20de06a2362187f0ad3edfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
