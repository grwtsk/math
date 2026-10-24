# slope_defect_eq_deriv_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:576d89b1-e2b6-2a01-e21c-7f0d96adc9c0",
  "kind": "theorem",
  "lexical_name": "slope_defect_eq_deriv_tail",
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
  "slug": "slope-defect-eq-deriv-tail--41949c727eab12a5f83bb22f",
  "source": {
    "blob": "46ddd85c851d0748432a29612e952f385ce02433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41949c727eab12a5f83bb22f92519ecbf459edee67c0b6cd83f194fb70b62fae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:576d89b1-e2b6-2a01-e21c-7f0d96adc9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slope_defect_eq_deriv_tail (N : ℕ) (c : ℂ) (hσ : -2 < c.re) (hc : c ≠ 1) :
    deriv riemannZeta c - approximationSlope N c = deriv (analyticTail N) c := by
  have he : (fun s => riemannZeta s - approximation N s) =ᶠ[𝓝 c] analyticTail N := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds hσ,
      isOpen_compl_singleton.mem_nhds hc] with s hs hne
    exact zeta_sub_approximation N s hs hne
  have hd := ((analyticOn_riemannZeta c hc).differentiableAt.hasDerivAt).sub
    (hasDerivAt_approximation N c hc)
  exact (hd.congr_of_eventuallyEq he.symm).deriv.symm

end
end GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ddd85c851d0748432a29612e952f385ce02433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
