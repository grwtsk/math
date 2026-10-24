# log_one_add_nat_upperSublinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dae65cd-28c9-eaab-79f8-c3c5be3cb7c8",
  "kind": "theorem",
  "lexical_name": "log_one_add_nat_upperSublinear",
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
  "slug": "log-one-add-nat-uppersublinear--284c15a8254c1086b3e9f04f",
  "source": {
    "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:284c15a8254c1086b3e9f04f75e96b82d323d2fd43e25c8f652649a7d063da9d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrencec507ae2f60ddd596db274801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dae65cd-28c9-eaab-79f8-c3c5be3cb7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_add_nat_upperSublinear :
    UpperSublinear (fun n : ℕ => Real.log (1+(n:ℝ))) := by
  intro ε hε
  obtain ⟨K, hK⟩ := exists_nat_ge (4/ε^2)
  refine ⟨max 1 K, ?_⟩
  intro n hn
  have hnK : K ≤ n := (le_max_right 1 K).trans hn
  have hb : 4/ε^2 ≤ (n:ℝ) := hK.trans (by exact_mod_cast hnK)
  have hε2 : 0 < ε^2 := sq_pos_of_pos hε
  have he := (div_le_iff₀ hε2).mp hb
  have hs := Real.sq_sqrt (Nat.cast_nonneg n : (0:ℝ) ≤ n)
  have hsn := Real.sqrt_nonneg (n:ℝ)
  have hp : 0 ≤ ε*Real.sqrt (n:ℝ) := mul_nonneg hε.le hsn
  have hh : (ε*Real.sqrt (n:ℝ))^2 = ε^2*(n:ℝ) := by rw [mul_pow, hs]
  have hlower : 2 ≤ ε*Real.sqrt (n:ℝ) := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hlower hsn
  have hlog := log_one_add_le_two_sqrt (n:ℝ) (Nat.cast_nonneg n)
  nlinarith

/-- Both residual formulations have the same subexponential growth content.
The scalar comparison assumptions must be instantiated from the actual spectrum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrencec507ae2f60ddd596db274801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
