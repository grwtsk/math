# collectFVarIdsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e5f0356e4506ff95a0c571e53084c92f90d1cff26aadf23d59b4089b1825bf",
  "kind": "def",
  "lexical_name": "collectFVarIdsAt",
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
  "slug": "collectfvaridsat--aad65202e33c2f61fd80ab23",
  "source": {
    "blob": "344ea4561f941db7a5665f5d63f54019b2cf59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aad65202e33c2f61fd80ab239618fd0b73bce33dbf0c6d8fa62aad9f60917433",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e5f0356e4506ff95a0c571e53084c92f90d1cff26aadf23d59b4089b1825bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectFVarIdsAt (e : Expr) (fvarIdToPos : FVarIdMap Nat) : Array FVarId :=
  let s := collectFVars {} e
  let fvarIds := s.fvarIds.filter (fvarIdToPos.contains ·)
  fvarIds.qsort fun fvarId₁ fvarId₂ =>
    let pos₁ := fvarIdToPos.get! fvarId₁
    let pos₂ := fvarIdToPos.get! fvarId₂
    pos₁ < pos₂

open Lean.Meta.Sym.Internal in
/--
Build a chain of arrows `α₁ → α₂ → ... → αₙ → β` using the `mkForallS` wrapper
(not `.forallE`) to preserve sharing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344ea4561f941db7a5665f5d63f54019b2cf59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
