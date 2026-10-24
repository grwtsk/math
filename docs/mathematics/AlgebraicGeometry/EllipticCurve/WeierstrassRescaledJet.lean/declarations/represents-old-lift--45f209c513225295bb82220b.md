# represents_old_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bc84cb0-5355-613e-4c2e-8151712b6be7",
  "kind": "theorem",
  "lexical_name": "represents_old_lift",
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
  "slug": "represents-old-lift--45f209c513225295bb82220b",
  "source": {
    "blob": "2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f209c513225295bb82220b2f85a85513ea3d7b7513343313aced262a737952",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc84cb0-5355-613e-4c2e-8151712b6be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem represents_old_lift (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (rationalPolynomial A B (N+1)).eval₂ (FreyJetQuotient.parameterScalar ℚ N)
      (FreyJetQuotient.parameter ℚ N)=
      WeierstrassMixedLift.lift (FreyJetQuotient.parameterScalar ℚ N (A : ℚ))
        (FreyJetQuotient.parameterScalar ℚ N ((B : ℚ)⁻¹))
        (FreyJetQuotient.parameter ℚ N) (N+1) := by
  let c := FreyJetQuotient.parameterScalar ℚ N
  let e := FreyJetQuotient.parameter ℚ N
  have hb : (B : ℚ)≠0 := by exact_mod_cast hB
  have hj : c (B : ℚ)*c ((B : ℚ)⁻¹)=1 := by rw [← map_mul,mul_inv_cancel₀ hb,map_one]
  have hev : (rationalPolynomial A B (N+1)).eval₂ c e=
      c (B : ℚ)*iterate (c (A : ℚ)) (c (B : ℚ)) (c ((B : ℚ)⁻¹)*e) (N+1) := by
    simp only [rationalPolynomial,eval₂_mul,eval₂_C,eval₂_comp,eval₂_X,eval₂_map]
    rw [evaluate_numerator]
    rfl
  rw [hev]
  exact equals_old_lift (c (A : ℚ)) (c (B : ℚ)) (c ((B : ℚ)⁻¹)) e hj
    (N+1) (FreyJetQuotient.parameter_pow N)

/-- Stable low coefficients are independent of the chosen sufficiently high order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
