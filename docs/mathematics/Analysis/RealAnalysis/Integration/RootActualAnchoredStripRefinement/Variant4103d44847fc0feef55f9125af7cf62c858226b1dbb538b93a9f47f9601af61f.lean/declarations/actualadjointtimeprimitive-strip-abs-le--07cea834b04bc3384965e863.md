# actualAdjointTimePrimitive_strip_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:695b135c-a628-7d3a-7489-8475e261d697",
  "kind": "theorem",
  "lexical_name": "actualAdjointTimePrimitive_strip_abs_le",
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
  "slug": "actualadjointtimeprimitive-strip-abs-le--07cea834b04bc3384965e863",
  "source": {
    "blob": "01d95132a503bf2b7869e3c07ce6c9625c0ef7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07cea834b04bc3384965e86352fec590ba492c7586a5ad252a10ac2e12b8777c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695b135c-a628-7d3a-7489-8475e261d697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointTimePrimitive_strip_abs_le {A offset w t : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w)
    (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w)) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (1 - Real.exp (-w / 2)) := by
  have hb : t ≤ actualTimeLower A + w := ht.2.trans (min_le_right _ _)
  have he := Real.exp_le_exp.mpr (show -w / 2 ≤ (actualTimeLower A - t) / 2 by linarith)
  exact (actualAdjointTimePrimitive_anchored_abs_le (by linarith) ht.1).trans
    (mul_le_mul_of_nonneg_left (sub_le_sub_left he 1) (by positivity))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01d95132a503bf2b7869e3c07ce6c9625c0ef7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
