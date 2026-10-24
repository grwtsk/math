# QuotientRing.isQuotientMap_coe_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97fa5a82-5b66-eb3f-03c0-c6fa809d63a5",
  "kind": "theorem",
  "lexical_name": "QuotientRing.isQuotientMap_coe_coe",
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
  "slug": "quotientring-isquotientmap-coe-coe--8004379fac0529641cc4244e",
  "source": {
    "blob": "37d708f91b49df8b5b3f9c4ffdd8622176194b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8004379fac0529641cc4244e93399c0f4af53717ef3a083c53b0dbff0b01cfa4",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97fa5a82-5b66-eb3f-03c0-c6fa809d63a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuotientRing.isQuotientMap_coe_coe : IsQuotientMap fun p : R × R => (mk N p.1, mk N p.2) :=
  ((isOpenQuotientMap_mk N).prodMap (isOpenQuotientMap_mk N)).isQuotientMap

@[deprecated (since := "2024-10-22")]
alias QuotientRing.quotientMap_coe_coe := QuotientRing.isQuotientMap_coe_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d708f91b49df8b5b3f9c4ffdd8622176194b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
