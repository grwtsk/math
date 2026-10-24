# _root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.LinearMap.BilinForm.toQuadraticMap_isOrtho

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6738b50-ed94-58aa-e1f3-bdff6eb71990",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.LinearMap.BilinForm.toQuadraticMap_isOrtho",
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
  "slug": "root-grwtsk-algebra-linearalgebra-quadraticmap-variantead3045493ef08f9f2--957556ccfbad9d438c58493e",
  "source": {
    "blob": "1881d5b2229c291f9a8dbc614ee29bf6195a1265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1058,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957556ccfbad9d438c58493e39f935737c8ed51b9f991c7ca2790ab621848938",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6738b50-ed94-58aa-e1f3-bdff6eb71990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1058–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.LinearMap.BilinForm.toQuadraticMap_isOrtho [IsCancelAdd R]
    [NoZeroDivisors R] [CharZero R] {B : BilinMap R M R} {x y : M} (h : B.IsSymm) :
    B.toQuadraticMap.IsOrtho x y ↔ B.IsOrtho x y := by
  letI : AddCancelMonoid R := { ‹IsCancelAdd R›, (inferInstanceAs <| AddCommMonoid R) with }
  simp_rw [isOrtho_def, LinearMap.isOrtho_def, B.toQuadraticMap_apply, map_add,
    LinearMap.add_apply, add_comm _ (B y y), add_add_add_comm _ _ (B y y), add_comm (B y y)]
  rw [add_eq_left (a := B x x + B y y), ← h, RingHom.id_apply, add_self_eq_zero]

end CommSemiring

section CommRing
variable [CommRing R] [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
  {Q : QuadraticMap R M N}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean#L1058).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1881d5b2229c291f9a8dbc614ee29bf6195a1265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
