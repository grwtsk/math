# thetaTailSignRegular_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c8d15ee-5c4f-1cfc-0975-f073c861aa92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60f7ef17-572a-96bb-921b-ad7648e6217e",
  "kind": "theorem",
  "lexical_name": "thetaTailSignRegular_three",
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
  "slug": "thetatailsignregular-three--1e2d30449b1f67b0f518887a",
  "source": {
    "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 294,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2d30449b1f67b0f518887a14ec06ccfecc62a69d6d1d71d57fe956592719f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f7ef17-572a-96bb-921b-ad7648e6217e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailSignRegular_three
    (q : Fin 3 ↪o ℕ) (t : Fin 3 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  let A : ℕ → ℝ := fun n => thetaTail (2 * n) (t 1) / thetaTail (2 * n) (t 0)
  let B : ℕ → ℝ := fun n => thetaTail (2 * n) (t 2) / thetaTail (2 * n) (t 0)
  have h01 : t 0 < t 1 := t.strictMono (by decide)
  have h12 : t 1 < t 2 := t.strictMono (by decide)
  have hA : ∀ n, A (n + 1) < A n := by
    intro n
    exact thetaTail_even_nodeRatio_step (ht 0) h01 n
  have hdet : ∀ n,
      Matrix.det !![1, 1, 1;
        A n, A (n + 1), A (n + 2);
        B n, B (n + 1), B (n + 2)] ≤ 0 := by
    intro n
    have hd := thetaTail_rankThree_consecutive_shift (2 * n)
      (ht 0) h01 h12
    let M : Matrix (Fin 3) (Fin 3) ℝ :=
      !![thetaTail (2 * n) (t 0), thetaTail (2 * n) (t 1),
        thetaTail (2 * n) (t 2);
        thetaTail (2 * n + 2) (t 0), thetaTail (2 * n + 2) (t 1),
        thetaTail (2 * n + 2) (t 2);
        thetaTail (2 * n + 4) (t 0), thetaTail (2 * n + 4) (t 1),
        thetaTail (2 * n + 4) (t 2)]
    have hf := det_fin_three_normalize_first_column M (by
      intro i
      fin_cases i
      · exact (thetaTail_positive (2 * n) (ht 0)).ne'
      · exact (thetaTail_positive (2 * n + 2) (ht 0)).ne'
      · exact (thetaTail_positive (2 * n + 4) (ht 0)).ne')
    have hpos : 0 <
        thetaTail (2 * n) (t 0) *
          thetaTail (2 * n + 2) (t 0) *
            thetaTail (2 * n + 4) (t 0) :=
      mul_pos (mul_pos (thetaTail_positive (2 * n) (ht 0))
        (thetaTail_positive (2 * n + 2) (ht 0)))
        (thetaTail_positive (2 * n + 4) (ht 0))
    have hnorm : Matrix.det !![1, 1, 1;
        thetaTail (2 * n) (t 1) / thetaTail (2 * n) (t 0),
        thetaTail (2 * n + 2) (t 1) / thetaTail (2 * n + 2) (t 0),
        thetaTail (2 * n + 4) (t 1) / thetaTail (2 * n + 4) (t 0);
        thetaTail (2 * n) (t 2) / thetaTail (2 * n) (t 0),
        thetaTail (2 * n + 2) (t 2) / thetaTail (2 * n + 2) (t 0),
        thetaTail (2 * n + 4) (t 2) / thetaTail (2 * n + 4) (t 0)] ≤ 0 := by
      change M.det ≤ 0 at hd
      rw [hf] at hd
      have hposM : 0 < M 0 0 * M 1 0 * M 2 0 := by
        simpa [M] using hpos
      have hraw := nonpos_of_mul_nonpos_right hd hposM
      simpa [M] using hraw
    simpa [A, B, Nat.mul_add, Nat.mul_one, Nat.add_assoc] using hnorm
  have hnorm := normalized_det_nonpos_of_consecutive A B hA hdet
    (q.strictMono (by decide : (0 : Fin 3) < 1))
    (q.strictMono (by decide : (1 : Fin 3) < 2))
  let M : Matrix (Fin 3) (Fin 3) ℝ :=
    fun i j => thetaTail (2 * q i) (t j)
  have hf := det_fin_three_normalize_first_column M (by
    intro i
    exact (thetaTail_positive (2 * q i) (ht 0)).ne')
  have hfactor : 0 <
      thetaTail (2 * q 0) (t 0) *
        thetaTail (2 * q 1) (t 0) *
          thetaTail (2 * q 2) (t 0) :=
    mul_pos (mul_pos (thetaTail_positive (2 * q 0) (ht 0))
      (thetaTail_positive (2 * q 1) (ht 0)))
      (thetaTail_positive (2 * q 2) (ht 0))
  have hm : Matrix.det !![1, 1, 1;
      A (q 0), A (q 1), A (q 2);
      B (q 0), B (q 1), B (q 2)] ≤ 0 := hnorm
  have hmM : Matrix.det !![1, 1, 1;
      M 0 1 / M 0 0, M 1 1 / M 1 0, M 2 1 / M 2 0;
      M 0 2 / M 0 0, M 1 2 / M 1 0, M 2 2 / M 2 0] ≤ 0 := by
    simpa [M, A, B] using hm
  have hfactorM : 0 < M 0 0 * M 1 0 * M 2 0 := by
    simpa [M] using hfactor
  change 0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) * M.det
  rw [hf]
  norm_num
  exact mul_nonpos_of_nonneg_of_nonpos hfactorM.le hmM

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33344b7a94a578a5b27e03f9e0eccd5f6e641f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
