# inner_condexpL2_eq_inner_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65f782a-7d2e-1a1d-7633-ceaa9feb2dfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b387e1e-c84c-89ad-3b0e-e1fd63257711",
  "kind": "theorem",
  "lexical_name": "inner_condexpL2_eq_inner_fun",
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
  "slug": "inner-condexpl2-eq-inner-fun--bd51fe61ef4f5d5508163a85",
  "source": {
    "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd51fe61ef4f5d5508163a85cd8ca4feefd3244bb2c27b928222ee677abb7687",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b387e1e-c84c-89ad-3b0e-e1fd63257711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_condexpL2_eq_inner_fun (hm : m ≤ m0) (f g : α →₂[μ] E)
    (hg : AEStronglyMeasurable' m g μ) :
    ⟪(condexpL2 E 𝕜 hm f : α →₂[μ] E), g⟫₂ = ⟪f, g⟫₂ := by
  symm
  rw [← sub_eq_zero, ← inner_sub_left, condexpL2]
  simp only [mem_lpMeas_iff_aeStronglyMeasurable'.mpr hg, orthogonalProjection_inner_eq_zero f g]
#align measure_theory.inner_condexp_L2_eq_inner_fun MeasureTheory.inner_condexpL2_eq_inner_fun

section Real

variable {hm : m ≤ m0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb4611be326cf2f44d9627da6bf554c3fe217fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
