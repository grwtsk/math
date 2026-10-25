# findGtAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:278ffabf39df601f77d16fe6296e40dffcd15c05ba5e97096a0077a8cab88575",
  "kind": "def",
  "lexical_name": "findGtAux",
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
  "slug": "findgtaux--3798abba356ca2966d4e057d",
  "source": {
    "blob": "5a93d0650c6d520fabbdd3a6c50d91633a80ab6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1214,
    "line": 1204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variante568e3703acf8800648a9b668b1fb90fb69c419207b630f9bcd6dde41646a658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3798abba356ca2966d4e057dc6f700965534495cf8307c170cd1f24725f0fc29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variante568e3703acf8800648a9b668b1fb90fb69c419207b630f9bcd6dde41646a658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:278ffabf39df601f77d16fe6296e40dffcd15c05ba5e97096a0077a8cab88575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1204–1214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def findGtAux (x : α) : Ordnode α → α → α
  | nil, best => best
  | node _ l y r, best => if y ≤ x then findGtAux x r best else findGtAux x l y

/-- O(log n). Get the smallest element in the tree that is `> x`.

```
findGt 2 {1, 2, 4} = some 4
findGt 3 {1, 2, 4} = some 4
findGt 4 {1, 2, 4} = none
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variante568e3703acf8800648a9b668b1fb90fb69c419207b630f9bcd6dde41646a658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variante568e3703acf8800648a9b668b1fb90fb69c419207b630f9bcd6dde41646a658.lean#L1204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a93d0650c6d520fabbdd3a6c50d91633a80ab6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
