# id_hComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b99efd-5507-6f14-6008-3e3b86b254bc",
  "kind": "theorem",
  "lexical_name": "id_hComp",
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
  "slug": "id-hcomp--7f4aa51ac012ba5d3f7deda9",
  "source": {
    "blob": "5bff18b068001377b400ae63be55d31b184a3e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 288,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatEnriched/Variant1cfd34d64ce4971bb8cecef91138e9fd9de41f05955bba2b96c61f27a09cf902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f4aa51ac012ba5d3f7deda9414235016db16eeed6f78505e97ddeb6448e8a6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatEnriched/Variant1cfd34d64ce4971bb8cecef91138e9fd9de41f05955bba2b96c61f27a09cf902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b99efd-5507-6f14-6008-3e3b86b254bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem id_hComp {a b : CatEnrichedOrdinary C} {f f' : a ⟶ b} (η : f ⟶ f') :
    hComp (𝟙 (𝟙 a)) η = eqToHom (id_comp f) ≫ η ≫ eqToHom (id_comp f').symm := by
  ext
  simp only [hComp, Hom.base_id, base_mk, ← heq_eq_eq, eqToHom_comp_heq_iff, comp_eqToHom_heq_iff]
  rw [homEquiv_id]; simp [CatEnriched.id_hComp_heq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatEnriched/Variant1cfd34d64ce4971bb8cecef91138e9fd9de41f05955bba2b96c61f27a09cf902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatEnriched/Variant1cfd34d64ce4971bb8cecef91138e9fd9de41f05955bba2b96c61f27a09cf902.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bff18b068001377b400ae63be55d31b184a3e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
