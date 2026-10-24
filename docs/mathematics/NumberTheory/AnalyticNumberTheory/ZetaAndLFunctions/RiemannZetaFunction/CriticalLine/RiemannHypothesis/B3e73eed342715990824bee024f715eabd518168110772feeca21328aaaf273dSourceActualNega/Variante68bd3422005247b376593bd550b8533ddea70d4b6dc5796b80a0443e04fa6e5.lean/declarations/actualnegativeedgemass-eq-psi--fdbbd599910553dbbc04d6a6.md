# actualNegativeEdgeMass_eq_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba346d0a-1f95-2078-355c-d2e6f777365e",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeMass_eq_psi",
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
  "slug": "actualnegativeedgemass-eq-psi--fdbbd599910553dbbc04d6a6",
  "source": {
    "blob": "34fd9ba0776dc8c06e2d7e8a7780c50ea8d378c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdbbd599910553dbbc04d6a60996d82f8ce3b0387a1cbaea1ebc0531ef588843",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba346d0a-1f95-2078-355c-d2e6f777365e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeMass_eq_psi (A : ℝ) :
    (∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) =
      Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13)) := by
  have hf : ⌊Real.exp (2 * A - 13)⌋₊ ≤ ⌊Real.exp (2 * A - 12)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  rw [actualNegativeEdgeWindow, Chebyshev.psi, Chebyshev.psi]
  have hI : Finset.Ioc 0 ⌊Real.exp (2 * A - 12)⌋₊ =
      Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊ ∪
        Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊ := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hdis : Disjoint (Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊)
      (Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊) := by
    exact Finset.disjoint_left.mpr (by
      intro n hn hm
      have := Finset.mem_Ioc.mp hn
      have := Finset.mem_Ioc.mp hm
      omega)
  rw [hI, Finset.sum_union hdis]
  ring

/-- Genuine PNT gives a relative lower mass for every sufficiently large real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B3e73eed342715990824bee024f715eabd518168110772feeca21328aaaf273dSourceActualNega/Variante68bd3422005247b376593bd550b8533ddea70d4b6dc5796b80a0443e04fa6e5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34fd9ba0776dc8c06e2d7e8a7780c50ea8d378c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
