# addAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56c26682e89d7f964c0195175ff627a527bb9fb04eb3029aa691ca6ad716cd79",
  "kind": "def",
  "lexical_name": "addAtom",
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
  "slug": "addatom--d5f4e8c4f2229e9cd317464c",
  "source": {
    "blob": "f2f586ee19a04ac04f1f40fc84e76d13c272f779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f4e8c4f2229e9cd317464c9bf5313efd2633a3bc6f6cbf9db59f906778c843",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56c26682e89d7f964c0195175ff627a527bb9fb04eb3029aa691ca6ad716cd79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addAtom {decls : Array (Decl α)} {hidx} (state : State α decls idx) (a : α)
    (h : decls[idx]'hidx = .atom a) :
    State α decls (idx + 1) :=
  match hmap : state.map[a]? with
  | some _ =>
    { state with
      inv2 := by
        apply Inv2.oldAtom
        · exact state.inv2
        · assumption
        · assumption
    }
  | none =>
    {
      max := state.max + 1
      map := state.map.insert a state.max
      inv1 := by
        apply State.Inv1.insert
        · exact state.inv1
        · assumption
      inv2 := by
        apply Inv2.newAtom
        · exact state.inv2
        · assumption
        · assumption
    }

/--
Insert a `Decl.false` into the `State` structure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2f586ee19a04ac04f1f40fc84e76d13c272f779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
