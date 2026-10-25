# CongrResult.defeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02e759d0b266a3ac329c59bdc5fb34da214bebd48546c9d4dbcc64148bced74b",
  "kind": "def",
  "lexical_name": "CongrResult.defeq",
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
  "slug": "congrresult-defeq--f732d5af4a3c64dd60caee03",
  "source": {
    "blob": "65928f43409ed6953f17ef2b35229ebd8930f001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f732d5af4a3c64dd60caee039facd392633c0f4422c1dd5f70a6441a6f6418d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02e759d0b266a3ac329c59bdc5fb34da214bebd48546c9d4dbcc64148bced74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.defeq (res : CongrResult) : MetaM CongrResult := do
  if res.isRfl then
    return res
  else
    unless ← isDefEq res.lhs res.rhs do
      throwError "Cannot generate congruence because we need{indentD res.lhs}\n\
        to be definitionally equal to{indentD res.rhs}"
    -- Propagate types into any proofs that we're dropping:
    discard <| res.eq
    return {res with pf? := none}

/-- Tries to make a congruence between `lhs` and `rhs` automatically.
1. If they are defeq, returns a trivial congruence.
2. Tries using `Subsingleton.elim`.
3. Tries `proof_irrel_heq` as another effort to avoid doing congruence on proofs.
3. Otherwise throws an error.

Note: `mkAppM` uses `withNewMCtxDepth`, which prevents typeclass inference
from accidentally specializing `Sort _` to `Prop`, which could otherwise happen
because there is a `Subsingleton Prop` instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65928f43409ed6953f17ef2b35229ebd8930f001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
