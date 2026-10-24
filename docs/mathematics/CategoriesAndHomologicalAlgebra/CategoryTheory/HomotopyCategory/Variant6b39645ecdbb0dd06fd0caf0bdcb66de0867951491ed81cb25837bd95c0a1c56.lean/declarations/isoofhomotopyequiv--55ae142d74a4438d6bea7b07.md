# isoOfHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2868f5e22eee19097ebb4892143aa3375d468f4e4069a9210d99f75d7f8e3e72",
  "kind": "def",
  "lexical_name": "isoOfHomotopyEquiv",
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
  "slug": "isoofhomotopyequiv--55ae142d74a4438d6bea7b07",
  "source": {
    "blob": "6de3e4c7270c24a477a9ed12a256bc40b5585d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55ae142d74a4438d6bea7b073fb977afaab6b731435de51accb024081faa3348",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2868f5e22eee19097ebb4892143aa3375d468f4e4069a9210d99f75d7f8e3e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfHomotopyEquiv {C D : HomologicalComplex V c} (f : HomotopyEquiv C D) :
    (quotient V c).obj C ≅ (quotient V c).obj D where
  hom := (quotient V c).map f.hom
  inv := (quotient V c).map f.inv
  hom_inv_id := by
    rw [← (quotient V c).map_comp, ← (quotient V c).map_id]
    exact eq_of_homotopy _ _ f.homotopyHomInvId
  inv_hom_id := by
    rw [← (quotient V c).map_comp, ← (quotient V c).map_id]
    exact eq_of_homotopy _ _ f.homotopyInvHomId
#align homotopy_category.iso_of_homotopy_equiv HomotopyCategory.isoOfHomotopyEquiv

/-- If two complexes become isomorphic in the homotopy category,
  then they were homotopy equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de3e4c7270c24a477a9ed12a256bc40b5585d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
