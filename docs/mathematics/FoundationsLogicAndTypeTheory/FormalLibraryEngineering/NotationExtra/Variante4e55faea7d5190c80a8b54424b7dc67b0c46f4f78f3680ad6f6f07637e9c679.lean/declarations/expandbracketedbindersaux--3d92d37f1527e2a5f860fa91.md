# expandBracketedBindersAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8ce3b48451cd7d83de15baaa63c00ef646fb5c1670ea26eca677aa891d89d27",
  "kind": "def",
  "lexical_name": "expandBracketedBindersAux",
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
  "slug": "expandbracketedbindersaux--3d92d37f1527e2a5f860fa91",
  "source": {
    "blob": "954aa9578f911c0b355900e09750668166f6dfb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d92d37f1527e2a5f860fa914a5e07b8a03244c2755b34a56b4c0c0ee5e3b92d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8ce3b48451cd7d83de15baaa63c00ef646fb5c1670ea26eca677aa891d89d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def expandBracketedBindersAux (combinator : Syntax) (binders : Array Syntax) (body : Syntax) : MacroM Syntax :=
  let rec loop (i : Nat) (h : i ≤ binders.size) (acc : Syntax) := do
    match i, h with
    | 0, _   => pure acc
    | i+1, h =>
      let idents := binders[i][1].getArgs
      let type   := binders[i][3]
      loop i (Nat.le_of_succ_le h) (← expandExplicitBindersAux combinator idents (some type) acc)
  loop binders.size (by simp) body

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954aa9578f911c0b355900e09750668166f6dfb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
