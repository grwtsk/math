# thetaPhi_cosh_interval_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa5c9112-2526-05a6-f8f5-8e29ef12beee",
  "kind": "theorem",
  "lexical_name": "thetaPhi_cosh_interval_identity",
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
  "slug": "thetaphi-cosh-interval-identity--c6795649c105b635345da300",
  "source": {
    "blob": "4d1d13bd56849030c354ad84e03948716e85b192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6795649c105b635345da3009816d2281f1ad49f6b1de4e5a0805a65ea7e908a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa5c9112-2526-05a6-f8f5-8e29ef12beee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_cosh_interval_identity (u : ℂ) (b : ℝ) :
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          (∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) +
        thetaCoshBoundary u b := by
  have hp := thetaPhi_exp_interval_identity u b
  have hm := thetaPhi_exp_interval_identity (-u) b
  have havg :
      (8 : ℂ) *
          (((∫ t in (0 : ℝ)..b,
                (thetaPhi t : ℂ) * thetaExpKernel u t) +
            (∫ t in (0 : ℝ)..b,
                (thetaPhi t : ℂ) * thetaExpKernel (-u) t)) / 2) =
        thetaCoshBoundary u b - thetaCoshBoundary u 0 +
          (((2 * u) ^ 2 - 1) *
            (((∫ t in (0 : ℝ)..b,
                  (thetaA t : ℂ) * thetaExpKernel u t) +
              (∫ t in (0 : ℝ)..b,
                  (thetaA t : ℂ) * thetaExpKernel (-u) t)) / 2)) := by
    unfold thetaCoshBoundary
    linear_combination (1 / 2 : ℂ) * hp + (1 / 2 : ℂ) * hm
  rw [← thetaPhi_cosh_interval_eq_average u b,
    ← thetaA_cosh_interval_eq_average u b] at havg
  rw [thetaCoshBoundary_zero] at havg
  convert! havg using 1
  ring

/-- Expanded form of the same theorem: the surviving upper boundary is exactly
`A'(b) cosh(2ub) - 2u A(b) sinh(2ub)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1d13bd56849030c354ad84e03948716e85b192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
