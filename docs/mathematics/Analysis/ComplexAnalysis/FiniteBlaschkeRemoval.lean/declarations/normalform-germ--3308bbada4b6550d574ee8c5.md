# normalForm_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a839c13e-7066-9ba0-bf29-689793cda512",
  "kind": "theorem",
  "lexical_name": "normalForm_germ",
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
  "slug": "normalform-germ--3308bbada4b6550d574ee8c5",
  "source": {
    "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3308bbada4b6550d574ee8c5160dca7236d273c27c32537950315b15c9a0dd6a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a839c13e-7066-9ba0-bf29-689793cda512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalForm_germ (F G : ℂ → ℂ) (U : Set ℂ) (z : ℂ)
    (hF : MeromorphicOn F U) (hz : z ∈ U) (hG : AnalyticAt ℂ G z)
    (he : F =ᶠ[𝓝[≠] z] G) :
    toMeromorphicNFOn F U =ᶠ[𝓝 z] G := by
  apply ((meromorphicNFOn_toMeromorphicNFOn F U hz).eventuallyEq_nhdsNE_iff_eventuallyEq_nhds
    hG.meromorphicNFAt).mp
  exact (hF.toMeromorphicNFOn_eq_self_on_nhdsNE hz).trans he

/-- Equal exact vanishing orders leave an analytic NONZERO quotient germ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
