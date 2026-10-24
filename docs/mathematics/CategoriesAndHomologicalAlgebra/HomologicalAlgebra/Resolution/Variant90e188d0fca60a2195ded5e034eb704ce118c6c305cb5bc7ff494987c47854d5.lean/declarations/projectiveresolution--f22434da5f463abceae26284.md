# ProjectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4980ea424ec67165596369494a4f1ca780a6ead5edfa58222c48088bdd362965",
  "kind": "structure",
  "lexical_name": "ProjectiveResolution",
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
  "slug": "projectiveresolution--f22434da5f463abceae26284",
  "source": {
    "blob": "26b561b060a328938510908e8c96c8d199637048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f22434da5f463abceae2628450f4cf6601723aa4931ff2d22df6f0dd8275da95",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4980ea424ec67165596369494a4f1ca780a6ead5edfa58222c48088bdd362965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveResolution (Z : C) where
  /-- the chain complex involved in the resolution -/
  complex : ChainComplex C ℕ
  /-- the chain complex must be degreewise projective -/
  projective : ∀ n, Projective (complex.X n) := by infer_instance
  /-- the chain complex must have homology -/
  [hasHomology : ∀ i, complex.HasHomology i]
  /-- the morphism to the single chain complex with `Z` in degree `0` -/
  π : complex ⟶ (ChainComplex.single₀ C).obj Z
  /-- the morphism to the single chain complex with `Z` in degree `0` is a quasi-isomorphism -/
  quasiIso : QuasiIso π := by infer_instance

open ProjectiveResolution in
attribute [instance] projective hasHomology ProjectiveResolution.quasiIso

/-- An object admits a projective resolution.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26b561b060a328938510908e8c96c8d199637048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
