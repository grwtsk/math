# actualAdjointTimePrimitive_strip_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64827b80-6d95-e405-0009-b438253f4d5a",
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
  "slug": "actualadjointtimeprimitive-strip-abs-le--9c4eabce789972b1ae945313",
  "source": {
    "blob": "38b54379e553719d34c4233e76ad85ac7344cc19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4eabce789972b1ae94531352fd6cc83f72744ce15f17867666462dfa1f981b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64827b80-6d95-e405-0009-b438253f4d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointTimePrimitive_strip_abs_le {A offset w t : ℝ}
    (hA : 25600 ≤ A) (_hw : 0 ≤ w)
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b54379e553719d34c4233e76ad85ac7344cc19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
