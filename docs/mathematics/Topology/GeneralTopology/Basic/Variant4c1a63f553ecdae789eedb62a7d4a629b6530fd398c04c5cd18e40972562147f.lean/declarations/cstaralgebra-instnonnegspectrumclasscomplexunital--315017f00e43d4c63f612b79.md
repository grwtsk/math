# CStarAlgebra.instNonnegSpectrumClassComplexUnital

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cde64a889724fce2d7a9f72cd8a45432c475769af6324f54ed86cb37df92609d",
  "kind": "instance",
  "lexical_name": "CStarAlgebra.instNonnegSpectrumClassComplexUnital",
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
  "slug": "cstaralgebra-instnonnegspectrumclasscomplexunital--315017f00e43d4c63f612b79",
  "source": {
    "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 354,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:315017f00e43d4c63f612b79cf7de3c17f0473995514b18c1deeb65472332227",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cde64a889724fce2d7a9f72cd8a45432c475769af6324f54ed86cb37df92609d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CStarAlgebra.instNonnegSpectrumClassComplexUnital : NonnegSpectrumClass ℂ A where
  quasispectrum_nonneg_of_nonneg a ha x := by
    rw [mem_quasispectrum_iff]
    refine (Or.elim · ge_of_eq fun hx ↦ ?_)
    obtain ⟨y, hy, rfl⟩ := (IsSelfAdjoint.of_nonneg ha).spectrumRestricts.algebraMap_image ▸ hx
    simpa using spectrum_nonneg_of_nonneg ha hy

end NonnegSpectrumClass

section SpectralOrder

variable [NonUnitalCStarAlgebra A]

open scoped CStarAlgebra

variable (A) in
/-- The partial order on a C⋆-algebra defined by `x ≤ y` if and only if `y - x` is
selfadjoint and has nonnegative spectrum.

This is not declared as an instance because one may already have a partial order with better
definitional properties. However, it can be useful to invoke this as an instance in proofs. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3536311b45a48c088fd7823ccada2dca075665e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
