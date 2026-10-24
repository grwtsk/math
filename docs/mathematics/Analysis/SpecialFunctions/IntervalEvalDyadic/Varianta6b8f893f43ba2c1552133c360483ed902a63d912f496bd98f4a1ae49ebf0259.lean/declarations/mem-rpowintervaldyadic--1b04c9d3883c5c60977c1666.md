# mem_rpowIntervalDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4570d797-6c8b-3dee-3002-82842c839370",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cfdd475-72b5-c39a-7c29-ff4bde18de8f",
  "kind": "theorem",
  "lexical_name": "mem_rpowIntervalDyadic",
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
  "slug": "mem-rpowintervaldyadic--1b04c9d3883c5c60977c1666",
  "source": {
    "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 198,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b04c9d3883c5c60977c1666c5149aeec69f0d09476b3f86aa70c6069495ff16",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfdd475-72b5-c39a-7c29-ff4bde18de8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rpowIntervalDyadic {x : ℝ} {base : IntervalDyadic} (hx : x ∈ base)
    (hpos : base.toIntervalRat.lo > 0) (p : ℚ) (cfg : DyadicConfig)
    (hprec : cfg.precision ≤ 0 := by norm_num) :
    x ^ (p : ℝ) ∈ rpowIntervalDyadic base p cfg := by
  simp only [rpowIntervalDyadic]
  -- x^p = exp(p * log(x)) for x > 0
  have hx_pos : 0 < x := by
    have hlo := hx.1
    have hlo_pos : (0 : ℝ) < base.lo.toRat := by exact_mod_cast hpos
    linarith
  rw [Real.rpow_def_of_pos hx_pos, mul_comm]  -- Use commutativity: log x * p = p * log x
  -- log(x) ∈ logIntervalDyadic base cfg
  have hlog_mem : Real.log x ∈ logIntervalDyadic base cfg := by
    simp only [logIntervalDyadic, hpos, ↓reduceIte]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp hx
    have hlog := IntervalRat.mem_logComputable hrat hpos cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hlog cfg.precision hprec
  -- p ∈ pInterval (singleton)
  have hp_mem : (p : ℝ) ∈ IntervalDyadic.ofIntervalRat (IntervalRat.singleton p) cfg.precision := by
    apply IntervalDyadic.mem_ofIntervalRat
    · exact IntervalRat.mem_singleton p
    · exact hprec
  -- p * log(x) ∈ mul result
  have hmul := IntervalDyadic.mem_mul hp_mem hlog_mem
  have hmul_rounded := IntervalDyadic.roundOut_contains hmul cfg.precision
  -- exp(p * log(x)) ∈ expIntervalDyadic
  simp only [expIntervalDyadic]
  have hrat := IntervalDyadic.mem_toIntervalRat.mp hmul_rounded
  have hexp := IntervalRat.mem_expComputable hrat cfg.taylorDepth
  exact IntervalDyadic.mem_ofIntervalRat hexp cfg.precision hprec

/-! ### Main Evaluator -/

/-- High-performance Dyadic interval evaluator.

This is the core function for v1.1. It evaluates expressions using Dyadic
arithmetic for polynomial operations (add, mul, neg) and delegates to
rational Taylor series for transcendentals.

Returns an interval guaranteed to contain all possible values of the expression
when `ExprSupportedCore` holds. For other expressions, it computes conservative
fallbacks (e.g., inv/log), but the core correctness theorem does not apply. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
