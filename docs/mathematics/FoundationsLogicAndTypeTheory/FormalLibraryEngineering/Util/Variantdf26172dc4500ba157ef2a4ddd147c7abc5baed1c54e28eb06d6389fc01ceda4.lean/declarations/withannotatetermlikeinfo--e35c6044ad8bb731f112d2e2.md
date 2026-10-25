# withAnnotateTermLikeInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6337035e7c756b59712766f76609b809d67936b92c74d6dac0ae15c0b8ea8486",
  "kind": "def",
  "lexical_name": "withAnnotateTermLikeInfo",
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
  "slug": "withannotatetermlikeinfo--e35c6044ad8bb731f112d2e2",
  "source": {
    "blob": "5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e35c6044ad8bb731f112d2e211750f4036dfacd1823a126e3374bee23045057a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6337035e7c756b59712766f76609b809d67936b92c74d6dac0ae15c0b8ea8486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withAnnotateTermLikeInfo (d : DelabM (TSyntax n)) : DelabM (TSyntax n) := do
  let stx ← d
  annotateTermLikeInfo stx

end Lean.PrettyPrinter.Delaborator

section MonadSaveCtx

/--
Certain monad transformers such as `ReaderT` and `StateT`/`StateRefT`
provide additional *context* (read-only) and *state* (mutable).
`MonadSaveCtx m n` means that `m` is a stack of contexts/states on top of `n`.
It provides a way to suspend an `m`-action by saving the "current" value of this stack.

For example, `m = Lean.MetaM` is a stack of contexts and states on top of `n = EIO Lean.Exception`.
Thus we have `saveCtxM : Lean.MetaM α → Lean.MetaM (EIO Lean.Exception α)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
