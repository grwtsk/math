# orbitRel.Quotient.mem_subgroup_orbit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1c79cba91c012c4012dcde928bbc63bae4b859f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf70af56ad01e2be99c2c6335db1c5a062076ae2eaa3167b7eaefa8262b693e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b76714eb-df8a-cdbb-3ded-9e0ef0eb710a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28262c2c-a79e-f39e-eb3a-a098d70066bf",
  "kind": "lemma",
  "lexical_name": "orbitRel.Quotient.mem_subgroup_orbit_iff",
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
  "slug": "orbitrel-quotient-mem-subgroup-orbit-iff--e16c0c0186858b978ef21e46",
  "source": {
    "blob": "b1c79cba91c012c4012dcde928bbc63bae4b859f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 431,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantcf70af56ad01e2be99c2c6335db1c5a062076ae2eaa3167b7eaefa8262b693e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e16c0c0186858b978ef21e46164876afd7406958c752b3ed5a4511700a762c3c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantcf70af56ad01e2be99c2c6335db1c5a062076ae2eaa3167b7eaefa8262b693e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28262c2c-a79e-f39e-eb3a-a098d70066bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orbitRel.Quotient.mem_subgroup_orbit_iff {H : Subgroup G} {x : orbitRel.Quotient G α}
    {a b : x.orbit} : (a : α) ∈ MulAction.orbit H (b : α) ↔ a ∈ MulAction.orbit H b := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rcases h with ⟨g, h⟩
    dsimp at h
    rw [subgroup_smul_def, ← orbit.coe_smul, ← Subtype.ext_iff] at h
    subst h
    exact MulAction.mem_orbit _ g
  · rcases h with ⟨g, rfl⟩
    exact MulAction.mem_orbit _ g

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantcf70af56ad01e2be99c2c6335db1c5a062076ae2eaa3167b7eaefa8262b693e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantcf70af56ad01e2be99c2c6335db1c5a062076ae2eaa3167b7eaefa8262b693e9.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c79cba91c012c4012dcde928bbc63bae4b859f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
