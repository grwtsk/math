# Cofix.dest_corec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "065a04c4fa94da2b259b9d65e453a60767f38bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad50c09f-b51a-92fe-61fd-874bc8a60565",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22fd467c-1138-9023-547b-eeceb9059b22",
  "kind": "theorem",
  "lexical_name": "Cofix.dest_corec",
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
  "slug": "cofix-dest-corec--c804bdd57f40ce2fb6bad19b",
  "source": {
    "blob": "065a04c4fa94da2b259b9d65e453a60767f38bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 421,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c804bdd57f40ce2fb6bad19b97e3eac97d159b340f2b4dc314e6fb365cf416f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22fd467c-1138-9023-547b-eeceb9059b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cofix.dest_corec {α : Type u} (g : α → F α) (x : α) :
    Cofix.dest (Cofix.corec g x) = Cofix.corec g <$> g x := by
  conv =>
    lhs
    rw [Cofix.dest, Cofix.corec];
  dsimp
  rw [corecF_eq, abs_map, abs_repr, ← comp_map]; rfl
#align qpf.cofix.dest_corec Qpf.Cofix.dest_corec

-- Porting note: Needed to add `(motive := _)` to get `Quot.inductionOn` to work
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065a04c4fa94da2b259b9d65e453a60767f38bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
