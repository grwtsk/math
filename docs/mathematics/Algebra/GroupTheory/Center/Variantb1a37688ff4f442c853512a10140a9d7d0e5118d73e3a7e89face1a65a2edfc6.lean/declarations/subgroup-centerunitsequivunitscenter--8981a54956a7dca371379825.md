# Subgroup.centerUnitsEquivUnitsCenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afcebf020ab93dd3817bf1247946420ab90a63dce7d681a5f58b4045f4356469",
  "kind": "def",
  "lexical_name": "Subgroup.centerUnitsEquivUnitsCenter",
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
  "slug": "subgroup-centerunitsequivunitscenter--8981a54956a7dca371379825",
  "source": {
    "blob": "9f779ac4c6489212cd4ea780c5089f8f4849133e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 17,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8981a54956a7dca3713798257a33b2054757ccbaebb440c0a2f3404c9d293150",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afcebf020ab93dd3817bf1247946420ab90a63dce7d681a5f58b4045f4356469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subgroup.centerUnitsEquivUnitsCenter (G₀ : Type*) [GroupWithZero G₀] :
    center G₀ˣ ≃* (Submonoid.center G₀)ˣ where
  toFun := MonoidHom.toHomUnits
    { toFun u := by
        refine ⟨(u : G₀ˣ), Submonoid.mem_center_iff.mpr fun r ↦ ?_⟩
        obtain rfl | hr := eq_or_ne r 0
        · rw [mul_zero, zero_mul]
        · exact congrArg Units.val <| (u.2.comm <| Units.mk0 r hr).symm
      map_one' := rfl
      map_mul' _ _ := rfl }
  invFun u := unitsCenterToCenterUnits G₀ u
  left_inv _ := by ext; rfl
  right_inv _ := by ext; rfl
  map_mul' := map_mul _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f779ac4c6489212cd4ea780c5089f8f4849133e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
