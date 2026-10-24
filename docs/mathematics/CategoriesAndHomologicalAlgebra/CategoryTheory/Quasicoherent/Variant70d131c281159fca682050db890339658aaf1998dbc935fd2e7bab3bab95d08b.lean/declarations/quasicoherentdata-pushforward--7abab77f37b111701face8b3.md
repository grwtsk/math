# QuasicoherentData.pushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:506a03848ea86ec92f7e11d5a28dc95677c6f57f302ea2b0ad21ab1d0d8a9672",
  "kind": "def",
  "lexical_name": "QuasicoherentData.pushforward",
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
  "slug": "quasicoherentdata-pushforward--7abab77f37b111701face8b3",
  "source": {
    "blob": "31970a43c74f2305849a8e268639116d24d6d885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 312,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7abab77f37b111701face8b3ed09339155059d804dc7e3025dac049f61cb4012",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:506a03848ea86ec92f7e11d5a28dc95677c6f57f302ea2b0ad21ab1d0d8a9672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def QuasicoherentData.pushforward (η : (pushforward φ).obj (unit R) ≅ unit S)
    [∀ (X : D), (Over.post G).IsContinuous (K.over X) (J.over _)]
    (h : ∀ (X : D) (Y : C) (f : G.obj X ⟶ Y),
      PreservesColimitsOfSize.{u, u} <|
      pushforward.{u} (R := (R.over Y)) (F := Over.post (X := X) G ⋙ Over.map f)
        (((Over.forget X).sheafPushforwardContinuous RingCat.{u} (K.over X) K).map φ))
    {M : SheafOfModules.{u} R} (P : M.QuasicoherentData) :
    QuasicoherentData ((pushforward φ).obj M) where
  I := Σ (X : D) (i : P.I), G.obj X ⟶ P.X i
  X i := i.1
  coversTop Y := by
    refine K.superset_covering ?_ <| G.cover_lift K _ (P.coversTop (G.obj Y))
    intro Z g ⟨i, ⟨v⟩⟩
    exact ⟨⟨Z, i, v⟩, ⟨𝟙 _⟩⟩
  presentation i := by
    letI overS : SheafOfModules.{u} S ⥤ SheafOfModules.{u} (S.over i.1) :=
      SheafOfModules.pushforward (𝟙 _)
    letI G' := Over.post (X := i.1) G ⋙ Over.map i.2.2
    letI ψ : S.over i.1 ⟶
        (G'.sheafPushforwardContinuous RingCat.{u} (K.over i.1) (J.over (P.X i.2.1))).obj
          (R.over (P.X i.2.1)) :=
      ((Over.forget i.1).sheafPushforwardContinuous RingCat.{u} (K.over i.1) K).map φ
    letI e : (SheafOfModules.pushforward ψ).obj (unit (R.over (P.X i.snd.fst))) ≅
      unit (S.over i.fst) := overS.mapIso η
    haveI : PreservesColimitsOfSize.{u, u, _} (SheafOfModules.pushforward ψ) := h _ _ _
    exact (P.presentation i.2.1).map (SheafOfModules.pushforward ψ) e.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31970a43c74f2305849a8e268639116d24d6d885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
