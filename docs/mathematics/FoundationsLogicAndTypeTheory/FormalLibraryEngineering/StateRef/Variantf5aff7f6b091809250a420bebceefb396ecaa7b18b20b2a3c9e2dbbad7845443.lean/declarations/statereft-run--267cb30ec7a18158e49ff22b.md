# StateRefT'.run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54a8b8c7a55eff83eae4f36e37d1345d223df31f3c84c0c2f03d2b518fd65ba7",
  "kind": "def",
  "lexical_name": "StateRefT'.run",
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
  "slug": "statereft-run--267cb30ec7a18158e49ff22b",
  "source": {
    "blob": "e3eabbfcde0221ed37d5ac20291fefcbdf78afbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateRef/Variantf5aff7f6b091809250a420bebceefb396ecaa7b18b20b2a3c9e2dbbad7845443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:267cb30ec7a18158e49ff22bd80072db47fc4c353afdbf1486311d2ef7899542",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateRef/Variantf5aff7f6b091809250a420bebceefb396ecaa7b18b20b2a3c9e2dbbad7845443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54a8b8c7a55eff83eae4f36e37d1345d223df31f3c84c0c2f03d2b518fd65ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StateRefT'.run {ω σ : Type} {m : Type → Type} [Monad m] [MonadLiftT (ST ω) m] {α : Type} (x : StateRefT' ω σ m α) (s : σ) : m (α × σ) := do
  let ref ← ST.mkRef s
  let a ← x ref
  let s ← ref.get
  pure (a, s)

/--
Executes an action from a monad with added state in the underlying monad `m`. Given an initial
state, it returns a value, discarding the final state.

The monad `m` must support `ST` effects in order to create and mutate reference cells.
-/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateRef/Variantf5aff7f6b091809250a420bebceefb396ecaa7b18b20b2a3c9e2dbbad7845443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateRef/Variantf5aff7f6b091809250a420bebceefb396ecaa7b18b20b2a3c9e2dbbad7845443.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eabbfcde0221ed37d5ac20291fefcbdf78afbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
