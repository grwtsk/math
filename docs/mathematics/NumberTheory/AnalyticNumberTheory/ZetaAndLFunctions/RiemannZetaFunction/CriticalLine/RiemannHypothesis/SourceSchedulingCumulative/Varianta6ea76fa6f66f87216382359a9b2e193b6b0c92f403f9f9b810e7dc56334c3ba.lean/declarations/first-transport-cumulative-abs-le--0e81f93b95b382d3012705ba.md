# first_transport_cumulative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a779356-9f85-023f-9899-149d7f15163a",
  "kind": "theorem",
  "lexical_name": "first_transport_cumulative_abs_le",
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
  "slug": "first-transport-cumulative-abs-le--0e81f93b95b382d3012705ba",
  "source": {
    "blob": "88db11509c37ced63799bfd889fb318010b919e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e81f93b95b382d3012705ba9c869fde03d9b7909464e62a22e88fddc4b37b72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a779356-9f85-023f-9899-149d7f15163a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_transport_cumulative_abs_le (c : ℕ → ℝ) {n : ℕ}
    (b d : Fin (n + 1) → ℝ) (f g : ℝ → ℝ)
    (P : Fin (n + 1) → Fin (n + 1) → ℝ) (L : ℝ)
    (hP : ∀ i j, 0 ≤ P i j)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i)
    (hmoment : firstMoment (fun i => c i.val) b d = 0)
    (hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (ht : ∀ i j, |f (c i.val) - f (c j.val) -
        (c i.val - c j.val) * g (c j.val)| ≤ L * (c i.val - c j.val) ^ 2 / 2)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |readout (fun i => c i.val) b d f g| ≤
      L * ((∑ i, ∑ j, P i j * (c i.val - c j.val) ^ 2) / 2 +
        cumulativeCost c (extendFin (inducedDrift (fun i => c i.val) d P)) n) := by
  have hzero : (∑ j, inducedDrift (fun i => c i.val) d P j) = 0 := by
    rw [inducedDrift_total (fun i => c i.val) b d P hb, hmoment]
  have hsecond := fin_cumulative_abs_le c
    (inducedDrift (fun i => c i.val) d P) g L hzero hgap hg
  have hfirst :
      |∑ i, ∑ j, P i j * (f (c i.val) - f (c j.val) -
        (c i.val - c j.val) * g (c j.val))| ≤
      L * (∑ i, ∑ j, P i j * (c i.val - c j.val) ^ 2) / 2 := by
    calc
      _ ≤ ∑ i, ∑ j, |P i j * (f (c i.val) - f (c j.val) -
          (c i.val - c j.val) * g (c j.val))| := by
        apply (Finset.abs_sum_le_sum_abs _ _).trans
        exact Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)
      _ ≤ ∑ i, ∑ j, P i j * (L * (c i.val - c j.val) ^ 2 / 2) := by
        apply Finset.sum_le_sum
        intro i _
        apply Finset.sum_le_sum
        intro j _
        rw [abs_mul, abs_of_nonneg (hP i j)]
        exact mul_le_mul_of_nonneg_left (ht i j) (hP i j)
      _ = ∑ i, ∑ j, L * (P i j * (c i.val - c j.val) ^ 2) / 2 := by
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      _ = _ := by simp only [Finset.sum_div, Finset.mul_sum]
  rw [first_transport_identity (fun i => c i.val) b d f g P hb]
  exact (abs_add_le _ _).trans ((add_le_add hfirst hsecond).trans_eq (by ring))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88db11509c37ced63799bfd889fb318010b919e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
