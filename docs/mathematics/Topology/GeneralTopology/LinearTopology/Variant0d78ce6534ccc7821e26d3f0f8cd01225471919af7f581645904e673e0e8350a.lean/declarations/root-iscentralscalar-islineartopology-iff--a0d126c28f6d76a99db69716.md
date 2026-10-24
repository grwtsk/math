# _root_.IsCentralScalar.isLinearTopology_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23ab2997781262817d165315ca05ab7786ca4f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96187061-7dd1-8f0e-c465-88484536b47d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ea61ea-9ca8-33c0-d343-89f49faaf068",
  "kind": "theorem",
  "lexical_name": "_root_.IsCentralScalar.isLinearTopology_iff",
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
  "slug": "root-iscentralscalar-islineartopology-iff--a0d126c28f6d76a99db69716",
  "source": {
    "blob": "e23ab2997781262817d165315ca05ab7786ca4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d126c28f6d76a99db69716d046d9f7c9cd563349436bdbe1f2f19c1cecef63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ea61ea-9ca8-33c0-d343-89f49faaf068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsCentralScalar.isLinearTopology_iff [Module Rᵐᵒᵖ M] [IsCentralScalar R M] :
    IsLinearTopology Rᵐᵒᵖ M ↔ IsLinearTopology R M := by
  constructor <;> intro H
  · exact mk_of_hasBasis' R (IsLinearTopology.hasBasis_submodule Rᵐᵒᵖ)
      fun S r m hm ↦ op_smul_eq_smul r m ▸ S.smul_mem _ hm
  · exact mk_of_hasBasis' Rᵐᵒᵖ (IsLinearTopology.hasBasis_submodule R)
      fun S r m hm ↦ unop_smul_eq_smul r m ▸ S.smul_mem _ hm

end Module

section Ring

variable {R : Type*} [Ring R] [TopologicalSpace R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23ab2997781262817d165315ca05ab7786ca4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
