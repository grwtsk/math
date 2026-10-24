# sigmaMulAntidiagonalEquivProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2b13651015f83e8dd20314cfd94cc141ce5e3b5b0cb5f197cd529261a1909dc",
  "kind": "def",
  "lexical_name": "sigmaMulAntidiagonalEquivProd",
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
  "slug": "sigmamulantidiagonalequivprod--ee8c39cfaf2d2dda74490bb5",
  "source": {
    "blob": "0a4e91ffa3bf1cdcefefca11877cbf6d55fd9eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 242,
    "path": "GRWTSK/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee8c39cfaf2d2dda74490bb510ce0359e7a0bfb43e81923cef17c03c32b2afce",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2b13651015f83e8dd20314cfd94cc141ce5e3b5b0cb5f197cd529261a1909dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaMulAntidiagonalEquivProd [Mul A] [HasMulAntidiagonal A] :
    (Σ n : A, mulAntidiagonal n) ≃ A × A where
  toFun x := x.2
  invFun x := ⟨x.1 * x.2, x, mem_mulAntidiagonal.mpr rfl⟩
  left_inv := by
    rintro ⟨n, ⟨k, l⟩, h⟩
    rw [mem_mulAntidiagonal] at h
    exact Sigma.subtype_ext h rfl

section

variable {A : Type*}
  [CommMagma A] [PartialOrder A] [CanonicallyOrderedMul A]
  [LocallyFiniteOrderBot A] [DecidableEq A]

/-- In a canonically ordered multiplicative type, the mulAntidiagonal can be constructed by
filtering.

Note that this is not an instance, as for sometimes a more efficient algorithm is available. -/
@[to_additive
/-- In a canonically ordered additive type, the antidiagonal can be construct by filtering.

Note that this is not an instance, as for some times a more efficient algorithm is available. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4e91ffa3bf1cdcefefca11877cbf6d55fd9eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
