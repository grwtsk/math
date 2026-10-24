# finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faeb9ece-c999-7b2d-77f9-ffe879cfa071",
  "kind": "theorem",
  "lexical_name": "finite",
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
  "slug": "finite--7c4e4fe4b40aaf2e3febde00",
  "source": {
    "blob": "472c75265f50a72ffbf12ac68b34d66fcb813d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c4e4fe4b40aaf2e3febde00793465e7334fdaa9b920403b855d07265632dc6e",
  "verification": {
    "reference": "docs/verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faeb9ece-c999-7b2d-77f9-ffe879cfa071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem finite (R B : Type*) [CommRing R] [CommRing B] [Algebra R B] [Module.Finite R B]
    [IsDomain B] [MulSemiringAction G B] [IsGaloisGroup G R B] : Finite G := by
  let A : Subring B := (algebraMap R B).range
  let := FractionRing.liftAlgebra A (FractionRing B)
  let := IsFractionRing.mulSemiringAction G B (FractionRing B)
  let : Algebra R A := (algebraMap R B).rangeRestrict.toAlgebra
  have : IsScalarTower R A B := IsScalarTower.of_algebraMap_eq' rfl
  have : Module.Finite A B := Module.Finite.of_restrictScalars_finite R A B
  have := IsGaloisGroup.to_isFractionRing_of_isIntegral G A B (FractionRing A) (FractionRing B)
  apply Nat.finite_of_card_ne_zero
  rw [card_eq_finrank G (FractionRing A) (FractionRing B)]
  exact Module.finrank_pos.ne'

section IsDomain

variable (A B : Type*) [CommRing A] [CommRing B] [IsDomain B] [Algebra A B]
  [MulSemiringAction G B] [MulSemiringAction G' B] [IsGaloisGroup G A B] [IsGaloisGroup G' A B]
  [Finite G] [Finite G']

/-- The cardinality of a Galois group of `B/A` equals the rank of `B` as an `A`-module.

See `IsGaloisGroup.card_eq_finrank`, a field-theoretic version that does not assume finiteness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c75265f50a72ffbf12ac68b34d66fcb813d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
