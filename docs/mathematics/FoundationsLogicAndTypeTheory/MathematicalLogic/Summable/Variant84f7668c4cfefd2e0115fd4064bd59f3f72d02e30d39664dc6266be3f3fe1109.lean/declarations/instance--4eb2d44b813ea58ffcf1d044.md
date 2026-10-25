# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdc88413cfcd4353990bce9af1ffcf7299b8ac1b63fe6d79142a096b1dde1251",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4eb2d44b813ea58ffcf1d044",
  "source": {
    "blob": "01cb099bb85a761e846902f8de3143e21b4aac4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 882,
    "line": 877,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4eb2d44b813ea58ffcf1d0446a5a5bf9c56e51730a21704e465714d9218ef2a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdc88413cfcd4353990bce9af1ffcf7299b8ac1b63fe6d79142a096b1dde1251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–882.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : DivInvMonoid R⟦Γ⟧ where
  inv x :=
    single (-x.order) (x.leadingCoeff)⁻¹ *
      (SummableFamily.powers <| 1 - single (-x.order) (x.leadingCoeff)⁻¹ * x).hsum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb099bb85a761e846902f8de3143e21b4aac4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
