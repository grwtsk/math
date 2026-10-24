# Cauchy.comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae5cfa7c-c4cb-a25f-7718-1bc2e1ff076d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2f56907-5e7d-9525-f823-315e76258c23",
  "kind": "theorem",
  "lexical_name": "Cauchy.comap",
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
  "slug": "cauchy-comap--ca6f9cc9261d24727192d01f",
  "source": {
    "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca6f9cc9261d24727192d01f4c51dbc575c507afc5efae0a1da96d3ab7ec2cb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2f56907-5e7d-9525-f823-315e76258c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Cauchy.comap [UniformSpace β] {f : Filter β} {m : α → β} (hf : Cauchy f)
    (hm : comap (fun p : α × α => (m p.1, m p.2)) (𝓤 β) ≤ 𝓤 α) [NeBot (comap m f)] :
    Cauchy (comap m f) :=
  ⟨‹_›,
    calc
      comap m f ×ˢ comap m f = comap (Prod.map m m) (f ×ˢ f) := prod_comap_comap_eq
      _ ≤ comap (Prod.map m m) (𝓤 β) := comap_mono hf.right
      _ ≤ 𝓤 α := hm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
