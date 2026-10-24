# square_adjacent_le_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4abe9e2-cb1a-1051-0ebc-fa700d8f0ad4",
  "kind": "theorem",
  "lexical_name": "square_adjacent_le_upper",
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
  "slug": "square-adjacent-le-upper--c09940fde6723548fc08fe7d",
  "source": {
    "blob": "8388203f3f03490221038eb6214cb8630cd378cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c09940fde6723548fc08fe7d54e12974072e79704087013a2723edda73bf7f8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4abe9e2-cb1a-1051-0ebc-fa700d8f0ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem square_adjacent_le_upper (A : ℝ) (hA : 1 ≤ A) :
    (vaughanCutoff A + 1) * (vaughanCutoff A + 1) ≤ sourceKernelCutoff A := by
  let a := vaughanCutoff A + 1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ha : (a : ℝ) < Real.exp A := by
    have hc : (a : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one A hA]
  have hs : ((a * a : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    rw [Nat.cast_mul, show 2 * A = A + A by ring, Real.exp_add]
    nlinarith [show (0 : ℝ) ≤ (a : ℝ) from Nat.cast_nonneg a, Real.exp_pos A]
  exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8388203f3f03490221038eb6214cb8630cd378cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
