# _root_.Monotone.expGrowthInf_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06cafd30b96333f94e3ff1f472d1decc87f2b6c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d7c044-122a-ede7-58d1-05bad8e4729d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f763307-5260-a19f-7e3b-7407fa9976fa",
  "kind": "lemma",
  "lexical_name": "_root_.Monotone.expGrowthInf_comp_le",
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
  "slug": "root-monotone-expgrowthinf-comp-le--9bc9c2de24b2591f9603f7e5",
  "source": {
    "blob": "06cafd30b96333f94e3ff1f472d1decc87f2b6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc9c2de24b2591f9603f7e52beb717fd06961cdfb8c0152ce180e5ba6ca0736",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f763307-5260-a19f-7e3b-7407fa9976fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Monotone.expGrowthInf_comp_le (h : Monotone u)
    (hv₀ : (linearGrowthSup fun n ↦ v n : EReal) ≠ 0)
    (hv₁ : (linearGrowthSup fun n ↦ v n : EReal) ≠ ⊤) :
    expGrowthInf (u ∘ v) ≤ (linearGrowthSup fun n ↦ v n : EReal) * expGrowthInf u :=
  (log_monotone.comp h).linearGrowthInf_comp_le hv₀ hv₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cafd30b96333f94e3ff1f472d1decc87f2b6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
