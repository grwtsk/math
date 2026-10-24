# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4fd657b19dd663e8bb7ebf9cffba7718d88743c8d98c5d83acdeac16185784c",
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
  "slug": "instance--b55bdbc10092d67288eabec3",
  "source": {
    "blob": "739da0f7b4d9b6d74fb7332f06bf4aa1843f6c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Dense/Variant1c3d7e9a0e59e5abe9c2a4b3201efdc02f6b1d2098ad8184ac46dc371d5e2c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b55bdbc10092d67288eabec319c1bcc134c4b5be7415423b9d61ef9eef20f9d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Dense/Variant1c3d7e9a0e59e5abe9c2a4b3201efdc02f6b1d2098ad8184ac46dc371d5e2c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4fd657b19dd663e8bb7ebf9cffba7718d88743c8d98c5d83acdeac16185784c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsCardinalAccessibleCategory C κ] (X : C) :
    IsCardinalFiltered (CostructuredArrow (isCardinalPresentable C κ).ι X) κ := by
  obtain ⟨J, _, _, ⟨p⟩⟩ :=
    (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape X
  exact IsCardinalFiltered.of_final p.toCostructuredArrow κ

end IsCardinalAccessibleCategory

namespace IsFinitelyAccessibleCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Dense/Variant1c3d7e9a0e59e5abe9c2a4b3201efdc02f6b1d2098ad8184ac46dc371d5e2c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Dense/Variant1c3d7e9a0e59e5abe9c2a4b3201efdc02f6b1d2098ad8184ac46dc371d5e2c34.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `739da0f7b4d9b6d74fb7332f06bf4aa1843f6c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
