# real_linearMap_map_smul_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed4f21de-e6f1-12fc-8ba9-582ccf737d03",
  "kind": "lemma",
  "lexical_name": "real_linearMap_map_smul_complex",
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
  "slug": "real-linearmap-map-smul-complex--8a3136bcd8bc0ea05d1dae8d",
  "source": {
    "blob": "627511b4b28067f5ecb9658033aa3c16f4738bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3136bcd8bc0ea05d1dae8d37f65deb0f00018b958e7212c67694d952870b1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed4f21de-e6f1-12fc-8ba9-582ccf737d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma real_linearMap_map_smul_complex {ℓ : ℂ →ₗ[ℝ] E} (h : ℓ I = I • ℓ 1) (a b : ℂ) :
    ℓ (a • b) = a • ℓ b := by
  rw [← re_add_im a, ← re_add_im b, ← smul_eq_mul _ I, ← smul_eq_mul _ I]
  have t₀ : ((a.im : ℂ) • I) • (b.re : ℂ) = (↑(a.im * b.re) : ℂ) • I := by
    simp only [smul_eq_mul, ofReal_mul, ← mul_assoc, mul_comm _ I]
  have t₁ : ((a.im : ℂ) • I) • (b.im : ℂ) • I = (↑(- a.im * b.im) : ℂ) • (1 : ℂ) := by
    simp [mul_mul_mul_comm _ I]
  simp only [add_smul, smul_add, ℓ.map_add, t₀, t₁]
  repeat rw [Complex.coe_smul, ℓ.map_smul]
  have t₂ {r : ℝ} : ℓ (r : ℂ) = r • ℓ (1 : ℂ) := by simp [← ℓ.map_smul]
  simp only [t₂, h]
  match_scalars
  simp [mul_mul_mul_comm _ I]
  ring

/--
Construct a complex-linear map from a real-linear map `ℓ` that maps `I` to `I • ℓ 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `627511b4b28067f5ecb9658033aa3c16f4738bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
