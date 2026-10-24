# liftHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba933948e4e678481d85a58ba7430af6d49ebf775ed0b531c904ed5d899783f0",
  "kind": "def",
  "lexical_name": "liftHomotopy",
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
  "slug": "lifthomotopy--08ddf364575cff8a3e06bdfc",
  "source": {
    "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 532,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08ddf364575cff8a3e06bdfc6772100fc119ad9404c751126ace4b37b921cb51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba933948e4e678481d85a58ba7430af6d49ebf775ed0b531c904ed5d899783f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftHomotopy {K : CochainComplex C ℤ} (f₁ f₂ : K ⟶ mappingCone φ)
    (α : Cochain K F 0) (β : Cochain K G (-1))
    (h₁ : (Cochain.ofHom f₁).comp (fst φ).1 (zero_add 1) =
      -δ 0 1 α + (Cochain.ofHom f₂).comp (fst φ).1 (zero_add 1))
    (h₂ : (Cochain.ofHom f₁).comp (snd φ) (zero_add 0) =
      δ (-1) 0 β + α.comp (Cochain.ofHom φ) (zero_add 0) +
        (Cochain.ofHom f₂).comp (snd φ) (zero_add 0)) :
    Homotopy f₁ f₂ :=
  (Cochain.equivHomotopy f₁ f₂).symm ⟨liftCochain φ α β (neg_add_cancel 1), by
    simp [δ_liftCochain _ _ _ _ _ (zero_add 1), ext_cochain_to_iff _ _ _ (zero_add 1), h₁, h₂]⟩

section

variable {K L : CochainComplex C ℤ} {n m : ℤ}
  (α : Cochain K F m) (β : Cochain K G n) {n' m' : ℤ} (α' : Cochain F L m') (β' : Cochain G L n')
  (h : n + 1 = m) (h' : m' + 1 = n') (p : ℤ) (hp : n + n' = p)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
