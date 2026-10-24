# HomologyPrecision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f54b19dcf11a666bec859fd91d9a659bac97121436f203cc3d9d5ae8aab4d26",
  "kind": "inductive",
  "lexical_name": "HomologyPrecision",
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
  "slug": "homologyprecision--dd5c4eee7b2466df95d0a4c1",
  "source": {
    "blob": "44b61736b2dab733fe0c1d7c9e29098eee5f1031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomologyInput/Variant54139b7dc2cf68a1400b9480e6eb070bdad8083c11fd2aaa1f3c901daad95ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd5c4eee7b2466df95d0a4c19eab2544b3671bfa81fc6c8601b2c2ccdc9912d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomologyInput/Variant54139b7dc2cf68a1400b9480e6eb070bdad8083c11fd2aaa1f3c901daad95ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f54b19dcf11a666bec859fd91d9a659bac97121436f203cc3d9d5ae8aab4d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive HomologyPrecision where
  | exactIntegral
  | smithCertified
  | fieldOnly
  | persistentFieldOnly
  | numericalEstimate
  | modelProposal
  | unavailable
deriving DecidableEq, Repr, BEq

/-- Exact exponent references exist only for exact integral or Smith packets. -/
@[surface_certificate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomologyInput/Variant54139b7dc2cf68a1400b9480e6eb070bdad8083c11fd2aaa1f3c901daad95ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomologyInput/Variant54139b7dc2cf68a1400b9480e6eb070bdad8083c11fd2aaa1f3c901daad95ea8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b61736b2dab733fe0c1d7c9e29098eee5f1031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
