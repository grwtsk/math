# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d44a537fd820d464a36cc6a11a755fcd361ddfc4f667e3a62c5140b34ce5ef49",
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
  "slug": "instance--c93f6bd1d232c8c8d8fde0a8",
  "source": {
    "blob": "2bdad2c4e033bef7a7d26b7be571a25882426555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant950c4cfb543cf07382fa8fddd9b51e007a9ad1d6b7a638710b4d964ee3a35e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c93f6bd1d232c8c8d8fde0a8b0775d51274e4dd0dfdd1984fa108efb8b7c3f6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant950c4cfb543cf07382fa8fddd9b51e007a9ad1d6b7a638710b4d964ee3a35e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d44a537fd820d464a36cc6a11a755fcd361ddfc4f667e3a62c5140b34ce5ef49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [P.IsClosedUnderFiniteCoproducts] (J : Type*) [Finite J] :
    P.IsClosedUnderColimitsOfShape (Discrete J) := by
  obtain ⟨n, ⟨e⟩⟩ := Finite.exists_equiv_fin J
  have : P.IsClosedUnderColimitsOfShape (Discrete (Fin n)) :=
    IsClosedUnderFiniteCoproducts.isClosedUnderColimitsOfShape _
  exact IsClosedUnderColimitsOfShape.of_equivalence (Discrete.equivalence e.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant950c4cfb543cf07382fa8fddd9b51e007a9ad1d6b7a638710b4d964ee3a35e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant950c4cfb543cf07382fa8fddd9b51e007a9ad1d6b7a638710b4d964ee3a35e2d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdad2c4e033bef7a7d26b7be571a25882426555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
