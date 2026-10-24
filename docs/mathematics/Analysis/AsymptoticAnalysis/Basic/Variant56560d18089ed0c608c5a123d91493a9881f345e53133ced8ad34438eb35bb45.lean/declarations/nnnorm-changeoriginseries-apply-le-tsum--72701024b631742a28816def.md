# nnnorm_changeOriginSeries_apply_le_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fbd45999b04f41db55eab772f33c8f9ba6b3aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3354f97-8607-d5f0-414b-8fb65d57929e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7de4c90e-9ba5-1c8f-cc0f-7671f486a6e9",
  "kind": "theorem",
  "lexical_name": "nnnorm_changeOriginSeries_apply_le_tsum",
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
  "slug": "nnnorm-changeoriginseries-apply-le-tsum--72701024b631742a28816def",
  "source": {
    "blob": "9fbd45999b04f41db55eab772f33c8f9ba6b3aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1156,
    "line": 1147,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72701024b631742a28816def845a88eb65b5307ab288ff9fbc1ef2805b0672ae",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de4c90e-9ba5-1c8f-cc0f-7671f486a6e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1147–1156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_changeOriginSeries_apply_le_tsum (k l : ℕ) (x : E) :
    ‖p.changeOriginSeries k l fun _ => x‖₊ ≤
      ∑' _ : { s : Finset (Fin (k + l)) // s.card = l }, ‖p (k + l)‖₊ * ‖x‖₊ ^ l := by
  rw [NNReal.tsum_mul_right, ← Fin.prod_const]
  exact (p.changeOriginSeries k l).le_of_op_nnnorm_le _ (p.nnnorm_changeOriginSeries_le_tsum _ _)
#align formal_multilinear_series.nnnorm_change_origin_series_apply_le_tsum FormalMultilinearSeries.nnnorm_changeOriginSeries_apply_le_tsum

/-- Changing the origin of a formal multilinear series `p`, so that
`p.sum (x+y) = (p.changeOrigin x).sum y` when this makes sense.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean#L1147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbd45999b04f41db55eab772f33c8f9ba6b3aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
