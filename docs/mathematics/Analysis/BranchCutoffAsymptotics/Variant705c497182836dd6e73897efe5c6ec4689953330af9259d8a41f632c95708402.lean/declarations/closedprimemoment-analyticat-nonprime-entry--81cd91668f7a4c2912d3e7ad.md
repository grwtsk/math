# closedPrimeMoment_analyticAt_nonprime_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edbfb46b-3c0b-e00c-8a58-e72427b047b1",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_analyticAt_nonprime_entry",
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
  "slug": "closedprimemoment-analyticat-nonprime-entry--81cd91668f7a4c2912d3e7ad",
  "source": {
    "blob": "a8cb208725e277b6a23bf0a00ace611e38ae0f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cd91668f7a4c2912d3e7adfed40be8731dca5dd46e8129ce1271e866d0d628",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbfb46b-3c0b-e00c-8a58-e72427b047b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_analyticAt_nonprime_entry {n : ℕ} (hn : 2 ≤ n)
    (hnot : ¬ IsPrimePow n) : AnalyticAt ℝ closedPrimeMoment (Real.log n / 2) := by
  have he := closedPrimeMoment_eventually_eq_partial hn
  rw [partialMoment_eq_prior_add hn] at he
  exact ((priorMoment_analyticAt hn).add
    (primePowerTerm_analyticAt_of_not_isPrimePow hnot _)).congr he.symm

/-- Every literal source summand has four continuous scale derivatives at positive scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8cb208725e277b6a23bf0a00ace611e38ae0f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
