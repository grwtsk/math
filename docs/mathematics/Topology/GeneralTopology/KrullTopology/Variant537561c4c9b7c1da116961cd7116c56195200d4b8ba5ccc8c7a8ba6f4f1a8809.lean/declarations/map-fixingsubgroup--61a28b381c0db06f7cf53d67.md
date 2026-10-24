# map_fixingSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fbd5bec-12ad-5862-f8f4-5cb69217f389",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43df28b-1486-d204-d7bb-16a9b9852d91",
  "kind": "theorem",
  "lexical_name": "map_fixingSubgroup",
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
  "slug": "map-fixingsubgroup--61a28b381c0db06f7cf53d67",
  "source": {
    "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a28b381c0db06f7cf53d67a119b382db0ee28cd4fdd459dc3afc959bbc68c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43df28b-1486-d204-d7bb-16a9b9852d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fixingSubgroup [Normal k E] :
    (L.map (IsScalarTower.toAlgHom k E K)).fixingSubgroup =
      L.fixingSubgroup.comap (AlgEquiv.restrictNormalHom (F := k) (K₁ := K) E) := by
  ext f
  simp only [Subgroup.mem_comap, mem_fixingSubgroup_iff]
  constructor
  · rintro h x hx
    change f.restrictNormal E x = x
    apply_fun _ using (algebraMap E K).injective
    rw [AlgEquiv.restrictNormal_commutes]
    exact h _ ⟨x, hx, rfl⟩
  · rintro h _ ⟨x, hx, rfl⟩
    replace h := congr(algebraMap E K $(show f.restrictNormal E x = x from h x hx))
    rwa [AlgEquiv.restrictNormal_commutes] at h

/-- If `K / E / k` is a field extension tower with `E / k` and `K / k` normal,
`L` is an intermediate field of `E / k`, then the index of the fixing subgroup of `L` viewed as an
intermediate field of `K / k` is equal to the index of the fixing subgroup of `L` viewed as an
intermediate field of `E / k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfa5ca65fbd459e20de06a2362187f0ad3edfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
