# MellinConvergent.comp_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d9422a-bbe1-cb04-fd5c-a644a05e557a",
  "kind": "theorem",
  "lexical_name": "MellinConvergent.comp_mul_left",
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
  "slug": "mellinconvergent-comp-mul-left--bd786bc0c9736c1cd3ed0980",
  "source": {
    "blob": "25b9ec15830990f700c9e5dd190ee90ccf39262c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd786bc0c9736c1cd3ed09809e7d358e580c1fbd0d11ab1eae42ad955bb1d816",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d9422a-bbe1-cb04-fd5c-a644a05e557a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MellinConvergent.comp_mul_left {f : ℝ → E} {s : ℂ} {a : ℝ} (ha : 0 < a) :
    MellinConvergent (fun t => f (a * t)) s ↔ MellinConvergent f s := by
  have := integrableOn_Ioi_comp_mul_left_iff (fun t : ℝ => (t : ℂ) ^ (s - 1) • f t) 0 ha
  rw [mul_zero] at this
  have h1 : EqOn (fun t : ℝ => (↑(a * t) : ℂ) ^ (s - 1) • f (a * t))
      ((a : ℂ) ^ (s - 1) • fun t : ℝ => (t : ℂ) ^ (s - 1) • f (a * t)) (Ioi 0) := fun t ht ↦ by
    simp only [ofReal_mul, mul_cpow_ofReal_nonneg ha.le (le_of_lt ht), mul_smul, Pi.smul_apply]
  have h2 : (a : ℂ) ^ (s - 1) ≠ 0 := by
    rw [Ne.def, cpow_eq_zero_iff, not_and_or, ofReal_eq_zero]
    exact Or.inl ha.ne'
  rw [MellinConvergent, MellinConvergent, ← this, integrableOn_congr_fun h1 measurableSet_Ioi,
    IntegrableOn, IntegrableOn, integrable_smul_iff h2]
#align mellin_convergent.comp_mul_left MellinConvergent.comp_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b9ec15830990f700c9e5dd190ee90ccf39262c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
