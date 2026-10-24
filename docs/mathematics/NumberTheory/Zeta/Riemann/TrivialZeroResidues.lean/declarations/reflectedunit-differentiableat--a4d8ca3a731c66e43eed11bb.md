# reflectedUnit_differentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:addf0fef-65a6-1a82-566e-14d84cb5e1ed",
  "kind": "theorem",
  "lexical_name": "reflectedUnit_differentiableAt",
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
  "slug": "reflectedunit-differentiableat--a4d8ca3a731c66e43eed11bb",
  "source": {
    "blob": "0d0ae16ad76a367d769d0e02da355333870407e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d8ca3a731c66e43eed11bb165896fc1be9a83bfd44bf271461fb1dc54fcf51",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:addf0fef-65a6-1a82-566e-14d84cb5e1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedUnit_differentiableAt {s : ℂ} (hs : s.re < 0) :
    DifferentiableAt ℂ reflectedUnit s := by
  have hneg : ∀ k : ℕ, 1 - s ≠ -(k : ℂ) := by
    intro k he
    have hr := congrArg Complex.re he
    have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    simp only [Complex.sub_re, Complex.one_re, Complex.neg_re, Complex.natCast_re] at hr
    linarith
  have hne : 1 - s ≠ (1 : ℂ) := by
    intro he
    have hr := congrArg Complex.re he
    simp only [Complex.sub_re, Complex.one_re] at hr
    linarith
  have hG : DifferentiableAt ℂ (fun u : ℂ => Complex.Gamma (1 - u)) s :=
    (Complex.differentiableAt_Gamma (1 - s) hneg).comp s (by fun_prop)
  have hZ : DifferentiableAt ℂ (fun u : ℂ => riemannZeta (1 - u)) s :=
    (differentiableAt_riemannZeta hne).comp s (by fun_prop)
  unfold reflectedUnit
  exact ((by fun_prop : DifferentiableAt ℂ
    (fun u : ℂ => 2 * Complex.exp (Complex.log (2 * (Real.pi : ℂ)) * (u - 1))) s).mul hG).mul hZ

/-- Gamma is evaluated at a positive integer; no claim about its totalized pole values is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0ae16ad76a367d769d0e02da355333870407e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
