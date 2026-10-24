# piComparison_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2077772e-e17e-ed7b-3b91-46708abeff9e",
  "kind": "theorem",
  "lexical_name": "piComparison_fac",
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
  "slug": "picomparison-fac--8ca16ab97da8ef66f250d4d0",
  "source": {
    "blob": "aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca16ab97da8ef66f250d4d0bfa14e481710da218e1bc5b5b8c2f41dbe6165d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2077772e-e17e-ed7b-3b91-46708abeff9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piComparison_fac :
    have : HasCoproduct X := ⟨⟨c, hc⟩⟩
    piComparison F (fun x ↦ op (X x)) = F.map (opCoproductIsoProduct' hc (productIsProduct _)).inv ≫
    Equalizer.Presieve.Arrows.forkMap F X c.inj := by
  have : HasCoproduct X := ⟨⟨c, hc⟩⟩
  dsimp only [Equalizer.Presieve.Arrows.forkMap]
  have h : Pi.lift (fun i ↦ F.map (c.inj i).op) =
      F.map (Pi.lift (fun i ↦ (c.inj i).op)) ≫ piComparison F _ := by simp
  rw [h, ← Category.assoc, ← Functor.map_comp]
  have hh : Pi.lift (fun i ↦ (c.inj i).op) = (productIsProduct (op <| X ·)).lift c.op := by
    simp [Pi.lift, productIsProduct]
  rw [hh, ← desc_op_comp_opCoproductIsoProduct'_hom hc]
  simp

variable [(ofArrows X c.inj).hasPullbacks]

include hc in
/--
If `F` preserves a particular product, then it `IsSheafFor` the corresponding presieve of arrows.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
