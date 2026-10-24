# HomologyPrecision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f98b2a85b5965d0de5e506f0fe3b3a5052d8ed37012eb458a2e5a24af58cb050",
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
  "slug": "homologyprecision--d81b21670e0acb91f011ab75",
  "source": {
    "blob": "cfb4306160e0f9ec39c96678a8161824a0341087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomologyInput/Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d81b21670e0acb91f011ab756ed8f53c23f69f53116132b660629af5753c73ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomologyInput/Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f98b2a85b5965d0de5e506f0fe3b3a5052d8ed37012eb458a2e5a24af58cb050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomologyInput/Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomologyInput/Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb4306160e0f9ec39c96678a8161824a0341087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
