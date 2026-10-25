# reorderUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d9bcdb704221ae211a6e39b3003eccf231226441f1b12aa542ffdb717a1fb1",
  "kind": "def",
  "lexical_name": "reorderUsing",
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
  "slug": "reorderusing--8a89b35e6e43e0ab9c0a437e",
  "source": {
    "blob": "c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a89b35e6e43e0ab9c0a437e84ac415b88215f889246a3007b747a0fe0b6e43b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d9bcdb704221ae211a6e39b3003eccf231226441f1b12aa542ffdb717a1fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reorderUsing (toReorder : List α) (instructions : List (α × Bool)) : List α :=
  let uInstructions :=
    let (as, as?) := instructions.unzip
    (uniquify as).zip as?
  let uToReorder := (uniquify toReorder).toArray
  let reorder := uToReorder.qsort fun x y =>
    match uInstructions.find? (Prod.fst · == x), uInstructions.find? (Prod.fst · == y) with
      | none, none =>
        (uToReorder.idxOf? x).get! ≤ (uToReorder.idxOf? y).get!
      | _, _ => weight uInstructions x ≤ weight uInstructions y
  (reorder.map Prod.fst).toList

end reorder

/-- `prepareOp sum` takes an `Expr`ession as input.  It assumes that `sum` is a well-formed
term representing a repeated application of a binary operation and that the summands are the
last two arguments passed to the operation.
It returns the expression consisting of the operation with all its arguments already applied,
except for the last two.
This is similar to `Lean.Meta.mkAdd, Lean.Meta.mkMul`, except that the resulting operation is
primed to work with operands of the same type as the ones already appearing in `sum`.

This is useful to rearrange the operands.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
