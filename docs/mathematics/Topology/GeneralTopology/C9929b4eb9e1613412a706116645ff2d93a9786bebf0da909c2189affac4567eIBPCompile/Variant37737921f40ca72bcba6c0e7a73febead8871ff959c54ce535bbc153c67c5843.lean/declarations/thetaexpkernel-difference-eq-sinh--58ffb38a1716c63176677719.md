# thetaExpKernel_difference_eq_sinh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a727c6-ebd5-8561-d0b6-72f04c4a181f",
  "kind": "theorem",
  "lexical_name": "thetaExpKernel_difference_eq_sinh",
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
  "slug": "thetaexpkernel-difference-eq-sinh--58ffb38a1716c63176677719",
  "source": {
    "blob": "4d1d13bd56849030c354ad84e03948716e85b192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ffb38a1716c63176677719441f5b10d3eb1258f9a804f0694af784303ae59e",
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

Occurrence: `result:11a727c6-ebd5-8561-d0b6-72f04c4a181f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpKernel_difference_eq_sinh (u : ℂ) (t : ℝ) :
    (thetaExpKernel u t - thetaExpKernel (-u) t) / 2 =
      Complex.sinh (2 * u * (t : ℂ)) := by
  rw [thetaExpKernel_neg]
  simp [thetaExpKernel, Complex.sinh]

/-- The evenized boundary has the expected Wronskian form
`A'(t) cosh(2ut) - 2u A(t) sinh(2ut)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variant37737921f40ca72bcba6c0e7a73febead8871ff959c54ce535bbc153c67c5843.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1d13bd56849030c354ad84e03948716e85b192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
