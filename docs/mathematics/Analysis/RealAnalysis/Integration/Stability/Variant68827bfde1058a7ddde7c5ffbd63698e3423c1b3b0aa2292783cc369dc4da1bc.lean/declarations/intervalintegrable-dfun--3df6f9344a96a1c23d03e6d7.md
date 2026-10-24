# intervalIntegrable_Dfun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d30b3af5-c057-8c01-b17c-6ce0ecfb9123",
  "kind": "lemma",
  "lexical_name": "intervalIntegrable_Dfun",
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
  "slug": "intervalintegrable-dfun--3df6f9344a96a1c23d03e6d7",
  "source": {
    "blob": "67038b8cde04b83ca48c8bbfe74fc60f24eab369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3df6f9344a96a1c23d03e6d7c0aad54e509d84eca55f1706a530d07553a9fad1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d30b3af5-c057-8c01-b17c-6ce0ecfb9123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegrable_Dfun (hN : 0 < N) : IntervalIntegrable (Dfun s N) volume 0 1 := by
  have h1 : IntervalIntegrable (fun x => (1:ℝ) * Cstep s N x) volume 0 1 := intervalIntegrable_gC hN continuousOn_const
  simp only [one_mul] at h1
  exact h1.sub ((by fun_prop : Continuous fun x : ℝ => x ^ 2 / 2).intervalIntegrable _ _)

/-- E is continuous on [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67038b8cde04b83ca48c8bbfe74fc60f24eab369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
