# coprodᵢ_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4833d14a0fe1af195e97f21b73c82d4e5ea184ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2e2a337-5301-6359-2824-e952c4749b72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b232a56e-2dfb-66ab-81af-878401a4734a",
  "kind": "theorem",
  "lexical_name": "coprodᵢ_cofinite",
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
  "slug": "coprod-cofinite--97b4031f3e222c402a2fa28c",
  "source": {
    "blob": "4833d14a0fe1af195e97f21b73c82d4e5ea184ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b4031f3e222c402a2fa28cce74aea95c04853ec4fb8ea20db35354f1cdd8da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b232a56e-2dfb-66ab-81af-878401a4734a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprodᵢ_cofinite {α : ι → Type*} [Finite ι] :
    (Filter.coprodᵢ fun i => (cofinite : Filter (α i))) = cofinite :=
  Filter.coext fun s => by
    simp only [compl_mem_coprodᵢ, mem_cofinite, compl_compl, forall_finite_image_eval_iff]
set_option linter.uppercaseLean3 false in
#align filter.Coprod_cofinite Filter.coprodᵢ_cofinite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4833d14a0fe1af195e97f21b73c82d4e5ea184ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
