# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9df780dd816313158927ecb9bc0ed5ab7cf1c76ece23f1af379b524ede58a98c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f9aab9e1c645cb391a31b03c",
  "source": {
    "blob": "454da57d03f8316a1946bd94d6665572a776dcd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9aab9e1c645cb391a31b03c620e30fcc119d684ef9b4fb6f057de01f33eb882",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9df780dd816313158927ecb9bc0ed5ab7cf1c76ece23f1af379b524ede58a98c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) compactSpace_of_completeLinearOrder {α : Type*} [CompleteLinearOrder α]
    [TopologicalSpace α] [OrderTopology α] : CompactSpace α :=
  ⟨by simp only [← Icc_bot_top, isCompact_Icc]⟩
#align compact_space_of_complete_linear_order compactSpace_of_completeLinearOrder

section

variable {α : Type*} [Preorder α] [TopologicalSpace α] [CompactIccSpace α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454da57d03f8316a1946bd94d6665572a776dcd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
