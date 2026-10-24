# unoneD_eq_unoneD_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd122d12cffecd329b723886917ad0a37d020863",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b82ed9e-3d35-c133-7f20-54ffcf9cc2d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebe8f855-56d4-468c-d9fe-225e69ce83be",
  "kind": "theorem",
  "lexical_name": "unoneD_eq_unoneD_iff",
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
  "slug": "unoned-eq-unoned-iff--d4ade84e21ad6c87b61ee2c4",
  "source": {
    "blob": "cd122d12cffecd329b723886917ad0a37d020863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 222,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ade84e21ad6c87b61ee2c48887e536661137df5c90c52bae0407ba27d3dd07",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe8f855-56d4-468c-d9fe-225e69ce83be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unoneD_eq_unoneD_iff {d : α} {x y : WithOne α} :
    unoneD d x = unoneD d y ↔ x = y ∨ x = d ∧ y = 1 ∨ x = 1 ∧ y = d := by
  induction y <;> simp [unoneD_eq_iff, or_comm]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd122d12cffecd329b723886917ad0a37d020863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
