# RightInvOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882fb987a9c6c2b4e1087da73169f09cec1f9936b4a9bc02a992fbde3b2d7fe3",
  "kind": "def",
  "lexical_name": "RightInvOn",
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
  "slug": "rightinvon--8e5d98b47f3c3ae1f52b38a5",
  "source": {
    "blob": "bd595e2eb55020d04dfc645d1df289d63ec04221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1113,
    "line": 1110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5d98b47f3c3ae1f52b38a59c4c61f818abb03912b9cac2b0f5efa834ebf90d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882fb987a9c6c2b4e1087da73169f09cec1f9936b4a9bc02a992fbde3b2d7fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1110–1113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RightInvOn (f' : β → α) (f : α → β) (t : Set β) : Prop :=
  LeftInvOn f f' t
#align set.right_inv_on Set.RightInvOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean#L1110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd595e2eb55020d04dfc645d1df289d63ec04221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
