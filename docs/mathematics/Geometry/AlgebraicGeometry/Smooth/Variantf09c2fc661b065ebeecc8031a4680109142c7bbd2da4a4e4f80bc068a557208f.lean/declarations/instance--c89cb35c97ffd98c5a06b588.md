# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:929c7df9cc266f0a2610b9056b40205540872acab128d2f250b6b6d19553161b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c89cb35c97ffd98c5a06b588",
  "source": {
    "blob": "489322bd32b20e8189e1d46fa6790a9d22682bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 177,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89cb35c97ffd98c5a06b5880bb173d3966a1e278933e6e9d638d957e90321fd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:929c7df9cc266f0a2610b9056b40205540872acab128d2f250b6b6d19553161b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [hf : IsSmooth f] : LocallyOfFinitePresentation f := by
  rw [HasRingHomProperty.eq_affineLocally @LocallyOfFinitePresentation]
  rw [HasRingHomProperty.eq_affineLocally @IsSmooth] at hf
  refine affineLocally_le (fun hf ↦ ?_) f hf
  apply RingHom.locally_of_locally (Q := RingHom.FinitePresentation) at hf
  · rwa [RingHom.locally_iff_of_localizationSpanTarget finitePresentation_respectsIso
      finitePresentation_ofLocalizationSpanTarget] at hf
  · introv hf
    algebraize [f]
    -- TODO: why is `algebraize` not generating the following instance?
    haveI : Algebra.IsStandardSmooth R S := hf
    exact this.finitePresentation

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `489322bd32b20e8189e1d46fa6790a9d22682bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
