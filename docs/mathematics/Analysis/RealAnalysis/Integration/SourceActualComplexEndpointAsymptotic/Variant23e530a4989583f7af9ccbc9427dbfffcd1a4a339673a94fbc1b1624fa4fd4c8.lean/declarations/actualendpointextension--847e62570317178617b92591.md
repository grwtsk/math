# actualEndpointExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9924582819d7f3a64d8e2784470cce5d0bea58187135b8addd8d56b339ecf1c6",
  "kind": "def",
  "lexical_name": "actualEndpointExtension",
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
  "slug": "actualendpointextension--847e62570317178617b92591",
  "source": {
    "blob": "6aeb8c7527379784817ad3acc21c737e74f4397f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:847e62570317178617b92591422e6e99f7b6a85f94aaf0fd63b8d16d10c1213c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9924582819d7f3a64d8e2784470cce5d0bea58187135b8addd8d56b339ecf1c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualEndpointExtension (A u : ℝ) : ℝ :=
  (Icc 0 (2 * A)).indicator (endpointPolynomial A) u

/-- The actual complex endpoint integrand retains its moving support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aeb8c7527379784817ad3acc21c737e74f4397f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
