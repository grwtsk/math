# chebyshev_mul_continuous_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c23b1f3-694e-c201-1ea6-2823e776ed7b",
  "kind": "theorem",
  "lexical_name": "chebyshev_mul_continuous_intervalIntegrable",
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
  "slug": "chebyshev-mul-continuous-intervalintegrable--a341d3bb460ecb0864f8869c",
  "source": {
    "blob": "63dd46bede0a39fe37be6f180841e9d28bba6f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant44fbaf5cb9b41c856306028cbe7cc2874b0e409077690dfb91de77abb81cffa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a341d3bb460ecb0864f8869c53c2cada97f20c6a1f303973f37a486eaf035bc2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant44fbaf5cb9b41c856306028cbe7cc2874b0e409077690dfb91de77abb81cffa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c23b1f3-694e-c201-1ea6-2823e776ed7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_mul_continuous_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => chebyshevPrimePower (Real.exp s) * F s) volume a b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) volume a b :=
    IntervalIntegrable.sum (primePowerInventory b) (fun n _ =>
      (intervalIntegrable_closed_step a b (Real.log n) F
        (hF.intervalIntegrable a b)).const_mul (ArithmeticFunction.vonMangoldt n))
  have heq : (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) =
      (fun s => ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) := by
    funext s
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro s hs
  exact (chebyshev_mul_eq_steps b s (F s) ((uIoc_of_le hab ▸ hs).2)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant44fbaf5cb9b41c856306028cbe7cc2874b0e409077690dfb91de77abb81cffa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant44fbaf5cb9b41c856306028cbe7cc2874b0e409077690dfb91de77abb81cffa5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63dd46bede0a39fe37be6f180841e9d28bba6f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
