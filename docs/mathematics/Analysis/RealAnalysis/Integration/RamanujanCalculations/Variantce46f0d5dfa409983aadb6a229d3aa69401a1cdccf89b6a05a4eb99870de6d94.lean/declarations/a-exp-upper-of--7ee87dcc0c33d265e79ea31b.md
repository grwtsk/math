# a_exp_upper_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58064956-8d5a-7981-9080-2f75fbccfb62",
  "kind": "theorem",
  "lexical_name": "a_exp_upper_of",
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
  "slug": "a-exp-upper-of--7ee87dcc0c33d265e79ea31b",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 691,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee87dcc0c33d265e79ea31b1505ab1245f17c7b3db5093116f6cac08776c489",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58064956-8d5a-7981-9080-2f75fbccfb62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a_exp_upper_of
    {a : ℝ → ℝ}
    (ha_eq_admissible_ge_3000 :
      ∀ {z : ℝ}, z ≥ exp 3000 →
        a z = admissible_bound (379.7 * 5.573412 ^ 5) 6.52 1.89 5.573412 z)
    {L C : ℝ}
    (hL : 3000 ≤ L)
    (hpow5 : (5.573412 : ℝ) ^ (5 : ℕ) * ((L / 5.573412) ^ (5 : ℕ)) = L ^ (5 : ℕ))
    (haux : ∀ y ∈ Set.Icc L L, styleVal y ≤ C) :
    a (exp L) ≤ C := by
  have hLpos : 0 < L := by linarith
  rw [ha_eq_admissible_ge_3000 (z := exp L) (exp_le_exp.mpr hL)]
  unfold admissible_bound
  rw [log_exp, rpow_652_split (by positivity : 0 < L / 5.573412),
    sqrt_ratio_5573412 (y := L) hLpos.le]
  let A : ℝ := (L / 5.573412) ^ (1.52 : ℝ)
  let E : ℝ := exp (-(1.89 : ℝ) * (sqrt L / sqrt (5.573412 : ℝ)))
  have hrewrite :
      (379.7 * 5.573412 ^ 5) * ((L / 5.573412) ^ 5 * A) * E
      = L ^ 5 * ((379.7 : ℝ) * A * E) := by
    calc
      (379.7 * 5.573412 ^ 5) * ((L / 5.573412) ^ 5 * A) * E
          = (5.573412 ^ 5 * (L / 5.573412) ^ 5) * ((379.7 : ℝ) * A * E) := by
              ring
      _ = L ^ 5 * ((379.7 : ℝ) * A * E) := by rw [hpow5]
  rw [hrewrite, style_eq L hLpos]
  exact haux L ⟨le_rfl, le_rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
