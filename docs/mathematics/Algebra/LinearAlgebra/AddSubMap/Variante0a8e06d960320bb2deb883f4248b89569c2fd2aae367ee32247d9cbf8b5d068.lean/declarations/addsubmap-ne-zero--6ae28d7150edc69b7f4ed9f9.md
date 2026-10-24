# addSubMap_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e6961f4-9e7e-bf36-04e4-74ab7d5fdc0b",
  "kind": "lemma",
  "lexical_name": "addSubMap_ne_zero",
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
  "slug": "addsubmap-ne-zero--6ae28d7150edc69b7f4ed9f9",
  "source": {
    "blob": "52d6468bbf14426c720262351afeceee85ba4274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae28d7150edc69b7f4ed9f940ee66287d4ac70724d7329c7a778d8cbb306ee4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e6961f4-9e7e-bf36-04e4-74ab7d5fdc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addSubMap_ne_zero [IsReduced R] {x : Fin 3 → R} (hx : x ≠ 0) :
    (addSubMap W · |>.eval x) ≠ 0 := by
  contrapose! hx
  ext i
  simpa [congrFun hx] using (addSubMapCoeff_condition W x i).symm

end WeierstrassCurve

/-!
### The symmetric square of the x-coordinate map

We define `Weierstrass.Affine.Point.sym2x`, which sends a pair `P`, `Q` of nonsingular points in
affine coordinates on a Weierstrass curve to a triple projectively equal to
`(x(P)*x(Q), x(P)+x(Q), 1)`, and provide some API.
-/

namespace WeierstrassCurve.Affine.Point

variable {R : Type*} [CommRing R] {W' : Affine R}

/-- This map sends a pair `P`, `Q` of nonsingular points in affine coordinates on `W`
to a triple projectively equivalent to `![x(P) * x(Q), x(P) + x(Q), 1]`.

In more geometric terms, this is the map `Sym² W → Sym² ℙ¹ ≃ ℙ²` induced by `x : W → ℙ¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d6468bbf14426c720262351afeceee85ba4274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
