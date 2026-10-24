# traj_map_frestrictLe_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d74cf76d06abd4ac83e88e8a06b16bc1fc84a710",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98758fde-eaef-8045-5086-d306287f81bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b89c7dc7-733a-f7b8-5650-2b32427dd1ff",
  "kind": "lemma",
  "lexical_name": "traj_map_frestrictLe_of_le",
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
  "slug": "traj-map-frestrictle-of-le--53db1d341ac1159db1695c9d",
  "source": {
    "blob": "d74cf76d06abd4ac83e88e8a06b16bc1fc84a710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 529,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53db1d341ac1159db1695c9d60b11081a7ba2a3a89229f93c90522a704495823",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b89c7dc7-733a-f7b8-5650-2b32427dd1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traj_map_frestrictLe_of_le {a b : ℕ} (hab : a ≤ b) :
    (traj κ b).map (frestrictLe a) =
      deterministic (frestrictLe₂ hab) (measurable_frestrictLe₂ _) := by
  rw [traj_map_frestrictLe, partialTraj_le]

variable (κ)

/-- To check that `η = traj κ a` it is enough to show that the restriction of `η` to variables `≤ b`
is `partialTraj κ a b` for any `b ≥ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74cf76d06abd4ac83e88e8a06b16bc1fc84a710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
