# quotientSpanCXSubCXSubCAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:395592f155076e13068979d5c80e536594f925b9d5fd9b88d0a5b7f4cd862578",
  "kind": "def",
  "lexical_name": "quotientSpanCXSubCXSubCAlgEquiv",
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
  "slug": "quotientspancxsubcxsubcalgequiv--d276ca1fd78ad971abc6230c",
  "source": {
    "blob": "f58d7f2b66cc5efc571b71e66cf671f91014868f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d276ca1fd78ad971abc6230cead1f3e2b21eec4f024638c2a6fe3334d62e4e90",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:395592f155076e13068979d5c80e536594f925b9d5fd9b88d0a5b7f4cd862578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientSpanCXSubCXSubCAlgEquiv {x : R} {y : R[X]} :
    @AlgEquiv R (R[X][X] ⧸ (Ideal.span {C (X - C x), X - C y} : Ideal <| R[X][X])) R _ _ _
      (Ideal.Quotient.algebra R) _ :=
((quotientSpanCXSubCAlgEquiv (X - C x) y).restrictScalars R).trans <| quotientSpanXSubCAlgEquiv x

end Polynomial

namespace Ideal

noncomputable section

open Polynomial

variable {R : Type*} [CommRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f58d7f2b66cc5efc571b71e66cf671f91014868f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
