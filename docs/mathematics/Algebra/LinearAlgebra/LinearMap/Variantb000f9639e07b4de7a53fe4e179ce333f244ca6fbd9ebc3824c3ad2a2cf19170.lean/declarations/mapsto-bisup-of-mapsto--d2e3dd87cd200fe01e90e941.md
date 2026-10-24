# mapsTo_biSup_of_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff8f8b3d653a4ae3f88d0b752878994eebb55816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43d7a2df-6f6d-3856-c310-6f00515cfbe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a360a2f5-8335-6d50-216a-67460d8c1dc1",
  "kind": "lemma",
  "lexical_name": "mapsTo_biSup_of_mapsTo",
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
  "slug": "mapsto-bisup-of-mapsto--d2e3dd87cd200fe01e90e941",
  "source": {
    "blob": "ff8f8b3d653a4ae3f88d0b752878994eebb55816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e3dd87cd200fe01e90e941bfa92500f30a4a29e4493adf51d70afba7179d9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a360a2f5-8335-6d50-216a-67460d8c1dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapsTo_biSup_of_mapsTo {ι : Type*} {N : ι → Submodule R M}
    (s : Set ι) {f : Module.End R M} (hf : ∀ i, MapsTo f (N i) (N i)) :
    MapsTo f ↑(⨆ i ∈ s, N i) ↑(⨆ i ∈ s, N i) := by
  replace hf : ∀ i, (N i).map f ≤ N i := fun i ↦ Submodule.map_le_iff_le_comap.mpr (hf i)
  suffices (⨆ i ∈ s, N i).map f ≤ ⨆ i ∈ s, N i from Submodule.map_le_iff_le_comap.mp this
  simpa only [Submodule.map_iSup] using iSup₂_mono <| fun i _ ↦ hf i

end IsInternal

/-- The trace of an endomorphism of a direct sum is the sum of the traces on each component.

Note that it is important the statement gives the user definitional control over `p` since the
_type_ of the term `trace R p (f.restrict hp')` depends on `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff8f8b3d653a4ae3f88d0b752878994eebb55816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
