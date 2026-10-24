# mapSetOfPredMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ced9d5757daef45c4348e92eaded5898288846666118685089549cfd9d3fd399",
  "kind": "def",
  "lexical_name": "mapSetOfPredMaximal",
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
  "slug": "mapsetofpredmaximal--9c63c397a0e5e352fee7b465",
  "source": {
    "blob": "a9f2e89106321cfa2078a898dc5ab1dda529f5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 591,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variantd7761536a05773d07d13731bec59345c1d5b005aab06e8147580779664bee737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c63c397a0e5e352fee7b465a554b7e508a61e6cc7994192f53f5011fbe316a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variantd7761536a05773d07d13731bec59345c1d5b005aab06e8147580779664bee737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ced9d5757daef45c4348e92eaded5898288846666118685089549cfd9d3fd399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapSetOfPredMaximal (f : s ≃o t) : {x | Maximal (· ∈ s) x} ≃o {x | Maximal (· ∈ t) x} where
  toFun x := ⟨f ⟨x, x.2.1⟩, f.map_maximal_mem x.2⟩
  invFun x := ⟨f.symm ⟨x, x.2.1⟩, f.symm.map_maximal_mem x.2⟩
  left_inv x := Subtype.ext (congr_arg Subtype.val <| f.left_inv ⟨x, x.2.1⟩ :)
  right_inv x := Subtype.ext (congr_arg Subtype.val <| f.right_inv ⟨x, x.2.1⟩ :)
  map_rel_iff' := f.map_rel_iff

@[deprecated (since := "2026-07-28")] alias mapSetOfMaximal := mapSetOfPredMaximal

/-- If two sets are antitonically order isomorphic, their minimals/maximals are too. -/
@[to_dual /-- If two sets are antitonically order isomorphic, their maximals/minimals are too. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variantd7761536a05773d07d13731bec59345c1d5b005aab06e8147580779664bee737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variantd7761536a05773d07d13731bec59345c1d5b005aab06e8147580779664bee737.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f2e89106321cfa2078a898dc5ab1dda529f5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
