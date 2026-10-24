# Smooth1LeOne_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:883e5815-f476-1c1f-8280-8ddcb36922c0",
  "kind": "lemma",
  "lexical_name": "Smooth1LeOne_aux",
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
  "slug": "smooth1leone-aux--9af8bb62d2c81ecfe015bdfa",
  "source": {
    "blob": "78046834c8d8ce98551fa620f4fcf0eefe224439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1159,
    "line": 1120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af8bb62d2c81ecfe015bdfac4af346e8d7ec54d3461c3f2f7e44e4bc7704ccd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:883e5815-f476-1c1f-8280-8ddcb36922c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1120–1159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth1LeOne_aux {x ε : ℝ} {ν : ℝ → ℝ} (xpos : 0 < x) (εpos : 0 < ε)
    (mass_one : ∫ x in Ioi 0, ν x / x = 1) :
    ∫ (y : ℝ) in Ioi 0, ν ((x / y) ^ (1 / ε)) / ε / y = 1 := by
    calc
      _ = ∫ (y : ℝ) in Ioi 0, (ν (y ^ (1 / ε)) / ε) / y := ?_
      _ = ∫ (y : ℝ) in Ioi 0, ν y / y := ?_
      _ = 1 := mass_one
    · have := integral_comp_div_I0i_haar (fun y ↦ ν ((x / y) ^ (1 / ε)) / ε) xpos
      convert this.symm using 1
      congr; funext y; congr; field_simp [mul_comm]
    · have := integral_comp_rpow_I0i_haar_real (fun y ↦ ν y) (one_div_ne_zero εpos.ne')
      rw [← this, abs_of_pos <| one_div_pos.mpr εpos]
      field_simp


@[blueprint
  (title := "Smooth1LeOne")
  (statement := /--
  If $\nu$ is nonnegative and has mass one, then $\widetilde{1_{\epsilon}}(x)\le 1$, $\forall x>0$.
  -/)
  (proof := /--
  By Definitions \ref{Smooth1}, \ref{MellinConvolution} and \ref{DeltaSpike}
  $$
    \widetilde{1_\epsilon}(x)
    =\int_0^\infty 1_{(0,1]}(y)\frac1\epsilon\nu((x/y)^{\frac1\epsilon}) \frac{dy}y
  $$
  and since $1_{(0,1]}(y)\le 1$, and all the factors in the integrand are nonnegative,
  $$
    \widetilde{1_\epsilon}(x)\le\int_0^\infty \frac1\epsilon\nu((x/y)^{\frac1\epsilon}) \frac{dy}y
  $$
  (because in mathlib the integral of a non-integrable function is $0$, for the inequality above
  to be true, we must prove that $\nu((x/y)^{\frac1\epsilon})/y$ is integrable; this follows from
  the computation below).
  We then change variables to $z=(x/y)^{\frac1\epsilon}$:
  $$
    \widetilde{1_\epsilon}(x)\le\int_0^\infty \nu(z) \frac{dz}z
  $$
  which by Theorem \ref{SmoothExistence} is 1.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean#L1120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78046834c8d8ce98551fa620f4fcf0eefe224439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
