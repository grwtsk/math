# subsingletonElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c2c9893246b58f073928703a4806e1e57bc3b0e8d58e3eae387540d1ae44f1b",
  "kind": "def",
  "lexical_name": "subsingletonElim",
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
  "slug": "subsingletonelim--e894ddabab8cf64796672f2a",
  "source": {
    "blob": "0b1ce93f4b13e0507ca333baf895d38dd0cc77a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e894ddabab8cf64796672f2af9c09cc9f9430bfaa086464e530cc2b43a1d85cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c2c9893246b58f073928703a4806e1e57bc3b0e8d58e3eae387540d1ae44f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subsingletonElim (mvarId : MVarId) : MetaM Bool :=
  mvarId.withContext do
    let res ← observing? do
      mvarId.checkNotAssigned `subsingletonElim
      let tgt ← withReducible mvarId.getType'
      let some (_, lhs, rhs) := tgt.eq? | failure
      -- Note: `mkAppM` uses `withNewMCtxDepth`, which prevents `Sort _` from specializing to `Prop`
      let pf ← mkAppM ``Subsingleton.elim #[lhs, rhs]
      mvarId.assign pf
      return true
    return res.getD false

end Lean.MVarId
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b1ce93f4b13e0507ca333baf895d38dd0cc77a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
