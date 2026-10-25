# isSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c96c1663fe071414060db0fe5258ad765846fe3f58bd1c3a43f9b04a5909c13",
  "kind": "def",
  "lexical_name": "isSubset",
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
  "slug": "issubset--7c2d5a346b0c7100ad37c1d9",
  "source": {
    "blob": "22dd577583faffd5d22288e97e76369f34286493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1301,
    "line": 1293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c2d5a346b0c7100ad37c1d9dfd3963c0e87dc2cf8b9905f3f7c8916168b7c03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c96c1663fe071414060db0fe5258ad765846fe3f58bd1c3a43f9b04a5909c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1293–1301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def isSubset (t₁ t₂ : Ordnode α) : Bool :=
  decide (size t₁ ≤ size t₂) && isSubsetAux t₁ t₂

/-- O(m + n). Is every element of `t₁` not equivalent to any element of `t₂`?

```
disjoint {1, 3} {2, 4} = tt
disjoint {1, 2} {2, 4} = ff
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean#L1293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22dd577583faffd5d22288e97e76369f34286493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
