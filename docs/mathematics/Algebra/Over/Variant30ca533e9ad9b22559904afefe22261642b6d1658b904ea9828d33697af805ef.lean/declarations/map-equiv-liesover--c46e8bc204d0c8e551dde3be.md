# map_equiv_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d84cbe18c06f066602aba503642e7b224f5a254e28d6d0ae7ceb70b174d949f",
  "kind": "instance",
  "lexical_name": "map_equiv_liesOver",
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
  "slug": "map-equiv-liesover--c46e8bc204d0c8e551dde3be",
  "source": {
    "blob": "a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 161,
    "path": "GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c46e8bc204d0c8e551dde3bea2e7a6baefb7e016b9b80b5d112a67d85c294b03",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d84cbe18c06f066602aba503642e7b224f5a254e28d6d0ae7ceb70b174d949f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance map_equiv_liesOver [P.LiesOver p] {E : Type*} [EquivLike E B C] [AlgEquivClass E A B C]
    (σ : E) : (P.map σ).LiesOver p :=
  LiesOver.of_eq_map_equiv p σ rfl

end Semiring

section CommSemiring

variable {A : Type*} [CommSemiring A] {B : Type*} [CommSemiring B] {C : Type*} [Semiring C]
  [Algebra A B] [Algebra B C] [Algebra A C] [IsScalarTower A B C]
  (𝔓 : Ideal C) (P : Ideal B) (p : Ideal A)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
