# Subgroup.instIsArithmeticAdjoinNegOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dca7bc41b8f9fdca57a273c50032621fb597f9b720eff47eb789977b1419db0",
  "kind": "instance",
  "lexical_name": "Subgroup.instIsArithmeticAdjoinNegOne",
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
  "slug": "subgroup-instisarithmeticadjoinnegone--6778716ba92586f04c993ef6",
  "source": {
    "blob": "6d23db3d901be43b71180d53a346fa6e33508ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 261,
    "path": "GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6778716ba92586f04c993ef68c5b27e764e9dd8a1a7f259f707f5582b2c834d1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dca7bc41b8f9fdca57a273c50032621fb597f9b720eff47eb789977b1419db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subgroup.instIsArithmeticAdjoinNegOne {𝒢 : Subgroup (GL (Fin 2) ℝ)} [𝒢.IsArithmetic] :
    𝒢.adjoinNegOne.IsArithmetic :=
  ⟨(𝒢.commensurable_adjoinNegOne_self).trans IsArithmetic.is_commensurable⟩

end adjoinNeg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d23db3d901be43b71180d53a346fa6e33508ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
