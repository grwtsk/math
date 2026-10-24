# mkInitialOfLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:672837a863f1d6fb584c3d3f927c593b4a17bf70408c09c821598ed9e31f2818",
  "kind": "def",
  "lexical_name": "mkInitialOfLeftAdjoint",
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
  "slug": "mkinitialofleftadjoint--1e10c00ed495cc944abcf65d",
  "source": {
    "blob": "c93ebf7292d36a2a288fa9caa4e8c05514bd6147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e10c00ed495cc944abcf65df2306565d1b0d17e4409e75da5b51407d179a1a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:672837a863f1d6fb584c3d3f927c593b4a17bf70408c09c821598ed9e31f2818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInitialOfLeftAdjoint (h : F ⊣ G) (A : C) :
    IsInitial (StructuredArrow.mk (h.unit.app A) : StructuredArrow A G)
    where
  desc B := StructuredArrow.homMk ((h.homEquiv _ _).symm B.pt.hom)
  uniq s m _ := by
    apply StructuredArrow.ext
    dsimp
    rw [Equiv.eq_symm_apply, Adjunction.homEquiv_unit]
    apply StructuredArrow.w m
#align category_theory.mk_initial_of_left_adjoint CategoryTheory.mkInitialOfLeftAdjoint

/-- Given a right adjoint to `F`, we can construct a terminal object in each costructured arrow
category on `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93ebf7292d36a2a288fa9caa4e8c05514bd6147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
