# sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72386a17-5a48-fb69-b5f5-2dddca5ec0df",
  "kind": "theorem",
  "lexical_name": "sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel",
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
  "slug": "sum-stdaddchar-neg-mul-reciprocalweight-ico-eq-abel--6296713cdb97c487fe64c435",
  "source": {
    "blob": "eae3fa546b9a840cdf165382f97b80952c06d8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 107,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6296713cdb97c487fe64c43584730d768916d2b10a720e125a014a6f4cb515f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72386a17-5a48-fb69-b5f5-2dddca5ec0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel
    (t : ZMod q) (A B R : ℕ) (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      (finiteCyclicReciprocalWeight R n : ℂ) *
        ZMod.stdAddChar (-((n : ZMod q) * t))) =
      (finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t))) := by
  classical
  let g : ℕ → ℂ := fun n =>
    if A ≤ n then ZMod.stdAddChar (-((n : ZMod q) * t)) else 0
  have hpartial (K : ℕ) :
      (∑ n ∈ Finset.range K, g n) =
        ∑ n ∈ Finset.Ico A K,
          ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    unfold g
    rw [← Finset.sum_filter]
    have hset :
        (Finset.range K).filter (fun n => A ≤ n) = Finset.Ico A K := by
      ext n
      simp [Finset.mem_Ico]
    rw [hset]
  have hparts :=
    Finset.sum_Ico_by_parts
      (fun n => (finiteCyclicReciprocalWeight R n : ℂ)) g hAB
  simp only [smul_eq_mul] at hparts
  simp_rw [hpartial] at hparts
  have hleft :
      (∑ n ∈ Finset.Ico A B,
        (finiteCyclicReciprocalWeight R n : ℂ) * g n) =
        ∑ n ∈ Finset.Ico A B,
          (finiteCyclicReciprocalWeight R n : ℂ) *
            ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hAn : A ≤ n := (Finset.mem_Ico.mp hn).1
    simp [g, hAn]
  rw [hleft] at hparts
  rw [hparts]
  simp only [Finset.Ico_self, Finset.sum_empty, mul_zero, sub_zero]
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  apply congrArg (fun z =>
    (finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) + z)
  apply Finset.sum_congr rfl
  intro k _hk
  push_cast
  ring

/-- Dirichlet--Abel estimate for the real reciprocal weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae3fa546b9a840cdf165382f97b80952c06d8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
