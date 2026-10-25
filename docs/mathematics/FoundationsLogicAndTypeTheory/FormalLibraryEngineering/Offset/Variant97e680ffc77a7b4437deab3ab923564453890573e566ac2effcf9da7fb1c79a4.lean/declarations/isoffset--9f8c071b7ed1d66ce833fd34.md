# isOffset?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecb680e9a8da512f4696fb0c87b6714ac693862b34472e1eeeab812557769802",
  "kind": "def",
  "lexical_name": "isOffset?",
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
  "slug": "isoffset--9f8c071b7ed1d66ce833fd34",
  "source": {
    "blob": "ccd017b25966749d694b52471bf9e2afb15ff3a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f8c071b7ed1d66ce833fd349408a70af9292a300fc90099c709679cdc0043b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecb680e9a8da512f4696fb0c87b6714ac693862b34472e1eeeab812557769802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isOffset? (e : Expr) : OptionT MetaM (Expr × Nat) := do
  let add (a b : Expr) := do
    let v ← evalNat b
    let (s, k) ← getOffset a
    return (s, k+v)
  match_expr e with
  | Nat.succ a =>
    let (s, k) ← getOffset a
    return (s, k+1)
  | Nat.add a b => add a b
  | Add.add _ i a b => guard (← matchesInstance i Nat.mkInstAdd); add a b
  | HAdd.hAdd _ _ _ i a b => guard (← matchesInstance i Nat.mkInstHAdd); add a b
  | _ => failure

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd017b25966749d694b52471bf9e2afb15ff3a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
