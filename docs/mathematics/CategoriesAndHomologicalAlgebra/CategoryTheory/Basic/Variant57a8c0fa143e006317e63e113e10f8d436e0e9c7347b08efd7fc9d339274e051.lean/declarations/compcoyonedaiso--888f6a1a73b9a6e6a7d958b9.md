# compCoyonedaIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc87464b2bc270660a2cf2113d122d237f723109a8ffa7a3b83d9b0d0e9d1c3e",
  "kind": "def",
  "lexical_name": "compCoyonedaIso",
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
  "slug": "compcoyonedaiso--888f6a1a73b9a6e6a7d958b9",
  "source": {
    "blob": "5b3f3722f61de6ccdddab966badc9b281b61639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 496,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:888f6a1a73b9a6e6a7d958b9074924245df585d445afdae98967bcd5097395bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc87464b2bc270660a2cf2113d122d237f723109a8ffa7a3b83d9b0d0e9d1c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compCoyonedaIso {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₁} D]
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) :
    F.op ⋙ coyoneda ≅ coyoneda ⋙ (whiskeringLeft _ _ _).obj G :=
  NatIso.ofComponents fun X => NatIso.ofComponents fun Y => (adj.homEquiv X.unop Y).toIso

section

variable {E : Type u₃} [ℰ : Category.{v₃} E] {H : D ⥤ E} {I : E ⥤ D}
  (adj₁ : F ⊣ G) (adj₂ : H ⊣ I)

/-- Composition of adjunctions. -/
@[simps! -isSimp unit counit, stacks 0DV0]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3f3722f61de6ccdddab966badc9b281b61639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
