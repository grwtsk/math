# tendsto_birkhoffAverage_apply_sub_birkhoffAverage'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76fcafd6db305e5e8069c11c3290065d78fd1e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25962be9-e907-59de-c6aa-15795198ea1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1be5a15-beec-eaad-874c-28195098e288",
  "kind": "theorem",
  "lexical_name": "tendsto_birkhoffAverage_apply_sub_birkhoffAverage'",
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
  "slug": "tendsto-birkhoffaverage-apply-sub-birkhoffaverage--50ed8fd2a693b5de976fd90c",
  "source": {
    "blob": "76fcafd6db305e5e8069c11c3290065d78fd1e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50ed8fd2a693b5de976fd90c5c07ade934452311e8303237196c72155bb14cc2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1be5a15-beec-eaad-874c-28195098e288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_birkhoffAverage_apply_sub_birkhoffAverage' {g : α → E}
    (h : Bornology.IsBounded (range g)) (f : α → α) (x : α) :
    Tendsto (fun n ↦ birkhoffAverage 𝕜 f g n (f x) - birkhoffAverage 𝕜 f g n x) atTop (𝓝 0) :=
  tendsto_birkhoffAverage_apply_sub_birkhoffAverage _ <| h.subset <| range_comp_subset_range _ _

end

variable (𝕜 : Type*) {X E : Type*}
  [PseudoEMetricSpace X] [RCLike 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {f : X → X} {g : X → E} {l : X → E}

/-- If `f` is a non-strictly contracting map (i.e., it is Lipschitz with constant `1`)
and `g` is a uniformly continuous, then the Birkhoff averages of `g` along orbits of `f`
is a uniformly equicontinuous family of functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NormedSpace/Variant646cc34ba396f060d08ca9c96d08cce72f1cb7a60712837d2145adbb5351adc2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76fcafd6db305e5e8069c11c3290065d78fd1e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
