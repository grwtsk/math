# inverseSquare_summable_and_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18c19f22-8d29-fc07-924b-e552b3f87931",
  "kind": "theorem",
  "lexical_name": "inverseSquare_summable_and_bound",
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
  "slug": "inversesquare-summable-and-bound--df5690d362fa574b2f09db6e",
  "source": {
    "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 263,
    "path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df5690d362fa574b2f09db6ef12baed18118cc7f6de8998257701b0ec5fdef47",
  "verification": {
    "reference": "docs/verification/Analysis/Series/HeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c19f22-8d29-fc07-924b-e552b3f87931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseSquare_summable_and_bound (height weight : ι → ℝ)
    (T : ℝ) (hT : 1 ≤ T) (hw : ∀ i, 0 ≤ weight i)
    (hlower : ∀ i, T < height i)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ t * Real.log t) :
    Summable (fun i => weight i / height i ^ 2) ∧
      (∑' i, weight i / height i ^ 2) ≤ inverseSquareBudget T := by
  have hn : 0 ≤ (fun i => weight i / height i ^ 2) :=
    fun i => div_nonneg (hw i) (sq_nonneg _)
  have hf := fun S => finite_inverseSquare_le S height weight T hT
    (fun i _ => hlower i) (hcount S)
  exact ⟨summable_of_sum_le hn hf, Real.tsum_le_of_sum_le hn hf⟩

set_option linter.unusedVariables false in
/-- Absolute convergence and a norm bound are conclusions, not premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/HeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/HeightCountingTail.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
