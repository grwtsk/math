# sliceSizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c7bbc3254b0700d48c4e6eb16c1d32e32df6f350fbe5cb61bb6960a280f4de8",
  "kind": "def",
  "lexical_name": "sliceSizes",
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
  "slug": "slicesizes--475af9e91b6517ff4e1afde0",
  "source": {
    "blob": "68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:475af9e91b6517ff4e1afde0a97e33f0cfe99568cc6f5290b0dbab1c691cc841",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c7bbc3254b0700d48c4e6eb16c1d32e32df6f350fbe5cb61bb6960a280f4de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sliceSizes : ℕ → MLList Id ℕ+
  | n =>
    if h : 0 < n then
      have : n / 2 < n := Nat.div_lt_self h (by decide : 1 < 2)
      .cons ⟨_, h⟩ (sliceSizes <| n / 2)
    else .nil

/-- Shrink a permutation of a list, slicing a segment in the middle.

The sizes of the slice being removed start at `n` (with `n` the length
of the list) and then `n / 2`, then `n / 4`, etc. down to 1. The slices
will be taken at index `0`, `n / k`, `2n / k`, `3n / k`, etc.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
