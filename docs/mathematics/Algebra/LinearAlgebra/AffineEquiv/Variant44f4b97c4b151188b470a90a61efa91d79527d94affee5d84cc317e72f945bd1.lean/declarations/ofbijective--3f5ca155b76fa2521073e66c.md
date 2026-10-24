# ofBijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42445224d335e4980a93fb16330729efab80843b8ab83803155166fc6b164cfd",
  "kind": "def",
  "lexical_name": "ofBijective",
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
  "slug": "ofbijective--3f5ca155b76fa2521073e66c",
  "source": {
    "blob": "70761ffc89a8571ff5a6f11f6205c96bc8dc718a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 246,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f5ca155b76fa2521073e66c46e6d86b888c666b94908f97875376ecb31e0354",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42445224d335e4980a93fb16330729efab80843b8ab83803155166fc6b164cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofBijective {φ : P₁ →ᵃ[k] P₂} (hφ : Function.Bijective φ) : P₁ ≃ᵃ[k] P₂ :=
  { Equiv.ofBijective _ hφ with
    linear := LinearEquiv.ofBijective φ.linear (φ.linear_bijective_iff.mpr hφ)
    map_vadd' := φ.map_vadd }
#align affine_equiv.of_bijective AffineEquiv.ofBijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70761ffc89a8571ff5a6f11f6205c96bc8dc718a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
