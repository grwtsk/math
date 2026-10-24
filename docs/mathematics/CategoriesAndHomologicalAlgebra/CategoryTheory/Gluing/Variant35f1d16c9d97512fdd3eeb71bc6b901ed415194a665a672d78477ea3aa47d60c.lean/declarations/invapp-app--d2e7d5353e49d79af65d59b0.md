# ιInvAppπApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:894a4dcab041f856befa8cc9eaab3b2123e62c2b4f71e9222845767f91072837",
  "kind": "def",
  "lexical_name": "ιInvAppπApp",
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
  "slug": "invapp-app--d2e7d5353e49d79af65d59b0",
  "source": {
    "blob": "4e6d1d416ea9780fe285b3c8057f66c02528deb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e7d5353e49d79af65d59b092b64467cbdcb1b7260e81a9444ca1f9dc8cfdad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:894a4dcab041f856befa8cc9eaab3b2123e62c2b4f71e9222845767f91072837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ιInvAppπApp {i : D.J} (U : Opens (D.U i).carrier) (j) :
    (𝖣.U i).presheaf.obj (op U) ⟶ (D.diagramOverOpen U).obj (op j) := by
  rcases j with (⟨j, k⟩ | j)
  · refine
      D.opensImagePreimageMap i j U ≫ (D.f j k).c.app _ ≫ (D.V (j, k)).presheaf.map (eqToHom ?_)
    rw [Functor.op_obj]
    congr 1; ext1
    dsimp only [Functor.op_obj, Opens.map_coe, unop_op, IsOpenMap.coe_functor_obj]
    rw [Set.preimage_preimage]
    change (D.f j k ≫ 𝖣.ι j).base ⁻¹' _ = _
    -- Porting note: used to be `congr 3`
    suffices D.f j k ≫ D.ι j = colimit.ι D.diagram.multispan (WalkingMultispan.left (j, k)) by
      rw [this]
      rfl
    exact colimit.w 𝖣.diagram.multispan (WalkingMultispan.Hom.fst (j, k))
  · exact D.opensImagePreimageMap i j U

set_option maxHeartbeats 600000 in
-- Porting note: time out started in `erw [... congr_app (pullbackSymmetry_hom_comp_snd _ _)]` and
-- the last congr has a very difficult `rfl : eqToHom _ ≫ eqToHom _ ≫ ... = eqToHom ... `
/-- (Implementation) The natural map `Γ(𝒪_{U_i}, U) ⟶ Γ(𝒪_X, 𝖣.ι i '' U)`.
This forms the inverse of `(𝖣.ι i).c.app (op U)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d1d416ea9780fe285b3c8057f66c02528deb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
