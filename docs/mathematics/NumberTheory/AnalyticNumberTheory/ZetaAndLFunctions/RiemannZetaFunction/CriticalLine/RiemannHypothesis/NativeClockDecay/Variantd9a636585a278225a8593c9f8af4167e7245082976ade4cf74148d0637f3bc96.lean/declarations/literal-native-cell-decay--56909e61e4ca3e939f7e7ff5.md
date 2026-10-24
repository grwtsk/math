# literal_native_cell_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:890acf79-708f-ee07-9ae1-a19c3a044212",
  "kind": "theorem",
  "lexical_name": "literal_native_cell_decay",
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
  "slug": "literal-native-cell-decay--56909e61e4ca3e939f7e7ff5",
  "source": {
    "blob": "8ee69de9948a8b0906034afcc31ca26127a3bd1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56909e61e4ca3e939f7e7ff5ac4ba3fae8a98a98b624f54db0cdbe4c89b7526f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:890acf79-708f-ee07-9ae1-a19c3a044212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_cell_decay {n : ℕ} (hn : 1 ≤ n) :
    cellClock n (n + 1 : ℕ) ≤ 1 / ((n : ℝ) * Real.sqrt n) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  have ha : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hn0
  have hb : 0 < Real.sqrt (n + 1 : ℕ) := by positivity
  have ha2 := Real.sq_sqrt hn0.le
  have hb2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hab : Real.sqrt (n : ℝ) ≤ Real.sqrt (n + 1 : ℕ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ n)
  have hs : 2 * Real.sqrt (n : ℝ) *
      (Real.sqrt (n + 1 : ℕ) - Real.sqrt n) ≤ 1 := by
    have hb2' : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 :=
      hb2.trans (by push_cast; rfl)
    nlinarith [sq_nonneg (Real.sqrt (n + 1 : ℕ) - Real.sqrt n)]
  have hmul := mul_le_mul_of_nonneg_left hs ha.le
  have hcombine : 2 * (n : ℝ) *
      (Real.sqrt (n + 1 : ℕ) - Real.sqrt n) ≤ Real.sqrt (n + 1 : ℕ) := by
    nlinarith [hmul]
  unfold cellClock
  apply (le_div_iff₀ (mul_pos hn0 ha)).mpr
  have hneq : Real.sqrt (n : ℝ) ≠ 0 := ha.ne'
  have hneq1 : Real.sqrt (n + 1 : ℕ) ≠ 0 := hb.ne'
  field_simp
  nlinarith [hcombine]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee69de9948a8b0906034afcc31ca26127a3bd1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
