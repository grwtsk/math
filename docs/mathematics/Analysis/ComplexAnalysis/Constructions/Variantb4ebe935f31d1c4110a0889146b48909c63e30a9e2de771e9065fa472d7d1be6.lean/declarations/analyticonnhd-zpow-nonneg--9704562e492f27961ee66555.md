# AnalyticOnNhd.zpow_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "037a4c2f9efa04971900c4536bea9a59fd6fe270",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 725,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43fcb62d-5dcb-da4e-5698-c60c1554d0c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed7116c9-40d2-7f1c-ea4d-5856241a2d21",
  "kind": "lemma",
  "lexical_name": "AnalyticOnNhd.zpow_nonneg",
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
  "slug": "analyticonnhd-zpow-nonneg--9704562e492f27961ee66555",
  "source": {
    "blob": "037a4c2f9efa04971900c4536bea9a59fd6fe270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 725,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9704562e492f27961ee665555f434f29f50b73f778b65e3fd30419d923ef264f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed7116c9-40d2-7f1c-ea4d-5856241a2d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticOnNhd.zpow_nonneg {f : E → 𝕝} {s : Set E} {n : ℤ} (hf : AnalyticOnNhd 𝕜 f s)
    (hn : 0 ≤ n) :
    AnalyticOnNhd 𝕜 (f ^ n) s := by
  simp_rw [(Eq.symm (Int.toNat_of_nonneg hn) : n = OfNat.ofNat n.toNat), zpow_ofNat]
  apply pow hf

/-!
### Composition with a linear map
-/

section compContinuousLinearMap

variable {u : E →L[𝕜] F} {f : F → G} {pf : FormalMultilinearSeries 𝕜 F G} {s : Set F} {x : E}
  {r : ℝ≥0∞}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037a4c2f9efa04971900c4536bea9a59fd6fe270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
