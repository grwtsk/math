# mem.decidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0742200cc406f3e57c8e8b5890d669c8aa666b8c27de06fe0fcb56952c16647",
  "kind": "instance",
  "lexical_name": "mem.decidable",
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
  "slug": "mem-decidable--d963ab6448a1535aa8dfdb03",
  "source": {
    "blob": "c6e3f915c87687bca4ee51bc70ce0d44f5f09270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 834,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d963ab6448a1535aa8dfdb03e19f14493f21facbeb91c48f205e81cda3ad57bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0742200cc406f3e57c8e8b5890d669c8aa666b8c27de06fe0fcb56952c16647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mem.decidable (x : α) (t : Ordnode α) : Decidable (x ∈ t) :=
  Bool.decEq _ _

/-- O(log n). Insert an element into the set, preserving balance and the BST property.
If an equivalent element is already in the set, the function `f` is used to generate
the element to insert (being passed the current value in the set).

    insertWith f 0 {1, 2, 3} = {0, 1, 2, 3}
    insertWith f 1 {1, 2, 3} = {f 1, 2, 3}

Using a preorder on `ℕ × ℕ` that only compares the first coordinate:

    insertWith f (1, 1) {(0, 1), (1, 2)} = {(0, 1), f (1, 2)}
    insertWith f (3, 1) {(0, 1), (1, 2)} = {(0, 1), (1, 2), (3, 1)} -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e3f915c87687bca4ee51bc70ce0d44f5f09270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
