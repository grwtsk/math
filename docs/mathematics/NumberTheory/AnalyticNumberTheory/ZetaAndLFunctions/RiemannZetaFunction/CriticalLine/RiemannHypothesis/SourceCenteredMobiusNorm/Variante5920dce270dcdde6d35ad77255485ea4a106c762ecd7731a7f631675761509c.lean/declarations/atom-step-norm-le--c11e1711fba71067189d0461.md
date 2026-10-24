# atom_step_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "501f635886e2b499f0102e241753707c1f7b2b96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5920dce270dcdde6d35ad77255485ea4a106c762ecd7731a7f631675761509c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5faa36f-d3db-a7a3-705e-275331e5cbee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94c539a5-ccf6-7082-3675-e272e50fcf4b",
  "kind": "theorem",
  "lexical_name": "atom_step_norm_le",
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
  "slug": "atom-step-norm-le--c11e1711fba71067189d0461",
  "source": {
    "blob": "501f635886e2b499f0102e241753707c1f7b2b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variante5920dce270dcdde6d35ad77255485ea4a106c762ecd7731a7f631675761509c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11e1711fba71067189d0461ba44e51c7588dbb2d71a4e3338025516467f7bce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variante5920dce270dcdde6d35ad77255485ea4a106c762ecd7731a7f631675761509c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c539a5-ccf6-7082-3675-e272e50fcf4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem atom_step_norm_le {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    ‖atom A hp n - atom A hp (n + 1)‖ ≤
      (1 + 10 / A) *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hm0 : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have hnm : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  have hd : 0 ≤ 1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ) :=
    sub_nonneg.mpr (one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0)
      (Real.sqrt_le_sqrt hnm))
  have hl : 0 ≤ Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) :=
    sub_nonneg.mpr (Real.log_le_log hn0 hnm)
  have hs := shift_sub_norm_le hA hp (Real.log (n : ℝ)) (Real.log ((n + 1 : ℕ) : ℝ))
  rw [abs_of_nonneg hl] at hs
  have he : atom A hp n - atom A hp (n + 1) =
      (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
        shift A hp (Real.log (n : ℝ)) +
      (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
        (shift A hp (Real.log (n : ℝ)) - shift A hp (Real.log ((n + 1 : ℕ) : ℝ))) := by
    simp only [atom, sub_smul, smul_sub]
    abel
  rw [he]
  calc
    _ ≤ ‖(1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
          shift A hp (Real.log (n : ℝ))‖ +
        ‖(1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
          (shift A hp (Real.log (n : ℝ)) -
            shift A hp (Real.log ((n + 1 : ℕ) : ℝ)))‖ := norm_add_le _ _
    _ ≤ (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) *
          (5 * (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) / A) := by
      simp only [norm_smul, Real.norm_eq_abs, abs_of_nonneg hd,
        abs_of_nonneg (by positivity : 0 ≤ 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)),
        shift_norm hA hp, mul_one]
      exact add_le_add_left (mul_le_mul_of_nonneg_left hs (by positivity)) _
    _ = (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (5 / A) * ((Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) /
          Real.sqrt ((n + 1 : ℕ) : ℝ)) := by ring
    _ ≤ (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (5 / A) * (2 * (1 / Real.sqrt (n : ℝ) -
          1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) := by
      exact add_le_add_left (mul_le_mul_of_nonneg_left (log_step_le hn) (by positivity)) _
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variante5920dce270dcdde6d35ad77255485ea4a106c762ecd7731a7f631675761509c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variante5920dce270dcdde6d35ad77255485ea4a106c762ecd7731a7f631675761509c.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `501f635886e2b499f0102e241753707c1f7b2b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
