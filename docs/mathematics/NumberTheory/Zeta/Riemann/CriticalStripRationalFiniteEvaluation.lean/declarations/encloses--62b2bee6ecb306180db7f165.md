# encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d960435-c779-17bb-2e79-3317ac13b4cb",
  "kind": "theorem",
  "lexical_name": "encloses",
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
  "slug": "encloses--62b2bee6ecb306180db7f165",
  "source": {
    "blob": "f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b2bee6ecb306180db7f165c81f9193a73eaf76e2d335c206ed07cdbb204d00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d960435-c779-17bb-2e79-3317ac13b4cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encloses {A : Data} {N : ℕ} {s : Gaussian} (hc : A.check N s=true) :
    ‖finiteModel N s.value-(A.center N s).value‖ ≤ (A.radius N s : ℝ) := by
  obtain ⟨hN,hlen,hpowers⟩ := (A.check_iff N s).mp hc
  have hp (k : ℕ) (hk : k ∈ Finset.Icc 1 N) :=
    RationalPowerEvaluation.Proposal.encloses (hpowers k hk)
  have hNN : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN,le_rfl⟩
  have hsum : ‖finiteDirichletPowerSum N s.value-
      ∑ k ∈ Finset.Icc 1 N, (A.item k).center.value‖ ≤
      ((∑ k ∈ Finset.Icc 1 N, (A.item k).radius : ℚ) : ℝ) := by
    unfold finiteDirichletPowerSum
    rw [← Finset.sum_sub_distrib]
    have h := (norm_sum_le _ _).trans (Finset.sum_le_sum hp)
    simpa only [Rat.cast_sum] using h
  have hm := Gaussian.norm_value_le_l1 (Gaussian.qsub s (Gaussian.ofRat 1))
  simp only [Gaussian.value_qsub,Gaussian.value_ofRat,Rat.cast_one] at hm
  have hw := Gaussian.norm_value_le_l1 (weight N s)
  rw [weight_value] at hw
  have heq : finiteModel N s.value-(A.center N s).value =
      (s.value-1)*(finiteDirichletPowerSum N s.value-
        ∑ k ∈ Finset.Icc 1 N, (A.item k).center.value)+
      weightC N s.value*((N : ℂ)^(-s.value)-(A.item N).center.value) := by
    rw [finiteModel_regroup hN]
    simp only [center,Gaussian.value_qadd,Gaussian.value_qmul,Gaussian.value_qsub,
      Gaussian.value_ofRat,Gaussian.value_qsum,weight_value,Rat.cast_one]
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul,norm_mul]
  have hs0 : (0 : ℝ) ≤ ((Gaussian.qsub s (Gaussian.ofRat 1)).l1 : ℝ) :=
    by exact_mod_cast Gaussian.l1_nonneg (Gaussian.qsub s (Gaussian.ofRat 1))
  have hw0 : (0 : ℝ) ≤ ((weight N s).l1 : ℝ) := by exact_mod_cast Gaussian.l1_nonneg (weight N s)
  have h := add_le_add (mul_le_mul hm hsum (norm_nonneg _) hs0)
    (mul_le_mul hw (hp N hNN) (norm_nonneg _) hw0)
  simpa only [radius,Rat.cast_add,Rat.cast_mul] using h

end Data

/-- Bounded data generation. It does not assert its guard or acceptance succeeds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
