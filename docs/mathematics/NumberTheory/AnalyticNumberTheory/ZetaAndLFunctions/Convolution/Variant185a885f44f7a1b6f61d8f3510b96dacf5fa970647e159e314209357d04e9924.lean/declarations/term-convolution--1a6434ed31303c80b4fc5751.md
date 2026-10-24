# term_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27db8a7-c562-70c8-ba73-b530c0f5c915",
  "kind": "lemma",
  "lexical_name": "term_convolution",
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
  "slug": "term-convolution--1a6434ed31303c80b4fc5751",
  "source": {
    "blob": "8367912755b1238b806789766a7ece118791d92c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a6434ed31303c80b4fc5751efa29f9b5bd9117865f6c83255e5478fc0bc5b02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27db8a7-c562-70c8-ba73-b530c0f5c915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma term_convolution (f g : ℕ → ℂ) (s : ℂ) (n : ℕ) :
    term (f ⍟ g) s n = ∑ p ∈ n.divisorsAntidiagonal, term f s p.1 * term g s p.2 := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  -- now `n ≠ 0`
  rw [term_of_ne_zero hn, convolution_def, Finset.sum_div]
  refine Finset.sum_congr rfl fun p hp ↦ ?_
  have ⟨hp₁, hp₂⟩ := ne_zero_of_mem_divisorsAntidiagonal hp
  rw [term_of_ne_zero hp₁, term_of_ne_zero hp₂, mul_comm_div, div_div, ← mul_div_assoc,
    ← natCast_mul_natCast_cpow, ← cast_mul, mul_comm p.2, (mem_divisorsAntidiagonal.mp hp).1]

open Set in
/-- We give an expression of the `LSeries.term` of the convolution of two functions
in terms of an a priori infinite sum over all pairs `(k, m)` with `k * m = n`
(the set we sum over is infinite when `n = 0`). This is the version needed for the
proof that `L (f ⍟ g) = L f * L g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8367912755b1238b806789766a7ece118791d92c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
