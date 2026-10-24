# self_mem_cycle_factors_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9f08a83-ecf3-7e72-f80f-499a58ed0133",
  "kind": "theorem",
  "lexical_name": "self_mem_cycle_factors_commute",
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
  "slug": "self-mem-cycle-factors-commute--767c7c4cea76d5a0bf5e0785",
  "source": {
    "blob": "149cc4989ffdb65e407135b5da0f9eb1e16f802c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 779,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767c7c4cea76d5a0bf5e07858f66a70b5660536433a6832e8995cfd8b65e5744",
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

Occurrence: `result:c9f08a83-ecf3-7e72-f80f-499a58ed0133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_mem_cycle_factors_commute {g c : Perm α}
    (hc : c ∈ g.cycleFactorsFinset) : Commute c g := by
  apply commute_of_mem_cycleFactorsFinset_commute
  intro c' hc'
  by_cases hcc' : c = c'
  · rw [hcc']
  · apply g.cycleFactorsFinset_mem_commute hc hc'; exact hcc'

/-- If `c` and `d` are cycles of `g`, then `d` stabilizes the support of `c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant62c01f6d88ec9d8fe1279c869a648e7ffe32cf41b634a2f3a68b862a3f31ab7d.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `149cc4989ffdb65e407135b5da0f9eb1e16f802c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
