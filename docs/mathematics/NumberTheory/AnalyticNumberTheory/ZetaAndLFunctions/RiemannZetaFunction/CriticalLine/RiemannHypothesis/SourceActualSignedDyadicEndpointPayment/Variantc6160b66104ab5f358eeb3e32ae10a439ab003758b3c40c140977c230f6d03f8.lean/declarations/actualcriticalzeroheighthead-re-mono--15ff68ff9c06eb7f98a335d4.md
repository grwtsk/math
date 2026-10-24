# actualCriticalZeroHeightHead_re_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c112cba-ce83-b2ec-6609-01903518a42b",
  "kind": "theorem",
  "lexical_name": "actualCriticalZeroHeightHead_re_mono",
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
  "slug": "actualcriticalzeroheighthead-re-mono--15ff68ff9c06eb7f98a335d4",
  "source": {
    "blob": "08810734c3cb71868bb7c08ce88fdb815684ade2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ff68ff9c06eb7f98a335d4f3971a2eeb4ea25750c47eb31e4a2f4e594e180d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c112cba-ce83-b2ec-6609-01903518a42b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalZeroHeightHead_re_mono (A R1 R2 : ℝ) (hA : 1 ≤ A)
    (hR : R1 ≤ R2) :
    (actualCriticalZeroHeightHead A R1).re ≤ (actualCriticalZeroHeightHead A R2).re := by
  classical
  rw [actualCriticalZeroHeightHead_eq_sourceMass A R1 hA,
    actualCriticalZeroHeightHead_eq_sourceMass A R2 hA, Complex.ofReal_re, Complex.ofReal_re]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro rho hrho
    simp only [Finset.mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq] at hrho ⊢
    exact ⟨hrho.1.trans_le hR, hrho.2⟩
  · intro rho _ _
    exact mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08810734c3cb71868bb7c08ce88fdb815684ade2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
