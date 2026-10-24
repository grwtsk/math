# pullbackObjIso_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53843117-1ca5-7b60-1477-6de44cdb76b7",
  "kind": "lemma",
  "lexical_name": "pullbackObjIso_hom_naturality",
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
  "slug": "pullbackobjiso-hom-naturality--6096d74b9cd5cac5a143feee",
  "source": {
    "blob": "5444303c843083eca5e6b9d5002114d95c8343b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 388,
    "path": "GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6096d74b9cd5cac5a143feeec725f64df4bfcb38a97ecd4698bb948ac859637d",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53843117-1ca5-7b60-1477-6de44cdb76b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackObjIso_hom_naturality {X Y : TopCat.{v}} {f : X ⟶ Y} (hf : IsOpenMap f)
   {ℱ 𝒢 : Y.Presheaf C} (u : ℱ ⟶ 𝒢) :
   (pullback C f).map u ≫ (hf.pullbackObjIso 𝒢).hom =
   (hf.pullbackObjIso ℱ).hom ≫ Functor.whiskerLeft hf.functor.op u := by
  ext U
  dsimp [pullbackObjIso, pullbackObjObjOfImageOpen]
  refine ((Opens.map f).op.isPointwiseLeftKanExtensionLeftKanExtensionUnit ℱ (op U)).hom_ext
    (fun j ↦ ?_)
  have eq : ((LeftExtension.mk ((Opens.map f).op.leftKanExtension ℱ)
      ((Opens.map f).op.leftKanExtensionUnit ℱ)).coconeAt (op U)).ι.app j
      ≫ ((pullback C f).map u).app (op U) = NatTrans.app (Functor.whiskerLeft _ u) j ≫
      ((LeftExtension.mk ((Opens.map f).op.leftKanExtension 𝒢)
      ((Opens.map f).op.leftKanExtensionUnit 𝒢)).coconeAt (op U)).ι.app j := by
    dsimp [pullback]
    simp only [Category.assoc, NatTrans.naturality]
    have := NatTrans.congr_app ((Opens.map f).op.lanUnit.naturality u) j.left
    dsimp [lanUnit] at this
    rw [reassoc_of% this]
    rfl
  rw [Limits.IsColimit.comp_coconePointUniqueUpToIso_hom_assoc, reassoc_of% eq,
    Limits.IsColimit.comp_coconePointUniqueUpToIso_hom]
  dsimp
  rw [← u.naturality]
  rfl

/--
If `f : X ⟶ Y`, this is the isomorphism between the pullback functor by `f` and the
"naive" pullback given by composing presheaves with the functor `(Open X)ᵒᵖ ⥤ (Open Y)ᵒᵖ`
induced by `f`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5444303c843083eca5e6b9d5002114d95c8343b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
