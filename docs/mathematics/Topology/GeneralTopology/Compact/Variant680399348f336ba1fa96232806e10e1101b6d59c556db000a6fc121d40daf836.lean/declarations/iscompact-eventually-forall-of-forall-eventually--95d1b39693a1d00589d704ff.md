# IsCompact.eventually_forall_of_forall_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee81e41eedfe82ab91053ef242557a393994b7e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:200fbe49-7575-ae5a-e0eb-ca5025285d1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e552728-b393-dcea-1d7e-9def608302a7",
  "kind": "theorem",
  "lexical_name": "IsCompact.eventually_forall_of_forall_eventually",
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
  "slug": "iscompact-eventually-forall-of-forall-eventually--95d1b39693a1d00589d704ff",
  "source": {
    "blob": "ee81e41eedfe82ab91053ef242557a393994b7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d1b39693a1d00589d704ffc5c7a020727d030e9019449c6a8a1bf553acd381",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e552728-b393-dcea-1d7e-9def608302a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.eventually_forall_of_forall_eventually {x₀ : X} {K : Set Y} (hK : IsCompact K)
    {P : X → Y → Prop} (hP : ∀ y ∈ K, ∀ᶠ z : X × Y in 𝓝 (x₀, y), P z.1 z.2) :
    ∀ᶠ x in 𝓝 x₀, ∀ y ∈ K, P x y := by
  simp only [nhds_prod_eq, ← eventually_iSup, ← hK.prod_nhdsSet_eq_biSup] at hP
  exact hP.curry.mono fun _ h ↦ h.self_of_nhdsSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee81e41eedfe82ab91053ef242557a393994b7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
