# mem_maximalIdeal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8219092a-8432-bf90-c175-e8756bffd7df",
  "kind": "theorem",
  "lexical_name": "mem_maximalIdeal_iff",
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
  "slug": "mem-maximalideal-iff--a0f3764aaccf4d199dfb2a11",
  "source": {
    "blob": "2edd68d275ad223ae00305ae43a4f8a067ad061c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 890,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f3764aaccf4d199dfb2a11abd49c3cfbea3764c72b30a3681eb461e0840002",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8219092a-8432-bf90-c175-e8756bffd7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_maximalIdeal_iff {a : v.valuationSubring} :
    a ∈ IsLocalRing.maximalIdeal (v.valuationSubring) ↔ v a < 1 :=
  Integer.not_isUnit_iff_valuation_lt_one

end Valuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edd68d275ad223ae00305ae43a4f8a067ad061c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
