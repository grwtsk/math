# MDifferentiable.clm_bundle_apply₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9e05453-2ac7-9c4f-fb8d-053e51f73340",
  "kind": "lemma",
  "lexical_name": "MDifferentiable.clm_bundle_apply₂",
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
  "slug": "mdifferentiable-clm-bundle-apply--5b63b57818750094b8ef3205",
  "source": {
    "blob": "83ed311c3a31d51b9ffdefc628e6cbdf3bb4b72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 509,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b63b57818750094b8ef3205cb64ea94c4d846c5e048c6e219eac9e0ebc0874f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9e05453-2ac7-9c4f-fb8d-053e51f73340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MDifferentiable.clm_bundle_apply₂
    (hψ : MDiff (fun m ↦ TotalSpace.mk' (F₁ →L[𝕜] F₂ →L[𝕜] F₃)
      (E := fun (x : B) ↦ (E₁ x →L[𝕜] E₂ x →L[𝕜] E₃ x)) (b m) (ψ m)))
    (hv : MDiff (fun m ↦ TotalSpace.mk' F₁ (b m) (v m)))
    (hw : MDiff (fun m ↦ TotalSpace.mk' F₂ (b m) (w m))) :
    MDiff (fun m ↦ TotalSpace.mk' F₃ (b m) (ψ m (v m) (w m))) :=
  fun x ↦ (hψ x).clm_bundle_apply₂ (hv x) (hw x)

end TwoVariables'

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ed311c3a31d51b9ffdefc628e6cbdf3bb4b72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
