# eventually_N_le_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ed37144-bc6d-ba1f-c57d-f37a351f8d0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9506de8-9a9c-ba26-39a4-274103bb1fd6",
  "kind": "lemma",
  "lexical_name": "eventually_N_le_chi",
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
  "slug": "eventually-n-le-chi--8cf2c8b71454b3a812dee5ce",
  "source": {
    "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf2c8b71454b3a812dee5ce4826f7f70e10a3103036be47e318a7f88dea156a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9506de8-9a9c-ba26-39a4-274103bb1fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_N_le_chi (hq : 1 ≤ q) (hR : RiemannVonMangoldtChi q Z) :
    ∀ᶠ T in atTop, (Z.N T (2 * T) : ℝ) ≤ (1 + cq q) * (T * l T) := by
  obtain ⟨C, T₀, h⟩ := hR.main
  filter_upwards [eventually_ge_atTop T₀, eventually_log_le_two_l, eventually_log_nonneg,
    eventually_one_le_l, eventually_ge_atTop (16 * |C| + 4), eventually_gt_atTop 0]
    with T hT hlog hlog0 hl hTC hT0
  have h1 := (abs_le.mp (h T hT)).2
  have hc := cq_pos hq
  have hℓ : ell1q q T ≤ (1 + cq q) * l T := by
    rw [ell1q_eq hq hT0]; nlinarith
  have h2 : C * Real.log T ≤ |C| * (2 * l T) :=
    (mul_le_mul_of_nonneg_right (le_abs_self C) hlog0).trans
      (mul_le_mul_of_nonneg_left hlog (abs_nonneg C))
  have h3 : T / (2 * π) * ell1q q T ≤ T / (2 * π) * ((1 + cq q) * l T) :=
    mul_le_mul_of_nonneg_left hℓ (by positivity)
  have hlpos : (0:ℝ) < l T := by linarith
  have hY : (0:ℝ) ≤ (1 + cq q) * l T := by nlinarith
  have hdiv : T / (2 * π) ≤ T / 6 :=
    div_le_div_of_nonneg_left hT0.le (by norm_num) (by nlinarith [Real.pi_gt_three])
  have hπ : T / (2 * π) * ((1 + cq q) * l T) ≤ (1 + cq q) * (T * l T) / 6 := by
    calc T / (2 * π) * ((1 + cq q) * l T) ≤ T / 6 * ((1 + cq q) * l T) :=
          mul_le_mul_of_nonneg_right hdiv hY
      _ = (1 + cq q) * (T * l T) / 6 := by ring
  have h6 : 2 * |C| * l T ≤ (1 + cq q) * (T * l T) / 6 := by
    rw [le_div_iff₀ (by norm_num)]
    have e1 : (16 * |C| + 4) * l T ≤ T * l T := mul_le_mul_of_nonneg_right hTC hlpos.le
    have e2 : T * l T ≤ (1 + cq q) * (T * l T) := by
      nlinarith [cq_pos hq, mul_pos hT0 hlpos]
    nlinarith [abs_nonneg C, hlpos]
  have hnn : 0 ≤ (1 + cq q) * (T * l T) := by nlinarith [mul_pos hT0 hlpos, cq_pos hq]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97133fcbca06259ea84eb596e061c03b52f484d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
