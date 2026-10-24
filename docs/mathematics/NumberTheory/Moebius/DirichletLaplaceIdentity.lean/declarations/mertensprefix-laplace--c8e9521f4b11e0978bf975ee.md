# mertensPrefix_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47097880-d898-3e9b-b788-ac3f2b05d5d3",
  "kind": "theorem",
  "lexical_name": "mertensPrefix_laplace",
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
  "slug": "mertensprefix-laplace--c8e9521f4b11e0978bf975ee",
  "source": {
    "blob": "a3bc2e035926b4bcec8faff5f06a23eebb11a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e9521f4b11e0978bf975ee4b1a4357c04b434b159d5e8d299b36a8f9997d92",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47097880-d898-3e9b-b788-ac3f2b05d5d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensPrefix_laplace {s : ℂ} (hs : 1 < s.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-s * u) *
      (mertensPrefix (Real.exp u) : ℂ)) = 1 / (s * riemannZeta s) := by
  rw [← mertensPrefix_mellin hs]
  have hsub := integral_comp_exp_Ioi
    (fun x : ℝ => (mertensPrefix x : ℂ) * (x : ℂ) ^ (-(s + 1))) 0
  simp only [Real.exp_zero] at hsub
  rw [← hsub]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u _
  change Complex.exp (-s * (u : ℂ)) * (mertensPrefix (Real.exp u) : ℂ) =
    Real.exp u • ((mertensPrefix (Real.exp u) : ℂ) *
      (Real.exp u : ℂ) ^ (-(s + 1)))
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_ne_zero u)),
    ← Complex.ofReal_log (Real.exp_pos u).le, Real.log_exp,
    RCLike.real_smul_eq_coe_mul]
  change Complex.exp (-s * (u : ℂ)) * (mertensPrefix (Real.exp u) : ℂ) =
    (Real.exp u : ℂ) * ((mertensPrefix (Real.exp u) : ℂ) *
      Complex.exp ((u : ℂ) * -(s + 1)))
  rw [Complex.ofReal_exp u]
  have hexp : Complex.exp (u : ℂ) * Complex.exp ((u : ℂ) * -(s + 1)) =
      Complex.exp (-s * u) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  rw [mul_left_comm (Complex.exp (u : ℂ)), hexp, mul_comm]

/-- The density has the actual initial reciprocal-zeta transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bc2e035926b4bcec8faff5f06a23eebb11a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
