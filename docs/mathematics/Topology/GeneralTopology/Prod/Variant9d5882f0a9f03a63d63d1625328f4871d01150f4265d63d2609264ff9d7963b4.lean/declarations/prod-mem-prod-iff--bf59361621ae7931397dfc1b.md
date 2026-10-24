# prod_mem_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf628196322ef03c5761f0c1e72a542912d06aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a714104-73ee-df29-96e2-0b82ff003faf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc14c33d-3569-8415-5fe2-2c60459b6468",
  "kind": "theorem",
  "lexical_name": "prod_mem_prod_iff",
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
  "slug": "prod-mem-prod-iff--bf59361621ae7931397dfc1b",
  "source": {
    "blob": "cf628196322ef03c5761f0c1e72a542912d06aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf59361621ae7931397dfc1bc9602cd2844d05a01c7a0c5d42c89a01dcbbdcb8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc14c33d-3569-8415-5fe2-2c60459b6468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_mem_prod_iff {s : Set α} {t : Set β} {f : Filter α} {g : Filter β} [f.NeBot]
    [g.NeBot] : s ×ˢ t ∈ f ×ˢ g ↔ s ∈ f ∧ t ∈ g :=
  ⟨fun h =>
    let ⟨_s', hs', _t', ht', H⟩ := mem_prod_iff.1 h
    (prod_subset_prod_iff.1 H).elim
      (fun ⟨hs's, ht't⟩ => ⟨mem_of_superset hs' hs's, mem_of_superset ht' ht't⟩) fun h =>
      h.elim (fun hs'e => absurd hs'e (nonempty_of_mem hs').ne_empty) fun ht'e =>
        absurd ht'e (nonempty_of_mem ht').ne_empty,
    fun h => prod_mem_prod h.1 h.2⟩
#align filter.prod_mem_prod_iff Filter.prod_mem_prod_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf628196322ef03c5761f0c1e72a542912d06aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
