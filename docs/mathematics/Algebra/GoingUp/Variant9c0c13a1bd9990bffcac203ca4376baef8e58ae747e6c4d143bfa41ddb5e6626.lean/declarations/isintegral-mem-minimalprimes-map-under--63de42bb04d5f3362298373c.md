# IsIntegral.mem_minimalPrimes_map_under

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f57cd94c-6518-ca10-3583-13ed53668047",
  "kind": "theorem",
  "lexical_name": "IsIntegral.mem_minimalPrimes_map_under",
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
  "slug": "isintegral-mem-minimalprimes-map-under--63de42bb04d5f3362298373c",
  "source": {
    "blob": "9c5efd24c06b66490ab5fe0925e39f8795ebcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 266,
    "path": "GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63de42bb04d5f3362298373ce96a75e51dbcb73b94348bf6dcb39c4db8f231dd",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57cd94c-6518-ca10-3583-13ed53668047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.mem_minimalPrimes_map_under (I : Ideal A) [I.IsPrime] :
    I ∈ ((I.under R).map (algebraMap R A)).minimalPrimes := by
  refine ⟨⟨inferInstance, map_comap_le⟩, fun r ⟨hr, hpr⟩ hrq ↦ ?_⟩
  contrapose! hpr
  exact mt map_le_iff_le_comap.mp (not_le_of_gt (IsIntegral.under_lt_under (hrq.lt_of_not_ge hpr)))

variable [IsDomain A]

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5efd24c06b66490ab5fe0925e39f8795ebcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
