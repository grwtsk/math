# valuationOfNeZeroMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad627d9bcff1f6afa39c9a449ade3a573c65d4776ae9adad244d0e5f01f57ce",
  "kind": "def",
  "lexical_name": "valuationOfNeZeroMod",
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
  "slug": "valuationofnezeromod--a8ad6713026f7dc0c9ddd4fa",
  "source": {
    "blob": "72d9717029544425b9a4c63c44b4f47e8c6436c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 135,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8ad6713026f7dc0c9ddd4fa3fc5b6d6cb89efa74d40228fbe0d196a0d4d893b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad627d9bcff1f6afa39c9a449ade3a573c65d4776ae9adad244d0e5f01f57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def valuationOfNeZeroMod (n : ℕ) : (K / n) →* Multiplicative (ZMod n) :=
  -- TODO: this definition does a lot of defeq abuse between `Multiplicative` and `Additive`,
  -- so we need `erw` below.
  (Int.quotientZMultiplesNatEquivZMod n).toMultiplicative.toMonoidHom.comp <|
    QuotientGroup.map (powMonoidHom n : Kˣ →* Kˣ).range
      (AddSubgroup.toSubgroup (AddSubgroup.zmultiples (n : ℤ)))
      v.valuationOfNeZero
      (by
        rintro _ ⟨x, rfl⟩
        exact
          ⟨v.valuationOfNeZero x, by simp only [powMonoidHom_apply, map_pow, Int.toAdd_pow]; rfl⟩)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d9717029544425b9a4c63c44b4f47e8c6436c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
