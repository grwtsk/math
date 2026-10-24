# block_card_pos_of_mem_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b09fc381b0c955580f910c55928e7b0e554ff347",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bf2383f-cf9a-c5a7-4c0b-e04ba340ac98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87321e0e-ff07-ea9c-7c6c-9f18bb134be8",
  "kind": "theorem",
  "lexical_name": "block_card_pos_of_mem_parts",
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
  "slug": "block-card-pos-of-mem-parts--aa025a4caa655c6fbd73cf4e",
  "source": {
    "blob": "b09fc381b0c955580f910c55928e7b0e554ff347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa025a4caa655c6fbd73cf4efd31b84167119755d02f68bdf121cd5d666776cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87321e0e-ff07-ea9c-7c6c-9f18bb134be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_card_pos_of_mem_parts
    {n : ℕ}
    (P : DirectionPartition n)
    {B : Finset (Fin n)}
    (hB : B ∈ P.parts) :
    0 < B.card :=
  Finset.card_pos.mpr (block_nonempty_of_mem_parts P hB)

/-- Any proper subset of the full direction set has strictly smaller
cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b09fc381b0c955580f910c55928e7b0e554ff347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
