# ofList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17a2ce26c66b19d9bff171b42d1fb4a264666e62b4729d01305e08a938e8de3e",
  "kind": "def",
  "lexical_name": "ofList",
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
  "slug": "oflist--09bedcbc6522de1a2133c537",
  "source": {
    "blob": "10cac8d26883aa289b87a82b59a581d9b42ed556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1341,
    "line": 1333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09bedcbc6522de1a2133c537823f98d2c4d32bd23878ffcbefea687965bf5735",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17a2ce26c66b19d9bff171b42d1fb4a264666e62b4729d01305e08a938e8de3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1333–1341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofList (l : List α) : Ordnode α :=
  l.foldr insert nil
#align ordnode.of_list Ordnode.ofList

/-- O(n * log n). Adaptively chooses between the linear and log-linear algorithm depending
  on whether the input list is already sorted.

    ofList' [1, 2, 3] = {1, 2, 3}
    ofList' [2, 1, 1, 3] = {1, 2, 3} -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean#L1333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cac8d26883aa289b87a82b59a581d9b42ed556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
