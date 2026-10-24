# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8066e5aee7f186b6c73f9f4d32a14fa45dd599244d83efdb076b404892cb6f21",
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
  "slug": "instance--561f9bfa2645aec3d719fb5c",
  "source": {
    "blob": "88065f83c0f02742394220b65e548b1d7143a3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:561f9bfa2645aec3d719fb5c318b54ad9535808c8ba472c27d0e5bd1f002ff5b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8066e5aee7f186b6c73f9f4d32a14fa45dd599244d83efdb076b404892cb6f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (b : Basis ι ℝ E) : SigmaFinite b.addHaar := by
  have : FiniteDimensional ℝ E := FiniteDimensional.of_fintype_basis b
  rw [Basis.addHaar_def]; exact sigmaFinite_addHaarMeasure

/-- Let `μ` be a σ-finite left invariant measure on `E`. Then `μ` is equal to the Haar measure
defined by `b` iff the parallelepiped defined by `b` has measure `1` for `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88065f83c0f02742394220b65e548b1d7143a3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
