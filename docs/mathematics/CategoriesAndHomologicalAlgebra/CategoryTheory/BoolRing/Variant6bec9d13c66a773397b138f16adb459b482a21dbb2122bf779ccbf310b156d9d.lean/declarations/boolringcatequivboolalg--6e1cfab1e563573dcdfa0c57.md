# boolRingCatEquivBoolAlg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:425055dee69c25e848f734cc1fe417236f3e286776d0b98be9b6baf32a78f344",
  "kind": "def",
  "lexical_name": "boolRingCatEquivBoolAlg",
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
  "slug": "boolringcatequivboolalg--6e1cfab1e563573dcdfa0c57",
  "source": {
    "blob": "4cf42aa88f9644d20b427f34389953a031d77759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e1cfab1e563573dcdfa0c571424f37f6e2733811f2663c95c8881548fc67315",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:425055dee69c25e848f734cc1fe417236f3e286776d0b98be9b6baf32a78f344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolRingCatEquivBoolAlg : BoolRing ≌ BoolAlg where
  functor := forget₂ BoolRing BoolAlg
  inverse := forget₂ BoolAlg BoolRing
  unitIso := NatIso.ofComponents (fun X => BoolRing.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {_ _} _ => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlg.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {_ _} _ => rfl

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `BoolRing.of X` as `↧X`. -/
@[app_delab BoolRing.of]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf42aa88f9644d20b427f34389953a031d77759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
