# exists_covby_infinite_Iic_of_infinite_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18d7b1af-acd7-3ca0-9e3b-0ce137a7e7eb",
  "kind": "theorem",
  "lexical_name": "exists_covby_infinite_Iic_of_infinite_Iic",
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
  "slug": "exists-covby-infinite-iic-of-infinite-iic--b51b8eb1d4faa872f4dece11",
  "source": {
    "blob": "fa016d050d7ee021a7a7d4d1d676e887c1570947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantbd3d8857c419657bc166f6b7492c899989d88ebef584945bc88d7a7dbeeae299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51b8eb1d4faa872f4dece118f6bfc1e282007b406c3fe4b9d9a5f3687c5aed7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantbd3d8857c419657bc166f6b7492c899989d88ebef584945bc88d7a7dbeeae299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18d7b1af-acd7-3ca0-9e3b-0ce137a7e7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_covby_infinite_Iic_of_infinite_Iic [IsStronglyCoatomic α]
    (ha : (Set.Iic a).Infinite) (hfin : {x | x ⋖ a}.Finite) :
    ∃ b, b ⋖ a ∧ (Set.Iic b).Infinite := by
  simp_rw [← toDual_covBy_toDual_iff (α := α)] at hfin ⊢
  exact exists_covby_infinite_Ici_of_infinite_Ici (α := αᵒᵈ) ha hfin

end IsStronglyAtomic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantbd3d8857c419657bc166f6b7492c899989d88ebef584945bc88d7a7dbeeae299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantbd3d8857c419657bc166f6b7492c899989d88ebef584945bc88d7a7dbeeae299.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa016d050d7ee021a7a7d4d1d676e887c1570947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
