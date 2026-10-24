# eventually_Buthe_theta_eq_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb5031ae-8bb9-d7a3-4919-edbc5660605d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f28ee789-dc4e-8255-31bf-0eb195f17367",
  "kind": "lemma",
  "lexical_name": "eventually_Buthe_theta_eq_theta",
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
  "slug": "eventually-buthe-theta-eq-theta--5bc85a193c88c4297b957830",
  "source": {
    "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc85a193c88c4297b95783001817579732a3547df79558af150b1853fb7d216",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f28ee789-dc4e-8255-31bf-0eb195f17367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_Buthe_theta_eq_theta (x : ℝ) (hx : 0 ≤ x) :
    (fun y => Buthe_theta y) =ᶠ[𝓝[>] x] fun _ => θ x := by
  filter_upwards [self_mem_nhdsWithin,
    Ico_mem_nhdsGT_of_mem ⟨Nat.floor_le hx, Nat.lt_floor_add_one x⟩] with y hygt hyfloor
  rw [Chebyshev.theta_eq_sum_Icc]
  rw [prime_filter_Icc_zero_eq_one]
  unfold Buthe_theta
  have hfloor : ⌊y⌋₊ = ⌊x⌋₊ := Nat.floor_eq_on_Ico ⌊x⌋₊ y hyfloor
  rw [hfloor]
  refine Finset.sum_congr rfl ?_
  intro p hp
  have hpprime : p.Prime := (Finset.mem_filter.mp hp).2
  have hp_pos : (0 : ℝ) < (p : ℝ) := by exact_mod_cast hpprime.pos
  have hpy : (p : ℝ) < y := by
    have hp_le_floor : p ≤ ⌊x⌋₊ := (Finset.mem_Icc.mp (Finset.mem_filter.mp hp).1).2
    have hpx : (p : ℝ) ≤ x := le_trans (by exact_mod_cast hp_le_floor) (Nat.floor_le hx)
    exact lt_of_le_of_lt hpx hygt
  rw [Buthe_chiStarIcc_eq_one_of_pos_lt hp_pos hpy, one_mul]

@[blueprint
  "thm:buthe-2a"
  (title := "Buthe Theorem 2, part a")
  (statement := /-- Let $T>0$ such that the Riemann hypothesis holds for $0<\Im(\rho)\leq T$.
  With the source's $\chi^*_{[0,x]}$ endpoint convention for $\psi$, under the condition
  $4.92 \sqrt{\frac{x}{\log x}} \leq T$, one has
  $$|\psi(x) - x| \leq \frac{\sqrt{x}}{8\pi}\log(x)^2 \text{for $x>59$}.$$
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af47620dac2a680ca2db6e885de9312fdf311eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
