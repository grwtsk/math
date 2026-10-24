# jacobson_smul_top_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7f65933a8dfd55a0d070057ce4ab97ea263810a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a25e7fa-2ec3-1443-4ae6-bbae8c0bd942",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66914948-a980-b762-9ed6-f7dccf7c96c8",
  "kind": "theorem",
  "lexical_name": "jacobson_smul_top_le",
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
  "slug": "jacobson-smul-top-le--497c156e89bbfb57a0d175ff",
  "source": {
    "blob": "c7f65933a8dfd55a0d070057ce4ab97ea263810a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:497c156e89bbfb57a0d175ff839e47f3ceed5107f572f5d94161b5f02b893dba",
  "verification": {
    "reference": "docs/verification/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66914948-a980-b762-9ed6-f7dccf7c96c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobson_smul_top_le : jacobson R • (⊤ : Submodule R M) ≤ Module.jacobson R M :=
  Submodule.smul_le.mpr fun _ hr m _ ↦ Module.le_comap_jacobson (LinearMap.toSpanSingleton R M m) hr

end Ring

namespace Submodule

variable {R M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f65933a8dfd55a0d070057ce4ab97ea263810a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
