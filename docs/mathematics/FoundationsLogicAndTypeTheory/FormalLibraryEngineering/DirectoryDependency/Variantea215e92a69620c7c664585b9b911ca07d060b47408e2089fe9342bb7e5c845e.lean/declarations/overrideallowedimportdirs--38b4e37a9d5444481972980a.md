# overrideAllowedImportDirs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d6140e9f44c1e768c26684b98d1c3034ef9ebe100a61ec7ccb15f76d999ac75",
  "kind": "def",
  "lexical_name": "overrideAllowedImportDirs",
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
  "slug": "overrideallowedimportdirs--38b4e37a9d5444481972980a",
  "source": {
    "blob": "49387b8d8005fcfedca09974e3cf6cc842a710bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 623,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38b4e37a9d5444481972980a338fc1aeb8108f36f0563969b17c8f122640bbca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d6140e9f44c1e768c26684b98d1c3034ef9ebe100a61ec7ccb15f76d999ac75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overrideAllowedImportDirs : NamePrefixRel := .ofArray #[
  (`Mathlib.Algebra.Lie, `Mathlib.RepresentationTheory),
  (`Mathlib.Algebra.Module.ZLattice, `Mathlib.Analysis),
  (`Mathlib.Algebra.Notation, `Mathlib.Algebra.Notation),
  (`Mathlib.AlgebraicGeometry.EllipticCurve, `Mathlib.Probability), -- For L-functions
  (`Mathlib.AlgebraicGeometry.Sites, `Mathlib.AlgebraicTopology), -- Homotopical methods for sheaf cohomology
  (`Mathlib.AlgebraicGeometry.Sites, `Mathlib.NumberTheory), -- For arithmetic applications
  (`Mathlib.Deprecated, `Mathlib.Deprecated),
  (`Mathlib.LinearAlgebra.Complex, `Mathlib.Topology), -- Complex numbers are analysis/topology.
  (`Mathlib.LinearAlgebra.Matrix, `Mathlib.Topology), -- For e.g. spectra.
  (`Mathlib.LinearAlgebra.QuadraticForm, `Mathlib.Topology), -- For real/complex quadratic forms.
  (`Mathlib.LinearAlgebra.SesquilinearForm, `Mathlib.Topology), -- for links with positive semidefinite matrices
  (`Mathlib.LinearAlgebra.Eigenspace.ContinuousLinearMap, `Mathlib.Topology),
  (`Mathlib.ModelTheory.Topology, `Mathlib.Topology), -- For e.g. topology on complete types.
  (`Mathlib.LinearAlgebra.RootSystem.IsValuedIn, `Mathlib.Topology),
  (`Mathlib.Topology.Algebra, `Mathlib.Algebra),
  (`Mathlib.Topology.Compactification, `Mathlib.Geometry.Manifold),
  (`Mathlib.Computability.AkraBazzi, `Mathlib.MeasureTheory), -- Akra-Bazzi uses calculus
  (`Mathlib.Analysis.Convex.SimplicialComplex.Basic, `Mathlib.AlgebraicTopology),
  (`Mathlib.Analysis.Convex.SimplicialComplex.AffineIndependentUnion, `Mathlib.AlgebraicTopology),
  (`Mathlib.Probability.Kernel.Category, `Mathlib.CategoryTheory), -- For the category of s-finite/Markov kernels
  (`Mathlib.RepresentationTheory.Continuous, `Mathlib.Topology), -- For continuous representations
  (`Mathlib.RepresentationTheory.Homological.ContCohomology, `Mathlib.Topology),  -- For continuous cohomology
  -- TODO: think about the role of Analysis and Algebra, and perhaps further separation
  (`Mathlib.Algebra.Order.Archimedean.Real, `Mathlib.Analysis),
  (`Mathlib.Algebra.Star.CHSH, `Mathlib.Analysis),
  (`Mathlib.Algebra.Order.Star.Real, `Mathlib.Analysis),
  (`Mathlib.Topology.ContinuousMap.ContinuousSqrt, `Mathlib.Algebra.Order),
  (`Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus, `Mathlib.Algebra.Order),
  (`Mathlib.Algebra.Order.Ring.StandardPart, `Mathlib.Analysis),
]

end DirectoryDependency

open DirectoryDependency

/-- Check if one of the imports `imports` to `mainModule` is forbidden by `forbiddenImportDirs`;
if so, return an error describing how the import transitively arises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49387b8d8005fcfedca09974e3cf6cc842a710bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
