# run_agrees_with_partial_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e83f99c1-54b0-9d15-cfda-fb792d46261d",
  "kind": "theorem",
  "lexical_name": "run_agrees_with_partial_map",
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
  "slug": "run-agrees-with-partial-map--9ac5aaa5de7a9a6ed3c5fe27",
  "source": {
    "blob": "5579ab4a77c6a36d2665c8ed3a2ba2fe85a1b44e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac5aaa5de7a9a6ed3c5fe276d497cc17c376474c8ce285004f4ed1b02db9299",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83f99c1-54b0-9d15-cfda-fb792d46261d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_agrees_with_partial_map
    {C : Type u} [Category.{v} C]
    (cmd : Command C)
    (U : C)
    (s : cmd.source.F.obj (op U))
    (h : cmd.domainPredicate U s) :
    cmd.run U s h =
      cmd.map U ⟨s, (cmd.domainPredicate_iff U s).mp h⟩ :=
  cmd.run_eq_map U s h

end Command
end Morphism
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5579ab4a77c6a36d2665c8ed3a2ba2fe85a1b44e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
