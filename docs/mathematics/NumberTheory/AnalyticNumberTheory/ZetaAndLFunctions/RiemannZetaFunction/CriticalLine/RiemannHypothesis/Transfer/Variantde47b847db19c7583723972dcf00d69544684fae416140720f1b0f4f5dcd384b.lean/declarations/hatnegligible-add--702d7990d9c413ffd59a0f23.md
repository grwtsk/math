# HatNegligible.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deac986d-8092-3eec-dc61-7f5d9ffb21f0",
  "kind": "theorem",
  "lexical_name": "HatNegligible.add",
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
  "slug": "hatnegligible-add--702d7990d9c413ffd59a0f23",
  "source": {
    "blob": "32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702d7990d9c413ffd59a0f2390857f697065f19c95b12cc670c58051bfb48256",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deac986d-8092-3eec-dc61-7f5d9ffb21f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HatNegligible.add {Z : ZeroConfig} {Pf : ℝ → Params}
    {A B : (T : ℝ) → Matrix (Fin ((Pf T).d T)) (Fin ((Pf T).d T)) ℂ}
    (hA : HatNegligible Z Pf A) (hB : HatNegligible Z Pf B) :
    HatNegligible Z Pf (fun T => A T + B T) := by
  intro η hη
  filter_upwards [hA (η / 2) (by positivity), hB (η / 2) (by positivity)] with T hAT hBT
  have hN : (0:ℝ) ≤ (Z.N T (2 * T) : ℝ) := Nat.cast_nonneg _
  rw [hat_add']
  constructor
  · rw [rtrace_add]
    calc |rtrace ((Pf T).hat T (A T)) + rtrace ((Pf T).hat T (B T))|
        ≤ |rtrace ((Pf T).hat T (A T))| + |rtrace ((Pf T).hat T (B T))| := abs_add_le _ _
      _ ≤ η / 2 * (Z.N T (2 * T) : ℝ) + η / 2 * (Z.N T (2 * T) : ℝ) := add_le_add hAT.1 hBT.1
      _ = η * (Z.N T (2 * T) : ℝ) := by ring
  · have hsN := Real.sqrt_nonneg (Z.N T (2 * T) : ℝ)
    have ha : ‖(Pf T).hat T (A T)‖ ≤ η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
      rw [Assembly.norm_eq_sqrt_frobSq]
      calc Real.sqrt (frobSq ((Pf T).hat T (A T))) ≤ Real.sqrt ((η / 2) ^ 2 * (Z.N T (2 * T) : ℝ)) :=
            Real.sqrt_le_sqrt hAT.2
        _ = η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
            rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    have hb : ‖(Pf T).hat T (B T)‖ ≤ η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
      rw [Assembly.norm_eq_sqrt_frobSq]
      calc Real.sqrt (frobSq ((Pf T).hat T (B T))) ≤ Real.sqrt ((η / 2) ^ 2 * (Z.N T (2 * T) : ℝ)) :=
            Real.sqrt_le_sqrt hBT.2
        _ = η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
            rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    rw [Assembly.frobSq_eq_norm_sq]
    calc ‖(Pf T).hat T (A T) + (Pf T).hat T (B T)‖ ^ 2
        ≤ (η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) + η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ)) ^ 2 := by
          apply pow_le_pow_left₀ (norm_nonneg _)
          exact (norm_add_le _ _).trans (add_le_add ha hb)
      _ = η ^ 2 * (Z.N T (2 * T) : ℝ) := by
          rw [show η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) + η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ)
              = η * Real.sqrt (Z.N T (2 * T) : ℝ) by ring, mul_pow, Real.sq_sqrt hN]

/-- a family congruent to a HatNegligible one is HatNegligible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
