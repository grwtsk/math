# nonempty_of_colim_preservesLimitsOfShapeFinZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d6c54f8-5133-2514-7f4a-46bd1654174c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d53869-4ced-aa2f-31da-f1724d0f9d3f",
  "kind": "lemma",
  "lexical_name": "nonempty_of_colim_preservesLimitsOfShapeFinZero",
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
  "slug": "nonempty-of-colim-preserveslimitsofshapefinzero--8d75356e8d7e3f38ecac3ec4",
  "source": {
    "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 249,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d75356e8d7e3f38ecac3ec4e7d74cfcb6a55b83240979df2f12fd57592ac07f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d53869-4ced-aa2f-31da-f1724d0f9d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_of_colim_preservesLimitsOfShapeFinZero
    [PreservesLimitsOfShape (Discrete (Fin 0)) (colim : (C ⥤ Type u) ⥤ Type u)] :
    Nonempty C := by
  suffices connected : IsConnected C by infer_instance
  rw [Types.isConnected_iff_colimit_constPUnitFunctor_iso_pUnit]
  constructor
  haveI : PreservesLimitsOfShape (Discrete PEmpty) (colim : (C ⥤ _) ⥤ Type u) :=
    preservesLimitsOfShape_of_equiv (Discrete.equivalence finZeroEquiv') _
  apply HasColimit.isoOfNatIso (_ : Types.constPUnitFunctor C ≅ (⊤_ (C ⥤ Type u))) |>.trans
  · apply PreservesTerminal.iso colim |>.trans
    exact Types.terminalIso
  · apply_rules [IsTerminal.uniqueUpToIso _ terminalIsTerminal, evaluationJointlyReflectsLimits]
    intro _
    exact isLimitChangeEmptyCone _ Types.isTerminalPUnit _ <| Iso.refl _

/-- If the `colim` functor `(C ⥤ Type) ⥤ Type` preserves finite products, then `C` is sifted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf29363440320acf8fe8716f10609fa136dac38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
