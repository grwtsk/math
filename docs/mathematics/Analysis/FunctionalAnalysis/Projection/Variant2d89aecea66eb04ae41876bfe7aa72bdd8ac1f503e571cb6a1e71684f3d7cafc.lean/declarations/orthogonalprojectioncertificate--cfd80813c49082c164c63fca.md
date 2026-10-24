# OrthogonalProjectionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2251c379d56bc1a482e5a46cd66edcc797b18584af76c0c6e61af45fdc45e376",
  "kind": "structure",
  "lexical_name": "OrthogonalProjectionCertificate",
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
  "slug": "orthogonalprojectioncertificate--cfd80813c49082c164c63fca",
  "source": {
    "blob": "29ee6b1f3a0e1b219ad5b50a343a4c03d9324bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 17,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Projection/Variant2d89aecea66eb04ae41876bfe7aa72bdd8ac1f503e571cb6a1e71684f3d7cafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfd80813c49082c164c63fcafede9c5d38889563a25a95904fe8c6478d76a752",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Projection/Variant2d89aecea66eb04ae41876bfe7aa72bdd8ac1f503e571cb6a1e71684f3d7cafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2251c379d56bc1a482e5a46cd66edcc797b18584af76c0c6e61af45fdc45e376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrthogonalProjectionCertificate
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (P : HilbertEnd H) :
    Prop where
  selfAdjoint :
    OperatorSelfAdjoint P
  idempotent :
    OperatorIdempotent P
  nonnegative :
    OperatorNonnegative P

end Mathematics.SemiLocalDefect.SoninCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Projection/Variant2d89aecea66eb04ae41876bfe7aa72bdd8ac1f503e571cb6a1e71684f3d7cafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Projection/Variant2d89aecea66eb04ae41876bfe7aa72bdd8ac1f503e571cb6a1e71684f3d7cafc.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ee6b1f3a0e1b219ad5b50a343a4c03d9324bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
