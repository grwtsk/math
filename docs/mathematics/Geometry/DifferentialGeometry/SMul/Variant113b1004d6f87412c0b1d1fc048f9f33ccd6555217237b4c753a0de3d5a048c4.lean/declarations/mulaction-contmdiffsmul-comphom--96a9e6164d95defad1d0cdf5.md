# MulAction.contMDiffSMul_compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7bafe5f-0569-bc5d-1554-c59e0dd3ea09",
  "kind": "theorem",
  "lexical_name": "MulAction.contMDiffSMul_compHom",
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
  "slug": "mulaction-contmdiffsmul-comphom--96a9e6164d95defad1d0cdf5",
  "source": {
    "blob": "f96c1a941b583f142a956cae85c952405c26f96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 212,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a9e6164d95defad1d0cdf5b2104e323cdaf8af3cc2fbec078b7e7b3946a3b0",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7bafe5f-0569-bc5d-1554-c59e0dd3ea09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulAction.contMDiffSMul_compHom [Monoid G] [MulAction G M] {n : ℕ∞ω}
    [ContMDiffSMul I I' n G M] {G' : Type*} [TopologicalSpace G'] [ChartedSpace H'' G'] [Monoid G']
    {f : G' →* G} (hf : CMDiff n f) :
    letI : MulAction G' M := MulAction.compHom _ f
    ContMDiffSMul I'' I' n G' M := by
  let _ : MulAction G' M := MulAction.compHom _ f
  exact ⟨(hf.comp contMDiff_fst).smul contMDiff_snd⟩

/-- The scalar multiplication `𝕜 × E → E` of any normed vector space `E` over `𝕜` is smooth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96c1a941b583f142a956cae85c952405c26f96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
