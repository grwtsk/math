# deriv_riemannZeta_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca6f2148-c958-bbe6-e093-fb020673c595",
  "kind": "theorem",
  "lexical_name": "deriv_riemannZeta_eq",
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
  "slug": "deriv-riemannzeta-eq--8261ede5dcc25ed8eda69634",
  "source": {
    "blob": "d9db56067d5f9e092171b27535c8c8cd1699b8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8261ede5dcc25ed8eda696344e80ca0d2e7b67445ce431e1ad9c55535c98b3bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca6f2148-c958-bbe6-e093-fb020673c595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_riemannZeta_eq {s : ℂ} (hs : s.im ≠ 0) :
    deriv riemannZeta s = deriv chiFE s * riemannZeta (1 - s) - chiFE s * deriv riemannZeta (1 - s) := by
  have hev : riemannZeta =ᶠ[𝓝 s] fun z => chiFE z * riemannZeta (1 - z) := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hs] with z hz
    exact zeta_eq_chiFE_mul hz
  rw [hev.deriv_eq]
  have h1 : HasDerivAt chiFE (deriv chiFE s) s := (chiFE_analyticAt hs).differentiableAt.hasDerivAt
  have hz1 : (1 - s) ≠ 1 := by
    intro h; apply hs; have : s = 0 := by linear_combination -h
    rw [this]; simp
  have h2 : HasDerivAt (fun z => riemannZeta (1 - z)) (-deriv riemannZeta (1 - s)) s := by
    have hd : HasDerivAt riemannZeta (deriv riemannZeta (1 - s)) (1 - s) :=
      (differentiableAt_riemannZeta hz1).hasDerivAt
    have := hd.comp s ((hasDerivAt_const s (1:ℂ)).sub (hasDerivAt_id s))
    simpa [Function.comp_def] using this
  have h : HasDerivAt (fun z => chiFE z * riemannZeta (1 - z))
      (deriv chiFE s * riemannZeta (1 - s) + chiFE s * -deriv riemannZeta (1 - s)) s := h1.mul h2
  rw [h.deriv]; ring

/-- **The functional equation W(s) = −χ(s)·W(1−s)** off the real axis  [XF′ (Z2)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9db56067d5f9e092171b27535c8c8cd1699b8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
