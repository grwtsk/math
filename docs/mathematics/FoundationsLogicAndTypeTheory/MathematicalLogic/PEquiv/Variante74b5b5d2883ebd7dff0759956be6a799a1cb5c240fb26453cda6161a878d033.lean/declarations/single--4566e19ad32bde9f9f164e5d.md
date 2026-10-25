# single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a2535dd3fa185d8e12a1398ecd640dbb8d065dc5f82da812bff4c9df9dd03ca",
  "kind": "def",
  "lexical_name": "single",
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
  "slug": "single--4566e19ad32bde9f9f164e5d",
  "source": {
    "blob": "0ae518f7f0da1688ca50c123ecec8ae5b6da202d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variante74b5b5d2883ebd7dff0759956be6a799a1cb5c240fb26453cda6161a878d033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4566e19ad32bde9f9f164e5deb0ff044c49ca575acfccca8065291ff8346968e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variante74b5b5d2883ebd7dff0759956be6a799a1cb5c240fb26453cda6161a878d033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a2535dd3fa185d8e12a1398ecd640dbb8d065dc5f82da812bff4c9df9dd03ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def single (a : α) (b : β) :
    α ≃. β where
  toFun x := if x = a then some b else none
  invFun x := if x = b then some a else none
  inv x y := by
    dsimp only
    split_ifs with h1 h2
    · simp [*]
    · simp only [mem_def, some.injEq, iff_false] at *
      exact Ne.symm h2
    · simp only [mem_def, some.injEq, false_iff] at *
      exact Ne.symm h1
    · simp
#align pequiv.single PEquiv.single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variante74b5b5d2883ebd7dff0759956be6a799a1cb5c240fb26453cda6161a878d033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variante74b5b5d2883ebd7dff0759956be6a799a1cb5c240fb26453cda6161a878d033.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae518f7f0da1688ca50c123ecec8ae5b6da202d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
