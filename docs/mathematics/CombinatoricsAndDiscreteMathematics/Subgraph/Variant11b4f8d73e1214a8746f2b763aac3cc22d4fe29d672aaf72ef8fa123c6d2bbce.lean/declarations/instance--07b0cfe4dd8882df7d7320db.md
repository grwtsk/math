# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:445752b05c1cfa9143eddfc336c21f38bdb1c7979729e9dd2f73a2f92d8956ee",
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
  "slug": "instance--07b0cfe4dd8882df7d7320db",
  "source": {
    "blob": "ede22de8653477081bd8b38a9c0fdb7facc1fb6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b0cfe4dd8882df7d7320db86e8b523418ee495043e833f1471850719b77c4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:445752b05c1cfa9143eddfc336c21f38bdb1c7979729e9dd2f73a2f92d8956ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsPartialOrder (Graph α β) (· ≤c ·) where
  refl _ := mk' le_rfl fun _ _ h _ ↦ h.edge_mem
  trans _ _ _ h₁ h₂ := h₁.trans h₂
  antisymm _ _ h₁ h₂ := h₁.le.antisymm h₂.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede22de8653477081bd8b38a9c0fdb7facc1fb6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
