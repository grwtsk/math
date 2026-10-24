# actual_frozenState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d524bb5-7676-fc7d-a90d-76b03bf61afe",
  "kind": "theorem",
  "lexical_name": "actual_frozenState",
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
  "slug": "actual-frozenstate--2028c0ea71b13164b7c02ad4",
  "source": {
    "blob": "50b2728131ac4a8ba01d0eed9787f3f0c736e915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant54028b2d175bf17bfc0f3667393bc69a2d6107a9f179142ab83a15987cec2dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2028c0ea71b13164b7c02ad4d88cca75a3283f6d52f84054077be2ccd075c4a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant54028b2d175bf17bfc0f3667393bc69a2d6107a9f179142ab83a15987cec2dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d524bb5-7676-fc7d-a90d-76b03bf61afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_frozenState (A : ℝ) (hA : 0 ≤ A) (j : ℕ) (hj : j < cutoff A)
    (s : ℝ) (hs : s ∈ Ioo (node A j) (node A (j + 1))) :
    nonaffineDiscrepancy A s = frozenState A (j + 1) s := by
  have hleft : Real.log (j + 1 : ℕ) ≤ s := by
    rw [node_eq_log A hA j hj] at hs
    exact hs.1.le
  have hright : s < Real.log (j + 2 : ℕ) := by
    exact hs.2.trans_le (by simpa only [node, Nat.add_assoc] using
      (min_le_left (Real.log (j + 1 + 1 : ℕ)) (2 * A)))
  have hlow : (j + 1 : ℕ) ≤ Real.exp s :=
    (Real.log_le_iff_le_exp (by positivity)).mp hleft
  have hup : Real.exp s < (j + 1 : ℕ) + 1 := by
    have h := (Real.lt_log_iff_exp_lt (by positivity : 0 < ((j + 2 : ℕ) : ℝ))).mp hright
    push_cast at h ⊢
    linarith only [h]
  rw [nonaffineDiscrepancy, normalizedPsiError_eq_prefix,
    source_prefix_frozen (j + 1) _ hlow hup]
  rfl

/-- Multiplying the actual step source by a continuous test retains integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant54028b2d175bf17bfc0f3667393bc69a2d6107a9f179142ab83a15987cec2dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant54028b2d175bf17bfc0f3667393bc69a2d6107a9f179142ab83a15987cec2dfe.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b2728131ac4a8ba01d0eed9787f3f0c736e915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
