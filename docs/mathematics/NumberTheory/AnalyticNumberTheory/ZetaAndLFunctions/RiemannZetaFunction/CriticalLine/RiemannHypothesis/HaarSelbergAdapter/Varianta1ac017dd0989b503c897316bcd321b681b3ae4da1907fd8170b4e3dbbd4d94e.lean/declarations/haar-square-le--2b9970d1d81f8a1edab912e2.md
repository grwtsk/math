# haar_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19db0d8c-7c34-3e23-783b-9ea0fb7b2814",
  "kind": "theorem",
  "lexical_name": "haar_square_le",
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
  "slug": "haar-square-le--2b9970d1d81f8a1edab912e2",
  "source": {
    "blob": "4dfb6fe2b9c8231af5f5d1df082eac6897fc9baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9970d1d81f8a1edab912e200cf92284be5be0b5371487d6e7bc67a2e574577",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19db0d8c-7c34-3e23-783b-9ea0fb7b2814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem haar_square_le (B : ℕ → ℝ) (a h : ℕ) (hh : 0 < h) :
    (uniformHaar B a h) ^ 2 ≤ (1 / 2 : ℝ) *
      ∑ r ∈ Finset.range h, (blockError B (a + r) h) ^ 2 := by
  have hhr : (0 : ℝ) < h := by exact_mod_cast hh
  have hcs := WeightedHodge.finite_refinement_mono (Finset.range h) (fun _ => (1 : ℝ))
    (fun r => blockError B (a + r) h) (by intros; norm_num) (by simpa using hhr.ne')
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_one, div_one] at hcs
  have hsum := (div_le_iff₀ hhr).mp hcs
  rw [haar_eq_block_errors, div_pow, neg_sq, Real.sq_sqrt (by positivity)]
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * h)).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfb6fe2b9c8231af5f5d1df082eac6897fc9baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
