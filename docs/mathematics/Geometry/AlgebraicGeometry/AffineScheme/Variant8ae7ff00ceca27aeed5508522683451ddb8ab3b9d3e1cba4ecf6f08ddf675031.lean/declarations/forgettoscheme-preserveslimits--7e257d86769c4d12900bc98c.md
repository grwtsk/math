# forgetToScheme_preservesLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b63c19024f992d6bee216b5c519240dd7df19158beb3beae8e7d328fbd8b018",
  "kind": "instance",
  "lexical_name": "forgetToScheme_preservesLimits",
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
  "slug": "forgettoscheme-preserveslimits--7e257d86769c4d12900bc98c",
  "source": {
    "blob": "941355433d09b45c53809ac658b279827279d001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e257d86769c4d12900bc98c103d539b1c447496417c82fbf7e8fe6a7e068058",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b63c19024f992d6bee216b5c519240dd7df19158beb3beae8e7d328fbd8b018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forgetToScheme_preservesLimits : PreservesLimits forgetToScheme := by
  apply (config := { allowSynthFailures := true })
    @preservesLimitsOfNatIso _ _ _ _ _ _
      (isoWhiskerRight equivCommRingCat.unitIso forgetToScheme).symm
  change PreservesLimits (equivCommRingCat.functor ⋙ Scheme.Spec)
  infer_instance

end AffineScheme

/-- An open subset of a scheme is affine if the open subscheme is affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941355433d09b45c53809ac658b279827279d001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
