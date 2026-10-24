# fromCommLeftInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c14158bddc6b018e84dd95782090b5bf989de7338a8792b4f422b6cf9b9db6c",
  "kind": "def",
  "lexical_name": "fromCommLeftInv",
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
  "slug": "fromcommleftinv--b1d2d2879c8fa6c3c4479f1b",
  "source": {
    "blob": "ccacc8d757509ff99eb8f9892d14c144f2243725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d2d2879c8fa6c3c4479f1bec70ab1fdca099a2cf4062bab2079717a1722db5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c14158bddc6b018e84dd95782090b5bf989de7338a8792b4f422b6cf9b9db6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromCommLeftInv : S.leftInv →* S where
  toFun := S.fromLeftInv
  map_one' := S.fromLeftInv_one
  map_mul' x y :=
    Subtype.ext <| by
      rw [fromLeftInv_eq_iff, mul_comm x, Submonoid.coe_mul, Submonoid.coe_mul, mul_assoc, ←
        mul_assoc (x : M), mul_fromLeftInv, one_mul, mul_fromLeftInv]

variable (hS : S ≤ IsUnit.submonoid M)

/-- The submonoid of pointwise inverse of `S` is `MulEquiv` to `S`. -/
@[to_additive (attr := simps apply) "The additive submonoid of pointwise additive inverse of `S` is
`AddEquiv` to `S`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccacc8d757509ff99eb8f9892d14c144f2243725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
