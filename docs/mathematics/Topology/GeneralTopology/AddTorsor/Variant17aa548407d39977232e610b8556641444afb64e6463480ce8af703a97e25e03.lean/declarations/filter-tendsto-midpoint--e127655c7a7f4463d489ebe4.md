# Filter.Tendsto.midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21ccb400c54654e31a4f0dec9fb542e75ac00747",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97378dd4-d5af-b2ed-503f-3e27cb3ba75b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01382f24-030c-4bef-e4dd-1eff171000c7",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.midpoint",
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
  "slug": "filter-tendsto-midpoint--e127655c7a7f4463d489ebe4",
  "source": {
    "blob": "21ccb400c54654e31a4f0dec9fb542e75ac00747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e127655c7a7f4463d489ebe41fa6964d7c99a0cd39e1f8f487499409b196352c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01382f24-030c-4bef-e4dd-1eff171000c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.midpoint [Invertible (2 : R)] {l : Filter α} {f₁ f₂ : α → P} {p₁ p₂ : P}
    (h₁ : Tendsto f₁ l (𝓝 p₁)) (h₂ : Tendsto f₂ l (𝓝 p₂)) :
    Tendsto (fun x => midpoint R (f₁ x) (f₂ x)) l (𝓝 <| midpoint R p₁ p₂) :=
  h₁.lineMap h₂ tendsto_const_nhds
#align filter.tendsto.midpoint Filter.Tendsto.midpoint

end

section Pointwise

open Pointwise

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ccb400c54654e31a4f0dec9fb542e75ac00747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
