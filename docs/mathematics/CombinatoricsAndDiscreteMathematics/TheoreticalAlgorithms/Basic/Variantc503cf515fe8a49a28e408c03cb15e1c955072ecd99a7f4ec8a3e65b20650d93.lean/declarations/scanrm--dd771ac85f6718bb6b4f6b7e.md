# scanrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3c33f4c199136f7d910501e22606030311072b1d0104833299017d43eb2f563",
  "kind": "def",
  "lexical_name": "scanrM",
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
  "slug": "scanrm--dd771ac85f6718bb6b4f6b7e",
  "source": {
    "blob": "f7899d67cfdd07e1b2421807d89098aad22d70a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd771ac85f6718bb6b4f6b7e8346f50fa7b2dbb9ee5e6baeb118e1c5527809f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3c33f4c199136f7d910501e22606030311072b1d0104833299017d43eb2f563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scanrM [Monad m] (f : α → β → m β) (init : β) (as : Vector α n) :
    m (Vector β (n + 1)) :=
  loop init n (Nat.le_refl n) (#v[].cast (by omega))
where
  /-- Auxiliary tail-recursive function for scanrM -/
  loop (cur : β) (i : Nat) (hi : i ≤ n) (acc : Vector β (n - i)) :
      m (Vector β (n + 1)) := do
    if h_gt : 0 < i then
      let next ← f as[i - 1] cur
      loop next (i - 1) (by omega) (acc.push cur |>.cast (by omega))
    else
      return (acc.push cur).reverse.cast (by omega)

/--
Fold a function `f` over the list from the left, returning the vector of partial results.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7899d67cfdd07e1b2421807d89098aad22d70a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
