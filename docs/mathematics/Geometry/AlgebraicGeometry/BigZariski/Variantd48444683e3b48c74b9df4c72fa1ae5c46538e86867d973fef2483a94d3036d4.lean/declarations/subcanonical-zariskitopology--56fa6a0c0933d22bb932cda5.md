# subcanonical_zariskiTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3428ea5753afc6743dd347bb83b3d226cc08e2cfd0a70a4168bd91e8e36d5c7",
  "kind": "instance",
  "lexical_name": "subcanonical_zariskiTopology",
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
  "slug": "subcanonical-zariskitopology--56fa6a0c0933d22bb932cda5",
  "source": {
    "blob": "2224023a8e185c178a0f949de3f5c5df2a649033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56fa6a0c0933d22bb932cda55371c61fb536655201e119b63f3bf8d32b6f74be",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3428ea5753afc6743dd347bb83b3d226cc08e2cfd0a70a4168bd91e8e36d5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subcanonical_zariskiTopology : zariskiTopology.Subcanonical := by
  apply GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj
  intro X
  rw [Presieve.isSheaf_pretopology]
  rintro Y S ⟨𝓤,rfl⟩ x hx
  let e : Y ⟶ X := 𝓤.glueMorphisms (fun j => x (𝓤.map _) (.mk _)) <| by
    intro i j
    apply hx
    exact Limits.pullback.condition
  refine ⟨e, ?_, ?_⟩
  · rintro Z e ⟨j⟩
    dsimp [e]
    rw [𝓤.ι_glueMorphisms]
  · intro e' h
    apply 𝓤.hom_ext
    intro j
    rw [𝓤.ι_glueMorphisms]
    exact h (𝓤.map j) (.mk j)

end Scheme

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2224023a8e185c178a0f949de3f5c5df2a649033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
