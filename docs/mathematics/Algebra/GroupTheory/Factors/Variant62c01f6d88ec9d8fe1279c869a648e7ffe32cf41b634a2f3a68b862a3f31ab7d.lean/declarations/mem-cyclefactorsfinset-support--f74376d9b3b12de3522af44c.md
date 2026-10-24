# mem_cycleFactorsFinset_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b2b6e7a-7220-b2e8-f3cc-a2ecd01210ed",
  "kind": "theorem",
  "lexical_name": "mem_cycleFactorsFinset_support",
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
  "slug": "mem-cyclefactorsfinset-support--f74376d9b3b12de3522af44c",
  "source": {
    "blob": "149cc4989ffdb65e407135b5da0f9eb1e16f802c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 800,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f74376d9b3b12de3522af44c16de779057b9208db14c1893f37641eea5e6163b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b2b6e7a-7220-b2e8-f3cc-a2ecd01210ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cycleFactorsFinset_support {g c : Perm α} (hc : c ∈ g.cycleFactorsFinset) (a : α) :
    g a ∈ c.support ↔ a ∈ c.support :=
  mem_support_iff_of_commute (self_mem_cycle_factors_commute hc).symm a

end CycleFactorsFinset

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `149cc4989ffdb65e407135b5da0f9eb1e16f802c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
