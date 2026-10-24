# eventually_N_ge_chi

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
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c68e240c-fd58-2c36-ea38-14fddae5408f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8f85234-07f1-1f7e-570b-4fd9b4c2c4e8",
  "kind": "lemma",
  "lexical_name": "eventually_N_ge_chi",
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
  "slug": "eventually-n-ge-chi--d686f3a65c10f0da67502b03",
  "source": {
    "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d686f3a65c10f0da67502b03492a0b76d12042ebd444b7bbc2b82e6113309377",
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

Occurrence: `result:a8f85234-07f1-1f7e-570b-4fd9b4c2c4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_N_ge_chi (hq : 1 ≤ q) (hR : RiemannVonMangoldtChi q Z) :
    ∀ᶠ T in atTop, T * l T / (4 * π) ≤ (Z.N T (2 * T) : ℝ) := by
  obtain ⟨C, T₀, h⟩ := hR.main
  filter_upwards [eventually_ge_atTop T₀, eventually_log_le_two_l, eventually_log_nonneg,
    eventually_l_pos, eventually_ge_atTop (16 * π * |C|), eventually_gt_atTop 0]
    with T hT hlog hlog0 hl hTC hT0
  have h1 := (abs_le.mp (h T hT)).1
  have hc := cq_pos hq
  have hℓ : l T ≤ ell1q q T := by rw [ell1q_eq hq hT0]; linarith
  have h2 : -(C * Real.log T) ≥ -(|C| * (2 * l T)) := by
    have : C * Real.log T ≤ |C| * Real.log T := mul_le_mul_of_nonneg_right (le_abs_self C) hlog0
    nlinarith [abs_nonneg C]
  have h3 : T / (2 * π) * l T ≤ T / (2 * π) * ell1q q T :=
    mul_le_mul_of_nonneg_left hℓ (by positivity)
  have h4 : 2 * |C| * l T ≤ T * l T / (4 * π) := by
    rw [le_div_iff₀ (by positivity)]
    nlinarith [abs_nonneg C, Real.pi_pos]
  have h5 : T / (2 * π) * l T = 2 * (T * l T / (4 * π)) := by ring
  linarith

/-- H-RvM(χ) ⇒ `N_χ(T,2T) ≤ K_q · T l` eventually for some constant; `K_q = 1 + c_q` works
(ℓ_{1,χ} ≤ (1 + c_q) l once l ≥ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97133fcbca06259ea84eb596e061c03b52f484d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
