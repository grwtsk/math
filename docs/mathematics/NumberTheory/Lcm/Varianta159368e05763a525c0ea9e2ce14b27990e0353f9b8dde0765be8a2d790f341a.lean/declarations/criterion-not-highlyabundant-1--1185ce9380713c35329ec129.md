# Criterion.not_highlyAbundant_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66f479fb-a7a3-41d6-3b54-da0d4cbc61a6",
  "kind": "theorem",
  "lexical_name": "Criterion.not_highlyAbundant_1",
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
  "slug": "criterion-not-highlyabundant-1--1185ce9380713c35329ec129",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 707,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1185ce9380713c35329ec1290d9b6fd564509821c929001b9ca86e21688d834b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66f479fb-a7a3-41d6-3b54-da0d4cbc61a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.not_highlyAbundant_1 (c : Criterion)
    (h : σnorm c.M * (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i)) ≥ σnorm (L c.n)) :
    ¬HighlyAbundant (L c.n) := by
  intro hHA
  have hM_pos : (0 : ℝ) < c.M := cast_pos.mpr c.M_pos
  have hLn_pos : (0 : ℝ) < L c.n := cast_pos.mpr c.L_pos
  have hσnorm_Ln_pos : 0 < σnorm (L c.n) := by
    rw [σnorm]; exact div_pos (cast_pos.mpr <| by rw [σ, sigma_pos_iff]; exact c.L_pos) hLn_pos
  have hprod_q_pos : (0 : ℝ) < (∏ i, c.q i) := cast_pos.mpr (prod_pos fun i _ ↦ (c.hq i).pos)
  have h1_sub_pos : (0 : ℝ) < 1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i) := by
    rw [sub_pos, div_lt_one hprod_q_pos]; exact_mod_cast c.prod_p_le_prod_q
  have h1_sub_lt : 1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i) < c.M / L c.n := by
    have hinv_lt := c.Ln_div_M_lt
    rw [lt_inv_comm₀ (div_pos hLn_pos hM_pos) h1_sub_pos, inv_div] at hinv_lt
    exact hinv_lt
  have hσM_gt : (σ c.M : ℝ) > σ (L c.n) := by
    have hσnorm_gt : σnorm c.M > σnorm (L c.n) * (L c.n / c.M) :=
      calc σnorm c.M ≥ σnorm (L c.n) / (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i)) := by
            rw [ge_iff_le, div_le_iff₀ h1_sub_pos]; exact h
        _ > σnorm (L c.n) / (c.M / L c.n) := by gcongr
        _ = σnorm (L c.n) * (L c.n / c.M) := by rw [div_div_eq_mul_div, mul_div_assoc]
    calc (σ c.M : ℝ) = σnorm c.M * c.M := by field_simp [σnorm]
      _ > σnorm (L c.n) * (L c.n / c.M) * c.M := by nlinarith
      _ = σ (L c.n) := by field_simp [σnorm, c.M_pos.ne']
  exact not_lt.mpr (cast_lt.mp hσM_gt).le (hHA c.M c.M_lt)

blueprint_comment /--
Combining Lemma \ref{lem:criterion-sufficient} with Lemma \ref{lem:sigmaLn}, we see that it
suffices to bound \(\sigma(M)/M\) from below in terms of \(\sigma(L')/L'\):
-/

@[blueprint
  "lem:criterion-reduced"
  (title := "Reduction to a lower bound for \\(\\sigma(M)/M\\)")
  (statement := /--
  If
  \begin{equation}\label{eq:sigmaM-lower}
    \frac{\sigma(M)}{M}
    \;\ge\;
    \frac{\sigma(L')}{L'}
    \Biggl( \prod_{i=1}^3 \Bigl(1+\frac{1}{p_i(p_i+1)}\Bigr) \Biggr)
    \Bigl(1 + \frac{3}{8n}\Bigr),
  \end{equation}
  then $L_n$ is not highly abundant.
  -/)
  (proof := /--
  Insert \eqref{eq:sigmaM-lower} and \eqref{eq:sigmaLn} into the desired inequality and compare
  with the assumed bound \eqref{eq:main-ineq}; this is a straightforward rearrangement.
  -/)
  (proofUses := ["lem:sigmaLn", "lem:criterion-sufficient"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
