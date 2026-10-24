# le_rieszMeasure_of_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b5d6209-2f80-00f8-6b06-d6cb6f8f1c8c",
  "kind": "lemma",
  "lexical_name": "le_rieszMeasure_of_tsupport_subset",
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
  "slug": "le-rieszmeasure-of-tsupport-subset--bba9aab5dab623f88a4891fd",
  "source": {
    "blob": "8e6b2056157bf93f9f2185db974c666d91fc8063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba9aab5dab623f88a4891fd9802a8264f345d140e3fc581ccb9b10725089762",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b5d6209-2f80-00f8-6b06-d6cb6f8f1c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_rieszMeasure_of_tsupport_subset {f : C_c(X, ℝ≥0)} (hf : ∀ x, f x ≤ 1) {V : Set X}
    (h : tsupport f ⊆ V) : .ofNNReal (Λ f) ≤ rieszMeasure Λ V := by
  apply le_trans _ (measure_mono h)
  apply le_rieszMeasure_of_isCompact_tsupport_subset Λ hf f.hasCompactSupport
  exact subset_rfl

end NNRealRMK
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6b2056157bf93f9f2185db974c666d91fc8063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
