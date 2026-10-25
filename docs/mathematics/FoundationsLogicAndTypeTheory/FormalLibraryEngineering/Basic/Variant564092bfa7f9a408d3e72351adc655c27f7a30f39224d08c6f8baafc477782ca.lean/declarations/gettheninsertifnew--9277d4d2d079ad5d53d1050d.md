# getThenInsertIfNew?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:861887c7f1e4e6ebb64505ecbec77f95999daba3052a5836d394bbbfff0ef552",
  "kind": "def",
  "lexical_name": "getThenInsertIfNew?",
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
  "slug": "gettheninsertifnew--9277d4d2d079ad5d53d1050d",
  "source": {
    "blob": "67be6c8517a0068d9683dd6b9a8305b11e7c9666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9277d4d2d079ad5d53d1050dfc6e8f1e69e8dac9bba870c8286e68683e5a7af7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:861887c7f1e4e6ebb64505ecbec77f95999daba3052a5836d394bbbfff0ef552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getThenInsertIfNew? [EquivBEq α] [LawfulHashable α]
    (m : ExtDHashMap α (fun _ => β)) (a : α) (b : β) :
    Option β × ExtDHashMap α (fun _ => β) :=
  m.lift (fun m =>
      let m' := DHashMap.Const.getThenInsertIfNew? m a b
      ⟨m'.1, mk m'.2⟩)
    (fun m m' (h : m ~m m') =>
      Prod.ext
        (DHashMap.Const.getThenInsertIfNew?_fst.symm ▸
          DHashMap.Const.getThenInsertIfNew?_fst.symm ▸ h.constGet?_eq)
        (sound <|
          DHashMap.Const.getThenInsertIfNew?_snd.symm ▸
          DHashMap.Const.getThenInsertIfNew?_snd.symm ▸ h.insertIfNew a b))

end Const

@[inline, inherit_doc DHashMap.getKey?]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67be6c8517a0068d9683dd6b9a8305b11e7c9666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
