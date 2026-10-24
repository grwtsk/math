# mkContinuousLinear_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "529023ae817036f44e1316a3c04bf8f549936e6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57374e15-0b09-cd3d-65fb-46e5f950b61c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0811541-5dc0-8bb2-f322-e6d311aa1aa2",
  "kind": "theorem",
  "lexical_name": "mkContinuousLinear_norm_le",
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
  "slug": "mkcontinuouslinear-norm-le--58e62aa57e49e7c6807486d4",
  "source": {
    "blob": "529023ae817036f44e1316a3c04bf8f549936e6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 873,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e62aa57e49e7c6807486d416c66b18e118cf8e8d2e7e4ba256f738f6b1a907",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0811541-5dc0-8bb2-f322-e6d311aa1aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkContinuousLinear_norm_le (f : G →ₗ[𝕜] MultilinearMap 𝕜 E G') {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖) : ‖mkContinuousLinear f C H‖ ≤ C :=
  (mkContinuousLinear_norm_le' f C H).trans_eq (max_eq_left hC)

variable [∀ i, SeminormedAddCommGroup (E' i)] [∀ i, NormedSpace 𝕜 (E' i)]

/-- Given a map `f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)` and an estimate
`H : ∀ m m', ‖f m m'‖ ≤ C * ∏ i, ‖m i‖ * ∏ i, ‖m' i‖`, upgrade all `MultilinearMap`s in the type to
`ContinuousMultilinearMap`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529023ae817036f44e1316a3c04bf8f549936e6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
