# sinOrderIso_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 933,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f2b169-aa2b-d294-9a68-5ad68d1e843f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b7b9763-4165-e15a-4be7-885db9c0b97c",
  "kind": "theorem",
  "lexical_name": "sinOrderIso_apply",
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
  "slug": "sinorderiso-apply--3a7803d38ac3e367e7ab6a51",
  "source": {
    "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 937,
    "line": 933,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7803d38ac3e367e7ab6a519b47eb2211ccc42266d18dcd490e89715c00a4be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b7b9763-4165-e15a-4be7-885db9c0b97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–937.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinOrderIso_apply (x : Icc (-(π / 2)) (π / 2)) : sinOrderIso x = ⟨sin x, sin_mem_Icc x⟩ :=
  rfl
#align real.sin_order_iso_apply Real.sinOrderIso_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a46cc6e67df98619eca63a7c546f3701e94aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
