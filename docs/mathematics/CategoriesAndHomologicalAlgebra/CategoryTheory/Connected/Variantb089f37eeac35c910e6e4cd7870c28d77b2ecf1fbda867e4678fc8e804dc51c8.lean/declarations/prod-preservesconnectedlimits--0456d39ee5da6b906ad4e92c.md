# prod_preservesConnectedLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "416c082730a4c6a310a59f350b62566efe63d01f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e34c732b-562b-8d88-1632-98ed111ac5aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be6d541c-f2fd-8d49-bfb9-ce975f08aad1",
  "kind": "lemma",
  "lexical_name": "prod_preservesConnectedLimits",
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
  "slug": "prod-preservesconnectedlimits--0456d39ee5da6b906ad4e92c",
  "source": {
    "blob": "416c082730a4c6a310a59f350b62566efe63d01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0456d39ee5da6b906ad4e92c671b5105cd650e82735ff5f9ddae4694b6599c75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6d541c-f2fd-8d49-bfb9-ce975f08aad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_preservesConnectedLimits [IsConnected J] (X : C) :
    PreservesLimitsOfShape J (prod.functor.obj X) where
  preservesLimit {K} :=
    { preserves := fun {c} l => ⟨{
          lift := fun s =>
            prod.lift (s.π.app (Classical.arbitrary _) ≫ Limits.prod.fst) (l.lift (forgetCone s))
          fac := fun s j => by
            apply Limits.prod.hom_ext
            · erw [assoc, limMap_π, comp_id, limit.lift_π]
              exact (nat_trans_from_is_connected (s.π ≫ γ₁ X) j (Classical.arbitrary _)).symm
            · simp [← l.fac (forgetCone s) j]
          uniq := fun s m L => by
            apply Limits.prod.hom_ext
            · erw [limit.lift_π, ← L (Classical.arbitrary J), assoc, limMap_π, comp_id]
              rfl
            · rw [limit.lift_π]
              apply l.uniq (forgetCone s)
              intro j
              simp [← L j] }⟩ }

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416c082730a4c6a310a59f350b62566efe63d01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
