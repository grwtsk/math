# costructuredArrowOpEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc5c39320ada7ff02c90c138d3678e943165cc62ba2e01936f48cbaf329b8e72",
  "kind": "def",
  "lexical_name": "costructuredArrowOpEquivalence",
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
  "slug": "costructuredarrowopequivalence--35153dd9af55ae967c5642ca",
  "source": {
    "blob": "75b1bd9db55f357d2b9a34c933ad677f39d7314d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 864,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35153dd9af55ae967c5642ca22a151d9eacb6bc2b8b5f106aedf6670c2eb1e46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc5c39320ada7ff02c90c138d3678e943165cc62ba2e01936f48cbaf329b8e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 864–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowOpEquivalence (F : C ⥤ D) (d : D) :
    (CostructuredArrow F d)ᵒᵖ ≌ StructuredArrow (op d) F.op where
  functor := CostructuredArrow.toStructuredArrow F d
  inverse := (StructuredArrow.toCostructuredArrow' F d).rightOp
  unitIso := NatIso.ofComponents
      (fun X => (CostructuredArrow.isoMk (Iso.refl _)).op)
      fun {X Y} f => Quiver.Hom.unop_inj <| by
        apply CommaMorphism.ext <;>
          dsimp [CostructuredArrow.isoMk, CostructuredArrow.homMk, Comma.isoMk]; simp
  counitIso := NatIso.ofComponents
      (fun X => StructuredArrow.isoMk (Iso.refl _))
      fun {X Y} f => by
        apply CommaMorphism.ext <;>
          dsimp [StructuredArrow.isoMk, StructuredArrow.homMk, Comma.isoMk]; simp

section Pre

variable {E : Type u₃} [Category.{v₃} E] (F : C ⥤ D) {G : D ⥤ E} {e : E}

/-- The functor establishing the equivalence `StructuredArrow.preEquivalence`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean#L864).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b1bd9db55f357d2b9a34c933ad677f39d7314d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
