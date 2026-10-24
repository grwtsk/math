# gaugeState_step_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca48d3fa-b009-2f77-9805-558cb3490bd2",
  "kind": "theorem",
  "lexical_name": "gaugeState_step_iff",
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
  "slug": "gaugestate-step-iff--2344982797bcad372c80f3f7",
  "source": {
    "blob": "5d3a04b4c7e954988d1f0d342f5371d5a18c0c47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 60,
    "path": "GRWTSK/LinearAlgebra/GaugeState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2344982797bcad372c80f3f79e2fe16efe87fc247a3910cbbd9ac957ca8df697",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaugeState__SourceOccurrencea45eadc5aa197448ec1cfe5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca48d3fa-b009-2f77-9805-558cb3490bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaugeState_step_iff {G : Type u} {S : Type v} [Group G] [MulAction G S]
    (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
    X (n + 1) = A n • X n ↔
      gaugeState B X (n + 1) = gaugeTransfer A B n • gaugeState B X n := by
  have hnormalized : gaugeTransfer A B n • gaugeState B X n =
      (B (n + 1))⁻¹ • (A n • X n) := by
    simp [gaugeTransfer, gaugeState, mul_smul]
  rw [hnormalized]
  constructor
  · intro h
    exact congrArg (fun s => (B (n + 1))⁻¹ • s) h
  · intro h
    have h' := congrArg (fun s => B (n + 1) • s) h
    simpa [gaugeState] using h'




end GRWTSK.LinearAlgebra.GaugeState
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/GaugeState__SourceOccurrencea45eadc5aa197448ec1cfe5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/GaugeState.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3a04b4c7e954988d1f0d342f5371d5a18c0c47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
