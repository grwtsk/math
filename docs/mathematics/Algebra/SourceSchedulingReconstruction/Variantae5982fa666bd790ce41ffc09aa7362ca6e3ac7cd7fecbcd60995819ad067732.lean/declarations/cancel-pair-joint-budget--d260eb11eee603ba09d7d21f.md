# cancel_pair_joint_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85282a48-d152-34ad-4efb-a1330026927b",
  "kind": "theorem",
  "lexical_name": "cancel_pair_joint_budget",
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
  "slug": "cancel-pair-joint-budget--d260eb11eee603ba09d7d21f",
  "source": {
    "blob": "88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d260eb11eee603ba09d7d21f1154693637f9d053737812b021db5d37e6a1fc2e",
  "verification": {
    "reference": "docs/verification/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85282a48-d152-34ad-4efb-a1330026927b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_pair_joint_budget :
    |([true, false].map cancelPairWork).sum| ≤ (0 : ℤ) := by
  apply joint_cancellation_budget cancelPairWork (fun _ => 0)
    [true, false] [[false, true]] 0 cancel_pair_coverage
  · intro block hblock
    simp only [List.mem_singleton] at hblock
    subst block
    norm_num [jointReadout, cancelPairWork]
  · simp

/-- Splitting the same signed pair into atomwise absolute budgets costs fourteen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
