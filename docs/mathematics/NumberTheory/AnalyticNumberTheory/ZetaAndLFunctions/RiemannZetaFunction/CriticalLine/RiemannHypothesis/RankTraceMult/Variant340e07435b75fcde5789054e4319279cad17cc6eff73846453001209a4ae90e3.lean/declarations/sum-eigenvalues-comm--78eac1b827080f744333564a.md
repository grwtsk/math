# sum_eigenvalues_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8316ad8-c883-7058-9f49-55dca9499554",
  "kind": "theorem",
  "lexical_name": "sum_eigenvalues_comm",
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
  "slug": "sum-eigenvalues-comm--78eac1b827080f744333564a",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78eac1b827080f744333564abccff87c431161bd70a4c7bc2e5250860df8c95c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8316ad8-c883-7058-9f49-55dca9499554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eigenvalues_comm (W : Matrix n ι 𝕜) (g : ℝ → ℝ) (hg : g 0 = 0) :
    ∑ i, g ((Matrix.posSemidef_self_mul_conjTranspose W).1.eigenvalues i)
      = ∑ j, g ((Matrix.posSemidef_conjTranspose_mul_self W).1.eigenvalues j) := by
  classical
  set lam := (Matrix.posSemidef_self_mul_conjTranspose W).1.eigenvalues
  set mu := (Matrix.posSemidef_conjTranspose_mul_self W).1.eigenvalues
  set nodes : Finset ℝ := insert 0 ((Finset.univ.image lam) ∪ (Finset.univ.image mu)) with hnodes
  set q : ℝ[X] := Lagrange.interpolate nodes id g with hqdef
  have hinj : Set.InjOn (id : ℝ → ℝ) nodes := fun _ _ _ _ h => h
  have hq : ∀ x ∈ nodes, q.eval x = g x := fun x hx => by
    rw [hqdef]
    simpa only [id_eq] using Lagrange.eval_interpolate_at_node (r := g) hinj hx
  have hq0 : q.eval 0 = 0 := by rw [hq 0 (Finset.mem_insert_self _ _), hg]
  have hlam : ∀ i, lam i ∈ nodes := fun i =>
    Finset.mem_insert_of_mem (Finset.mem_union_left _ (Finset.mem_image_of_mem _ (Finset.mem_univ i)))
  have hmu : ∀ j, mu j ∈ nodes := fun j =>
    Finset.mem_insert_of_mem (Finset.mem_union_right _ (Finset.mem_image_of_mem _ (Finset.mem_univ j)))
  calc ∑ i, g (lam i) = ∑ i, q.eval (lam i) := Finset.sum_congr rfl fun i _ => (hq _ (hlam i)).symm
    _ = ∑ j, q.eval (mu j) := sum_eval_eigenvalues_comm W q hq0
    _ = ∑ j, g (mu j) := Finset.sum_congr rfl fun j _ => hq _ (hmu j)

end Transfer

/-! ### (D) Lemma R -/

section Main
open RHLinalg

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n] {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- the d×s matrix with columns √m_j · v_j. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
