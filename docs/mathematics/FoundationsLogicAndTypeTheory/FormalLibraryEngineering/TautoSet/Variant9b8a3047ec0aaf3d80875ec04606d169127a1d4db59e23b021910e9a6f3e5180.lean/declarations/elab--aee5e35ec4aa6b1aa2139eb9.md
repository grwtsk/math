# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cccdebf1f1cc70b016606c034017f495208c191fcc614650bd72ef7c4ce2844",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--aee5e35ec4aa6b1aa2139eb9",
  "source": {
    "blob": "1e1ff6ebedb9e21a320adedb42eee9b39debd4dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TautoSet/Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aee5e35ec4aa6b1aa2139eb99e9479a83d66c2a1d6a07b16ae2a8d980eb08294",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TautoSet/Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cccdebf1f1cc70b016606c034017f495208c191fcc614650bd72ef7c4ce2844`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab (name := specialize_all) "specialize_all" x:term : tactic => withMainContext do
  for h in ← getLCtx do
    evalTactic (← `(tactic|specialize $(mkIdent h.userName) $x)) <|> pure ()


/--
`tauto_set` attempts to prove tautologies involving hypotheses and goals of the form `X ⊆ Y`
or `X = Y`, where `X`, `Y` are expressions built using ∪, ∩, \, and ᶜ from finitely many
variables of type `Set α`. It also unfolds expressions of the form `Disjoint A B` and
`symmDiff A B`.

Examples:
```lean
example {α} (A B C D : Set α) (h1 : A ⊆ B) (h2 : C ⊆ D) : C \ B ⊆ D \ A := by
  tauto_set

example {α} (A B C : Set α) (h1 : A ⊆ B ∪ C) : (A ∩ B) ∪ (A ∩ C) = A := by
  tauto_set
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TautoSet/Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TautoSet/Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e1ff6ebedb9e21a320adedb42eee9b39debd4dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
