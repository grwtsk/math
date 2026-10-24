# toAut_injective_of_non_trivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b0bffb5-efb2-7ab7-4913-fe9431fdafff",
  "kind": "lemma",
  "lexical_name": "toAut_injective_of_non_trivial",
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
  "slug": "toaut-injective-of-non-trivial--469f5c860ded4f1d6de38727",
  "source": {
    "blob": "4427f23db89bac18eeb6fe13501d962b290fba3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469f5c860ded4f1d6de3872773b299a73afee85850f55ad893f19c371f6114ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b0bffb5-efb2-7ab7-4913-fe9431fdafff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAut_injective_of_non_trivial (h : ∀ (g : G), (∀ (X : C) (x : F.obj X), g • x = x) → g = 1) :
    Function.Injective (toAut F G) := by
  rw [← MonoidHom.ker_eq_bot_iff, eq_bot_iff]
  intro g (hg : toAut F G g = 1)
  refine h g (fun X x ↦ ?_)
  have : (toAut F G g).hom.app X = 𝟙 (F.obj X) := by
    rw [hg]
    rfl
  rw [← toAut_hom_app_apply, this, FintypeCat.id_apply]

variable [GaloisCategory C] [FiberFunctor F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4427f23db89bac18eeb6fe13501d962b290fba3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
