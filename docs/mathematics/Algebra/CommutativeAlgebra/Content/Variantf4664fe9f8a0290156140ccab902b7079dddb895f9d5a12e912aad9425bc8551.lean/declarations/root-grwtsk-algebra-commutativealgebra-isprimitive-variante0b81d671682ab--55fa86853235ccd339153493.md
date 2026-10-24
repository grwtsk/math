# _root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitive.Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.Irreducible.isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2391e4ab-e3e7-8990-c167-47070e5fb622",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitive.Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.Irreducible.isPrimitive",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-isprimitive-variante0b81d671682ab--55fa86853235ccd339153493",
  "source": {
    "blob": "a3a41ef09146c209c6a293e4a6c3c4c037547ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fa86853235ccd3391534935a5a5585a791caf199752d75a0fe6651afe0c56d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2391e4ab-e3e7-8990-c167-47070e5fb622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitive.Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.Irreducible.isPrimitive [NoZeroDivisors R]
    {p : Polynomial R} (hp : Irreducible p) (hp' : p.natDegree ≠ 0) : p.IsPrimitive := by
  rintro r ⟨q, hq⟩
  suffices ¬IsUnit q by simpa using ((hp.2 hq).resolve_right this).map Polynomial.constantCoeff
  intro H
  have hr : r ≠ 0 := by rintro rfl; simp_all
  obtain ⟨s, hs, rfl⟩ := Polynomial.isUnit_iff.mp H
  simp [hq, Polynomial.natDegree_C_mul hr] at hp'

end Primitive

variable {R : Type*} [CommRing R] [IsDomain R]

section NormalizedGCDMonoid

variable [NormalizedGCDMonoid R]

/-- `p.content` is the `gcd` of the coefficients of `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a41ef09146c209c6a293e4a6c3c4c037547ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
