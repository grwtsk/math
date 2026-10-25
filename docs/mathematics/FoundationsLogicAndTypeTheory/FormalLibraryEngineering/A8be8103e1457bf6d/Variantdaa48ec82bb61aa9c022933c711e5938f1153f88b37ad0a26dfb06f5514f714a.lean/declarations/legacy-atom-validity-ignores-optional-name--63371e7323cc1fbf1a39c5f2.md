# legacy_atom_validity_ignores_optional_name

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa3d55a1ef85847cab4abc55846d7e526c19f49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa48ec82bb61aa9c022933c711e5938f1153f88b37ad0a26dfb06f5514f714a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcd66697-d635-f9a8-62f9-e4839ecd8da1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:202356fd-a655-3968-a1c3-16a8e0f89b15",
  "kind": "theorem",
  "lexical_name": "legacy_atom_validity_ignores_optional_name",
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
  "slug": "legacy-atom-validity-ignores-optional-name--63371e7323cc1fbf1a39c5f2",
  "source": {
    "blob": "fa3d55a1ef85847cab4abc55846d7e526c19f49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8be8103e1457bf6d/Variantdaa48ec82bb61aa9c022933c711e5938f1153f88b37ad0a26dfb06f5514f714a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63371e7323cc1fbf1a39c5f2755e0af80067479332d7ecdb760fe20668274413",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8be8103e1457bf6d/Variantdaa48ec82bb61aa9c022933c711e5938f1153f88b37ad0a26dfb06f5514f714a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202356fd-a655-3968-a1c3-16a8e0f89b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem legacy_atom_validity_ignores_optional_name (atom : SourceAtom) :
    atom.Valid =
      (atom.id.Valid ∧ atom.commands.size > 0 ∧ atom.probeValidated = true ∧
        atom.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true) := rfl

end MathDiscovery.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8be8103e1457bf6d/Variantdaa48ec82bb61aa9c022933c711e5938f1153f88b37ad0a26dfb06f5514f714a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8be8103e1457bf6d/Variantdaa48ec82bb61aa9c022933c711e5938f1153f88b37ad0a26dfb06f5514f714a.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa3d55a1ef85847cab4abc55846d7e526c19f49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
