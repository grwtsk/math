# uniformContinuous_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd62099175ae9f9e7b8f64dbfe09f54125983c4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b23a4c1d-db9a-092b-2db2-0e3a9a6fc01b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebbbe803-a9cc-0215-af89-b93f36d35fba",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_pi",
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
  "slug": "uniformcontinuous-pi--501dcf6bc544426eb1beb5b1",
  "source": {
    "blob": "bd62099175ae9f9e7b8f64dbfe09f54125983c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:501dcf6bc544426eb1beb5b1f16646e16fc7f6a6f0c6ccdb895020fc2e8a0260",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebbbe803-a9cc-0215-af89-b93f36d35fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_pi {β : Type*} [UniformSpace β] {f : β → ∀ i, α i} :
    UniformContinuous f ↔ ∀ i, UniformContinuous fun x => f x i := by
  -- porting note: required `Function.comp` to close
  simp only [UniformContinuous, Pi.uniformity, tendsto_iInf, tendsto_comap_iff, Function.comp]
#align uniform_continuous_pi uniformContinuous_pi

variable (α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd62099175ae9f9e7b8f64dbfe09f54125983c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
