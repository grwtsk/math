# IsZLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c86c11f9685ed2bd2fbe9ecd02613cc9e3d6bfbff7c4baf5417b4d9fdad98fc4",
  "kind": "class",
  "lexical_name": "IsZLattice",
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
  "slug": "iszlattice--febff8d518c11112337cb1ea",
  "source": {
    "blob": "41ff06a60fc284974a394c63423af82e7deb545b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 431,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:febff8d518c11112337cb1ea45e6e4fde46b5177203a11916d875322ac953dd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c86c11f9685ed2bd2fbe9ecd02613cc9e3d6bfbff7c4baf5417b4d9fdad98fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsZLattice (K : Type*) [NormedField K] {E : Type*} [NormedAddCommGroup E] [NormedSpace K E]
    (L : Submodule ℤ E) [DiscreteTopology L] : Prop where
  /-- `L` spans the full space `E` over `K`. -/
  span_top : span K (L : Set E) = ⊤

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ff06a60fc284974a394c63423af82e7deb545b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
