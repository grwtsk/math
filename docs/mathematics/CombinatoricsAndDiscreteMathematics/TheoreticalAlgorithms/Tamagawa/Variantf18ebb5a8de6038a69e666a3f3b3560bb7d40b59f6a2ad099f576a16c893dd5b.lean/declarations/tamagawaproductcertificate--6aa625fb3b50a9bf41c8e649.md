# TamagawaProductCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ddfe464d6b81ecd1c59a19e9aea4a408d588334a9e53eb8f0d3fbcd8ffa5ac5",
  "kind": "structure",
  "lexical_name": "TamagawaProductCertificate",
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
  "slug": "tamagawaproductcertificate--6aa625fb3b50a9bf41c8e649",
  "source": {
    "blob": "9d378dc24d02339238f3aa41976dda055b990019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aa625fb3b50a9bf41c8e649fab81df610fc3ff21307011abaebaa46b272b07c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ddfe464d6b81ecd1c59a19e9aea4a408d588334a9e53eb8f0d3fbcd8ffa5ac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TamagawaProductCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {MW : MordellWeilGroup.{u}}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E)
    (S : SecondPartStatement L MW) where
  localTamagawaFactors :
    ∀ F ∈ L.localFactors,
      ∃ T : LocalTamagawaFactorCertificate (E := E) N F,
        T.certifiedForBSD
  tamagawaStatusSupplied :
    S.identityData.tamagawaFactors =
      BSDComponentStatus.suppliedByCertificate
  finiteSupport : Prop
  finiteSupportCertified :
    finiteSupport
  productMatchesSecondPart : Prop
  productMatchesSecondPartCertified :
    productMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Tamagawa-product quality required by theorem-facing BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d378dc24d02339238f3aa41976dda055b990019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
