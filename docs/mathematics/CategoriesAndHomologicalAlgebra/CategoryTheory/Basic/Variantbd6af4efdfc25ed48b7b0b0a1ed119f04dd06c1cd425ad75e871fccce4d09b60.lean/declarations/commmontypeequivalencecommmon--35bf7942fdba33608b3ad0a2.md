# commMonTypeEquivalenceCommMon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9579059b0c578b3945ee71bed392da61a059b7157213c6a8f72a0a1d2d460b40",
  "kind": "def",
  "lexical_name": "commMonTypeEquivalenceCommMon",
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
  "slug": "commmontypeequivalencecommmon--35bf7942fdba33608b3ad0a2",
  "source": {
    "blob": "67dbc639786825e6178af5bcc4400c2d4683cef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35bf7942fdba33608b3ad0a2c48ac8e457afd72eb0b58a77dad0f8716da05089",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9579059b0c578b3945ee71bed392da61a059b7157213c6a8f72a0a1d2d460b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commMonTypeEquivalenceCommMon : CommMon (Type u) ≌ CommMonCat.{u} where
  functor := functor
  inverse := inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toCommMonCatIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalences `Mon (Type u) ≌ MonCat.{u}` and `CommMon (Type u) ≌ CommMonCat.{u}`
are naturally compatible with the forgetful functors to `MonCat` and `Mon (Type u)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dbc639786825e6178af5bcc4400c2d4683cef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
