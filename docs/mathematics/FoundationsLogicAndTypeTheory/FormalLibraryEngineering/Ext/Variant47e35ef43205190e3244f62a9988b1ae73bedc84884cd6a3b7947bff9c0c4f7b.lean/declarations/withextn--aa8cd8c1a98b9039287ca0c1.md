# withExtN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04dac157ff055aa25de4ca207e53ef5b9bf263e46a8147d7857fdacbe32b4202",
  "kind": "def",
  "lexical_name": "withExtN",
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
  "slug": "withextn--aa8cd8c1a98b9039287ca0c1",
  "source": {
    "blob": "fd0947f895b6b079da872c1277683d16c6a0c9b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa8cd8c1a98b9039287ca0c173341805c9da44951c6aa92d9844b8abec4563e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04dac157ff055aa25de4ca207e53ef5b9bf263e46a8147d7857fdacbe32b4202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withExtN [Monad m] [MonadLiftT TermElabM m] [MonadExcept Exception m]
    (g : MVarId) (pats : List (TSyntax `rcasesPat)) (k : MVarId → List (TSyntax `rcasesPat) → m Nat)
    (depth := 1000000) (failIfUnchanged := true) : m Nat :=
  match depth with
  | 0 => k g pats
  | depth+1 => do
    if failIfUnchanged then
      withExt1 g pats fun g pats => withExtN g pats k depth (failIfUnchanged := false)
    else try
      withExt1 g pats fun g pats => withExtN g pats k depth (failIfUnchanged := false)
    catch _ => k g pats

/--
Apply extensionality lemmas as much as possible, using `pats` to introduce the variables
in extensionality lemmas like `funext`. Returns a list of subgoals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd0947f895b6b079da872c1277683d16c6a0c9b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
