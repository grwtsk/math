# actualNegativeEdgeMangoldtBlock_eventually_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fa281ea-3f51-b734-f18e-03223cbc6666",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeMangoldtBlock_eventually_negative",
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
  "slug": "actualnegativeedgemangoldtblock-eventually-negative--37a61b53f0e6282054ac734e",
  "source": {
    "blob": "3ad5ff824e44628d32b5ba4d9599841e1e5ae9c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variant85f86125bb50017500b2802371af5d735d0eb30be97e256b22efc0b39ed97920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a61b53f0e6282054ac734e7367bf769160ff4dfe2fcd9ce11bef88f906b619",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variant85f86125bb50017500b2802371af5d735d0eb30be97e256b22efc0b39ed97920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa281ea-3f51-b734-f18e-03223cbc6666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeMangoldtBlock_eventually_negative :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeMangoldtBlock A ≤
        -actualNegativeEdgeConstant * Real.exp A / A ^ 9 := by
  obtain ⟨R, hR, hmass⟩ := actualNegativeEdgeMass_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hs : actualNegativeEdgeMangoldtBlock A ≤
      -(∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) /
        (A ^ 9 * Real.exp A) := by
    unfold actualNegativeEdgeMangoldtBlock
    rw [Finset.sum_neg_distrib, Finset.sum_div]
    apply Finset.sum_le_sum
    intro n hn
    have hw := mul_le_mul_of_nonneg_left (edge_atom_weight (hR.trans hA) hn)
      (vonMangoldt_nonneg (n := n))
    convert hw using 1 <;> ring
  have hb := neg_le_neg (div_le_div_of_nonneg_right (hmass A hA)
    (by positivity : 0 ≤ A ^ 9 * Real.exp A))
  refine hs.trans ?_
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [show 2 * A = A + A by ring, Real.exp_add]
  rw [he] at hb
  convert hb using 1 <;> field_simp <;> ring

/-- The complete unchanged residual retains the entire complementary closed inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variant85f86125bb50017500b2802371af5d735d0eb30be97e256b22efc0b39ed97920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variant85f86125bb50017500b2802371af5d735d0eb30be97e256b22efc0b39ed97920.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad5ff824e44628d32b5ba4d9599841e1e5ae9c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
