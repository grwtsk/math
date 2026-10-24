# Balanced.alter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a13a8c5d8e08cfe0c77a535da97cc37d21a3989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:339a8be0-dded-f0d9-84de-b044e1154b5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:908893ab-b4b2-2c7b-9d08-faf5cdab826b",
  "kind": "theorem",
  "lexical_name": "Balanced.alter",
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
  "slug": "balanced-alter--dff65eecd523ca941af4e78f",
  "source": {
    "blob": "2a13a8c5d8e08cfe0c77a535da97cc37d21a3989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 361,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff65eecd523ca941af4e78f01606d60553f6f20ed82df358b71e056e1860aee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908893ab-b4b2-2c7b-9d08-faf5cdab826b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.alter {t : RBNode α}
    (h : t.Balanced c n) : ∃ c n, (t.alter cut f).Balanced c n := by
  simp [alter]; split
  · next path eq =>
    split
    · exact ⟨_, _, h⟩
    · have ⟨_, _, .nil, h⟩ := h.zoom .root eq
      exact ⟨_, h.insertNew⟩
  · next path eq =>
    have ⟨_, _, h, hp⟩ := h.zoom .root eq
    split
    · match h with
      | .red ha hb => exact ⟨_, hp.del ((ha.append hb).of_false (· rfl rfl)) (fun.)⟩
      | .black ha hb => exact ⟨_, hp.del ⟨_, rfl, (ha.append hb).imp fun _ => ⟨⟩⟩ (fun.)⟩
    · match h with
      | .red ha hb => exact ⟨_, _, hp.fill (.red ha hb)⟩
      | .black ha hb => exact ⟨_, _, hp.fill (.black ha hb)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a13a8c5d8e08cfe0c77a535da97cc37d21a3989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
