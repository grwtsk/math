# Criterion.val_p_M_ge_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:532a380c-6ba0-6899-92eb-d231c0005fc7",
  "kind": "lemma",
  "lexical_name": "Criterion.val_p_M_ge_two",
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
  "slug": "criterion-val-p-m-ge-two--fedc788cacfd6b313470f94f",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 486,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fedc788cacfd6b313470f94f41a9d0ea61d4897b82d70a39ea33b790a25a6d2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:532a380c-6ba0-6899-92eb-d231c0005fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Criterion.val_p_M_ge_two (c : Criterion) (i : Fin 3) : (c.M).factorization (c.p i) ≥ 2 := by
  have h_pi_factorization_M : (Nat.factorization (c.M)) (c.p i) =
      (Nat.factorization (4 * ∏ i, c.p i)) (c.p i) + (Nat.factorization (c.m)) (c.p i) +
      (Nat.factorization (c.L')) (c.p i) := by
    rw [show c.M = (4 * ∏ i, c.p i) * c.m * c.L' by
          exact Nat.add_zero (((4 * ∏ i, c.p i) * c.m).mul c.L'), Nat.factorization_mul,
            Nat.factorization_mul]
    iterate 3 simp [Finset.prod_ne_zero_iff.mpr fun i _ ↦ Nat.Prime.ne_zero (c.hp i),
      Nat.ne_of_gt (Criterion.m_pos c)]
    · simp only [ne_eq, _root_.mul_eq_zero, OfNat.ofNat_ne_zero, false_or, not_or]
      exact ⟨Finset.prod_ne_zero_iff.mpr fun i _ ↦ Nat.Prime.ne_zero (c.hp i),
        Nat.ne_of_gt (c.m_pos)⟩
    · exact Nat.ne_of_gt (Criterion.L'_pos c)
  simp_all only [Finset.prod_eq_prod_diff_singleton_mul (Finset.mem_univ i),
    ge_iff_le, val_p_L' c i, reduceLeDiff]
  rw [Nat.factorization_mul] <;> norm_num
  · rw [Nat.factorization_mul]
    · exact le_add_of_le_of_nonneg (le_add_of_nonneg_of_le (Nat.zero_le _)
        (Nat.one_le_iff_ne_zero.mpr <| by simp [c.hp i])) (Nat.zero_le _)
    · simp only [ne_eq, prod_eq_zero_iff, mem_sdiff, mem_univ, mem_singleton, true_and,
      not_exists, not_and]
      exact fun x hx ↦ Nat.Prime.ne_zero (c.hp x)
    · exact Nat.Prime.ne_zero (c.hp i)
  · exact ⟨Finset.prod_ne_zero_iff.mpr fun j hj ↦ Nat.Prime.ne_zero (c.hp j),
      Nat.Prime.ne_zero (c.hp i)⟩

@[blueprint
  "lem:M-basic"
  (title := "Basic properties of \\(M\\)")
  (statement := /--
  With notation as above, we have:
  \begin{enumerate}
    \item \(M < L_n\).
    \item
    \[
      1 < \frac{L_n}{M} = \Bigl(1 - \frac{r}{q_1 q_2 q_3}\Bigr)^{-1}
        < \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)^{-1}.
    \]
  \end{enumerate}
  -/)
  (proof := /--
  The first item is by construction of the division algorithm.
  For the second, note that
  \[
    L_n = q_1 q_2 q_3 L' = (4 p_1 p_2 p_3 m + r) L' > 4 p_1 p_2 p_3 m L' = M,
  \]
  since \(r>0\). For the third,
  \[
    \frac{L_n}{M} = \frac{4 p_1 p_2 p_3 m + r}{4 p_1 p_2 p_3 m}
                = 1 + \frac{r}{4 p_1 p_2 p_3 m}
                = \Bigl(1 - \frac{r}{4 p_1 p_2 p_3 m + r}\Bigr)^{-1}
                = \Bigl(1 - \frac{r}{q_1 q_2 q_3}\Bigr)^{-1}.
  \]
  Since \(0 < r < 4p_1p_2p_3\) and \(4p_1p_2p_3 < q_1q_2q_3\), we have
  \[
    0<\frac{r}{q_1 q_2 q_3}<\frac{4p_1p_2p_3}{q_1 q_2 q_3},
  \]
  so
  \[
    \Bigl(1-\frac{r}{q_1 q_2 q_3}\Bigr)^{-1}
    < \Bigl(1-\frac{4p_1p_2p_3}{q_1 q_2 q_3}\Bigr)^{-1}.
  \]
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
