# Opens.complOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a29f51052f3571e9866cff0feae94e90256ec4cf60d3b655483f253c091f6a2",
  "kind": "def",
  "lexical_name": "Opens.complOrderIso",
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
  "slug": "opens-complorderiso--1f3325366846871693eeebc8",
  "source": {
    "blob": "d7a54c643bb78f8ced2299eba563fcc50d7cda48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f3325366846871693eeebc86418cc07101b0797ffc265c455c8fed2cc803e59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a29f51052f3571e9866cff0feae94e90256ec4cf60d3b655483f253c091f6a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Opens.complOrderIso : Opens α ≃o (Closeds α)ᵒᵈ where
  toFun := OrderDual.toDual ∘ Opens.compl
  invFun := Closeds.compl ∘ OrderDual.ofDual
  left_inv s := by simp [Opens.compl_compl]
  right_inv s := by simp [Closeds.compl_compl]
  map_rel_iff' := (@OrderDual.toDual_le_toDual (Closeds α)).trans compl_subset_compl

variable {α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a54c643bb78f8ced2299eba563fcc50d7cda48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
