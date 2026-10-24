# mem_analyticGroupoid_of_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd8d6a62-8902-3448-cddd-094b91069a68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eade27de-c5cc-2319-0e4a-755d89904199",
  "kind": "theorem",
  "lexical_name": "mem_analyticGroupoid_of_boundaryless",
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
  "slug": "mem-analyticgroupoid-of-boundaryless--bfbb548005875f9246129f9e",
  "source": {
    "blob": "f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfbb548005875f9246129f9e7663ecbbd0df0a03b15a6c02cf050ed80a2d9ba2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eade27de-c5cc-2319-0e4a-755d89904199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_analyticGroupoid_of_boundaryless [I.Boundaryless] (e : PartialHomeomorph H H) :
    e ∈ analyticGroupoid I ↔ AnalyticOnNhd 𝕜 (I ∘ e ∘ I.symm) (I '' e.source) ∧
      AnalyticOnNhd 𝕜 (I ∘ e.symm ∘ I.symm) (I '' e.target) := by
  simp only [mem_analyticGroupoid, I.range_eq_univ, inter_univ, I.image_eq]
  rw [IsOpen.analyticOn_iff_analyticOnNhd, IsOpen.analyticOn_iff_analyticOnNhd]
  · exact I.continuous_symm.isOpen_preimage _ e.open_target
  · exact I.continuous_symm.isOpen_preimage _ e.open_source

/-- `analyticGroupoid` is closed under products -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
