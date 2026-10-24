# ofUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9fb0488fa442045682d866da7da80177c135e24b7af3ca81efbe0e45f195fc5",
  "kind": "def",
  "lexical_name": "ofUnique",
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
  "slug": "ofunique--27dc87cca9b79d069dc5bc22",
  "source": {
    "blob": "4c3f4c33fac4ea9598a9ce3532ab7d57dc12b1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1030,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2e4f1456082fabee09b908241ce4cff8f5f64e5b46aea840eebb7d98742d97ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27dc87cca9b79d069dc5bc22fe0ebd140ac41193b2bb2bdb8d2b733c097b6e77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2e4f1456082fabee09b908241ce4cff8f5f64e5b46aea840eebb7d98742d97ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9fb0488fa442045682d866da7da80177c135e24b7af3ca81efbe0e45f195fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofUnique
    (α β : Type*) [Unique α] [Unique β] [Preorder α] [Preorder β] :
    α ≃o β where
  toEquiv := Equiv.ofUnique α β
  map_rel_iff' := by simp

end OrderIso

namespace Equiv

variable [Preorder α] [Preorder β]

/-- If `e` is an equivalence with monotone forward and inverse maps, then `e` is an
order isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2e4f1456082fabee09b908241ce4cff8f5f64e5b46aea840eebb7d98742d97ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2e4f1456082fabee09b908241ce4cff8f5f64e5b46aea840eebb7d98742d97ed.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3f4c33fac4ea9598a9ce3532ab7d57dc12b1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
