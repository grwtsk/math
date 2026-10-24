# compactness_no_direct_crossing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:222452d0-a703-2396-eda0-8b90a651af06",
  "kind": "theorem",
  "lexical_name": "compactness_no_direct_crossing",
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
  "slug": "compactness-no-direct-crossing--10d09984e90811fe8fd7bdec",
  "source": {
    "blob": "1203a57f92dfebd7dd49dc69e723ce0f922d57ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10d09984e90811fe8fd7bdec547a4600552a4aeac5e62fd329e71f1125779e2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:222452d0-a703-2396-eda0-8b90a651af06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactness_no_direct_crossing
    (a b : ℝ) (hab : a ≤ b) :
    ¬ BoundaryCalculus.DirectOwns
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) :=
  BoundaryCalculus.no_direct_analytic_crossing

end Compactness
end MathlibBridge
end AnalyticNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1203a57f92dfebd7dd49dc69e723ce0f922d57ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
