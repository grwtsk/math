# actual_regular_zeta_real_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f62610a9-ec80-972c-2c8e-c5a2f9bfec25",
  "kind": "theorem",
  "lexical_name": "actual_regular_zeta_real_right",
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
  "slug": "actual-regular-zeta-real-right--557023443a9879f1584bf56b",
  "source": {
    "blob": "09c13860f2d4e84edd5e9321daa09b3447a29155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557023443a9879f1584bf56b62592b5c7ddcd78959480bd5fe6d8ec2c88cd85f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f62610a9-ec80-972c-2c8e-c5a2f9bfec25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem actual_regular_zeta_real_right {s : ℝ} (hs : 1 ≤ s) :
    riemannZeta₀ (s : ℂ) = ((1-s*ZetaAsymptotics.termTSum s : ℝ) : ℂ) := by
  rcases eq_or_lt_of_le hs with he | he
  · subst s
    simp [actual_termTSum_one]
  · have hc : (s : ℂ) ≠ 1 := by
      exact_mod_cast (ne_of_gt he)
    calc
      riemannZeta₀ (s : ℂ) = riemannZeta (s : ℂ)-1/((s:ℂ)-1) := by
        simp [riemannZeta₀,hc,one_div]
      _ = (((∑' n : ℕ, 1/(n+1:ℝ)^s)-1/(s-1) : ℝ) : ℂ) := by
        simp only [Complex.ofReal_sub,Complex.ofReal_div,Complex.ofReal_one,
          sub_left_inj,Complex.ofReal_tsum]
        rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa using he)]
        congr 1 with n
        rw [Complex.ofReal_cpow (by positivity)]
        norm_cast
      _ = _ := congrArg (fun x : ℝ => (x : ℂ)) (ZetaAsymptotics.zeta_limit_aux1 he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c13860f2d4e84edd5e9321daa09b3447a29155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
