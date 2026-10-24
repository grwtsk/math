# tangentMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5ff7419-9e87-8db4-177b-575938a30cc3",
  "kind": "theorem",
  "lexical_name": "tangentMap_comp",
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
  "slug": "tangentmap-comp--17289bb983fa8e08a14d54fc",
  "source": {
    "blob": "3059d261aa559865c043589ed73a1c3e5078e16d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1051,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17289bb983fa8e08a14d54fc4ec6ca51cc9034f81a453424b8829922ffefb912",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5ff7419-9e87-8db4-177b-575938a30cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentMap_comp (hg : MDifferentiable I' I'' g) (hf : MDifferentiable I I' f) :
    tangentMap I I'' (g ∘ f) = tangentMap I' I'' g ∘ tangentMap I I' f := by
  ext p : 1; exact tangentMap_comp_at _ (hg _) (hf _)
#align tangent_map_comp tangentMap_comp

end DerivativesProperties

section MFDerivFderiv

/-!
### Relations between vector space derivative and manifold derivative

The manifold derivative `mfderiv`, when considered on the model vector space with its trivial
manifold structure, coincides with the usual Frechet derivative `fderiv`. In this section, we prove
this and related statements.
-/


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {f : E → E'}
  {s : Set E} {x : E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3059d261aa559865c043589ed73a1c3e5078e16d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
