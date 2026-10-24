# isometryEquivWeightedSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36ada8cc848bddb2fcae69d8b868064128167908a945993b356ef4be8662c3bd",
  "kind": "def",
  "lexical_name": "isometryEquivWeightedSumSquares",
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
  "slug": "isometryequivweightedsumsquares--12c933e31e0b0164e0d0eac0",
  "source": {
    "blob": "2f81a870daed622215ed447f5aa9908d67150337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12c933e31e0b0164e0d0eac03801081cd9bd755dc6542431ba3ec2eda2ca152d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36ada8cc848bddb2fcae69d8b868064128167908a945993b356ef4be8662c3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivWeightedSumSquares (Q : QuadraticForm K V)
    (v : Basis (Fin (Module.finrank K V)) K V)
    (hv₁ : (associated (R := K) Q).IsOrthoᵢ v) :
    Q.IsometryEquiv (weightedSumSquares K fun i => Q (v i)) := by
  let iso := Q.isometryEquivBasisRepr v
  refine ⟨iso, fun m => ?_⟩
  convert! iso.map_app m
  rw [basisRepr_eq_of_iIsOrtho _ _ hv₁]

variable [FiniteDimensional K V]

open LinearMap.BilinForm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f81a870daed622215ed447f5aa9908d67150337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
