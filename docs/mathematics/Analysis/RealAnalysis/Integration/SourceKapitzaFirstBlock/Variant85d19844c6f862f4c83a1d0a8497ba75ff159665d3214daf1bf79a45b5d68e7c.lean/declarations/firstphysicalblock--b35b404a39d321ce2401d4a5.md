# firstPhysicalBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fd4f78c26c225e61100014fde3e8e65f680b1ecc94b4e86eb7b3df3ba99ff18",
  "kind": "def",
  "lexical_name": "firstPhysicalBlock",
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
  "slug": "firstphysicalblock--b35b404a39d321ce2401d4a5",
  "source": {
    "blob": "15c9ff544ebd533f5a320cb151822729018c251b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b35b404a39d321ce2401d4a5f4119c176b263d800378b8174fd78c1b5d091be5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fd4f78c26c225e61100014fde3e8e65f680b1ecc94b4e86eb7b3df3ba99ff18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstPhysicalBlock (A : ℝ) : ℝ :=
  ∫ s in Real.log 2..Real.log 4, kapitzaWeight A s * nonaffineDiscrepancy A s

/-- Complete weighted discrepancy majorant used under the one-sided affine premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c9ff544ebd533f5a320cb151822729018c251b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
