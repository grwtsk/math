# containsThenInsertIfNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38ea7d3705ce089dc5132e62079f353e3db9d2f26ce4e1a2a7845b4174a0cf29",
  "kind": "def",
  "lexical_name": "containsThenInsertIfNew",
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
  "slug": "containstheninsertifnew--21d42a71f0c4da49e5ef8565",
  "source": {
    "blob": "67be6c8517a0068d9683dd6b9a8305b11e7c9666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21d42a71f0c4da49e5ef856507bb539c0a81be47f145c3413432b79aea82fa8c",
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

Occurrence: `declaration:38ea7d3705ce089dc5132e62079f353e3db9d2f26ce4e1a2a7845b4174a0cf29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def containsThenInsertIfNew [EquivBEq α] [LawfulHashable α]
    (m : ExtDHashMap α β) (a : α) (b : β a) : Bool × ExtDHashMap α β :=
  m.lift (fun m => let m' := m.containsThenInsertIfNew a b; ⟨m'.1, mk m'.2⟩)
    (fun m m' (h : m ~m m') =>
      Prod.ext
        (m.containsThenInsertIfNew_fst.symm ▸ m'.containsThenInsertIfNew_fst.symm ▸ h.contains_eq)
        (sound <|
          m.containsThenInsertIfNew_snd.symm ▸ m'.containsThenInsertIfNew_snd.symm ▸ h.insertIfNew a b))

@[inline, inherit_doc DHashMap.getThenInsertIfNew?]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67be6c8517a0068d9683dd6b9a8305b11e7c9666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
