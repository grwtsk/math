# pullbackConeEquivBinaryFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2660f94d53fce55f06c460693801244a000d17f146dad0c1182f0de3bfc298e7",
  "kind": "def",
  "lexical_name": "pullbackConeEquivBinaryFan",
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
  "slug": "pullbackconeequivbinaryfan--f33a3d8231bdb10808bc5bb1",
  "source": {
    "blob": "7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33a3d8231bdb10808bc5bb14724c7adea9a3ed1b1230c51dc3f4cca0c27284b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2660f94d53fce55f06c460693801244a000d17f146dad0c1182f0de3bfc298e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeEquivBinaryFan : PullbackCone f g ≌ BinaryFan (Over.mk f) (.mk g) where
  functor.obj c := .mk (Over.homMk (U := .mk (c.fst ≫ f)) (V := .mk f) c.fst rfl)
      (Over.homMk (U := .mk (c.fst ≫ f)) (V := .mk g) c.snd c.condition.symm)
  functor.map {c₁ c₂} a := { hom := Over.homMk a.hom, w := by rintro (_ | _) <;> cat_disch }
  inverse.obj c := PullbackCone.mk c.fst.left c.snd.left (c.fst.w.trans c.snd.w.symm)
  inverse.map {c₁ c₂} a := {
    hom := a.hom.left
    w := by rintro (_ | _ | _) <;> simp [← Over.comp_left_assoc, ← Over.comp_left]
  }
  unitIso := NatIso.ofComponents (fun c ↦ c.eta) (by intros; ext; simp)
  counitIso := NatIso.ofComponents (fun X ↦ BinaryFan.ext (Over.isoMk (Iso.refl _)
    (by simpa using X.fst.w.symm)) (by ext; simp) (by ext; simp))
    (by intros; ext; simp [BinaryFan.ext])
  functor_unitIso_comp c := by ext; simp [BinaryFan.ext]

set_option backward.isDefEq.respectTransparency false in
/-- A binary fan in `Over X` is a limit if its corresponding pullback cone to `X` is a limit. -/
-- `IsLimit.ofConeEquiv` isn't used here because the lift it defines is `𝟙 _ ≫ pullback.lift`.
-- TODO: Define `IsLimit.copy`?
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
