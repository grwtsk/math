# tendsto_log_one_add_div_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9836f4f2-7371-ad1b-a9a8-e3717a2c885a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d1c9cc5-8a06-d390-41d7-ab3f7bbca667",
  "kind": "theorem",
  "lexical_name": "tendsto_log_one_add_div_self",
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
  "slug": "tendsto-log-one-add-div-self--6d278af9ab8ce157bb53d986",
  "source": {
    "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d278af9ab8ce157bb53d98601522a47f69820c6144a0912b50d1c9e3582c617",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1c9cc5-8a06-d390-41d7-ab3f7bbca667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_one_add_div_self :
    Filter.Tendsto (fun t => Real.log (1 + t) / t) (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
  -- Follows from log'(1) = 1 via hasDerivAt_iff_tendsto_slope_zero
  -- (log(1+t) - log(1))/t = log(1+t)/t → 1 as t → 0
  have hderiv : HasDerivAt Real.log 1 1 := by
    have h := Real.hasDerivAt_log (one_ne_zero)
    simp only [inv_one] at h
    exact h
  have htendsto := hderiv.tendsto_slope_zero_right
  -- htendsto: Tendsto (fun t => t⁻¹ • (log(1 + t) - log 1)) (𝓝[>] 0) (𝓝 1)
  simp only [Real.log_one, sub_zero, smul_eq_mul, inv_mul_eq_div] at htendsto
  exact htendsto

/-- Helper: log(1-t)/t → -1 as t → 0⁺. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
