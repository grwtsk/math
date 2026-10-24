# logCellSum_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d4a8e26-59e4-3889-388f-ec021241928e",
  "kind": "theorem",
  "lexical_name": "logCellSum_eval",
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
  "slug": "logcellsum-eval--766880edcf0df83d018794d2",
  "source": {
    "blob": "9aa29d874b2a1f5868a842741a0a427a089e6b01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:766880edcf0df83d018794d2cd0d4c3f4969b2724aac97d83bc76ad4293938c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4a8e26-59e4-3889-388f-ec021241928e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logCellSum_eval (N : ℕ) :
    logCellSum N = -stieltjesSequence (N+1) + Real.log (N+1) + 1 - harmonic (N+1) := by
  induction N with
  | zero => simp [logCellSum, stieltjesSequence, harmonic_succ, harmonic_zero]
  | succ N hN =>
    rw [logCellSum, Finset.sum_range_succ]
    change logCellSum N + logCell (N+1) = _
    rw [hN, logCell_eval (by omega : 0 < N+1)]
    unfold stieltjesSequence
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ (N+1)+1), harmonic_succ (N+1)]
    push_cast
    field_simp
    <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa29d874b2a1f5868a842741a0a427a089e6b01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
