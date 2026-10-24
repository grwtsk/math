# M.dest_corec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "262d6118784c59493f44f05d67bb5c6d102535fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:851845bb-da60-4c1d-3f6a-cb476ac9f3dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa640994-cc78-ab80-e9b4-c8a316b4e944",
  "kind": "theorem",
  "lexical_name": "M.dest_corec",
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
  "slug": "m-dest-corec--a854cda178df71d7ff8cbad2",
  "source": {
    "blob": "262d6118784c59493f44f05d67bb5c6d102535fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a854cda178df71d7ff8cbad25cf67b1cf002a7f4cc1c672f4ae7134c4fea125a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa640994-cc78-ab80-e9b4-c8a316b4e944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem M.dest_corec {α : TypeVec n} {β : Type u} (g : β → P.Obj (α.append1 β)) (x : β) :
    M.dest P (M.corec P g x) = appendFun id (M.corec P g) <$$> g x := by
  trans
  apply M.dest_corec'
  cases' g x with a f; dsimp
  rw [MvPFunctor.map_eq]; congr
  conv =>
    rhs
    rw [← split_dropFun_lastFun f, appendFun_comp_splitFun]

set_option linter.uppercaseLean3 false in
#align mvpfunctor.M.dest_corec MvPFunctor.M.dest_corec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262d6118784c59493f44f05d67bb5c6d102535fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
