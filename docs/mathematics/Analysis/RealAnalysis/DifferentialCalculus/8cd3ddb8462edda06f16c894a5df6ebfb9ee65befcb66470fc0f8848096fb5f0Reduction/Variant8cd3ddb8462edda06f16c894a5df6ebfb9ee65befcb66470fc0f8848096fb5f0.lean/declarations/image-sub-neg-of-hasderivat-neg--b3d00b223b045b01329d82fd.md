# image_sub_neg_of_hasDerivAt_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7d143fa6302f4fb4f3664f1ee694b3ed993dc23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc362d3a-a2c9-21c8-2420-5a53c457e794",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4d20466-6149-2109-79ee-7e0a0a8ece58",
  "kind": "theorem",
  "lexical_name": "image_sub_neg_of_hasDerivAt_neg",
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
  "slug": "image-sub-neg-of-hasderivat-neg--b3d00b223b045b01329d82fd",
  "source": {
    "blob": "f7d143fa6302f4fb4f3664f1ee694b3ed993dc23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variant8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d00b223b045b01329d82fd8e10771e5ab8d4c0734b8546fa6ff0cadb21c039",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variant8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d20466-6149-2109-79ee-7e0a0a8ece58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem image_sub_neg_of_hasDerivAt_neg (f df : ℝ → ℝ) {x y : ℝ}
    (hxy : x < y) (hc : ContinuousOn f (Icc x y))
    (hd : ∀ t ∈ Ioo x y, HasDerivAt f (df t) t)
    (hn : ∀ t ∈ Ioo x y, df t < 0) : f y - f x < 0 := by
  obtain ⟨c, hc, heq⟩ := exists_hasDerivAt_eq_slope f df hxy hc hd
  have hquot : (f y - f x) / (y - x) < 0 := heq ▸ hn c hc
  simpa using (div_lt_iff₀ (sub_pos.mpr hxy)).mp hquot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variant8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variant8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d143fa6302f4fb4f3664f1ee694b3ed993dc23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
