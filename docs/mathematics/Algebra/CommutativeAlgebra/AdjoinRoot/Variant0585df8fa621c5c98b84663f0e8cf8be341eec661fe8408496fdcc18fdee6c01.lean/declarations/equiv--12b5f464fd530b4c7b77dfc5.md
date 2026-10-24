# equiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5af99a5d600614c67c390cc5b9d8b6c71ed1cf237ecfbb297d2b3d6cdcaa0981",
  "kind": "def",
  "lexical_name": "equiv'",
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
  "slug": "equiv--12b5f464fd530b4c7b77dfc5",
  "source": {
    "blob": "98f26668d47bebe55f724e5c3ccb4337778ad23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 606,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b5f464fd530b4c7b77dfc5969affd958dae73d1e8e34de4958aafeedf5800a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5af99a5d600614c67c390cc5b9d8b6c71ed1cf237ecfbb297d2b3d6cdcaa0981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equiv' (h₁ : aeval (root g) (minpoly R pb.gen) = 0) (h₂ : aeval pb.gen g = 0) :
    AdjoinRoot g ≃ₐ[R] S :=
  { AdjoinRoot.liftHom g pb.gen h₂ with
    toFun := AdjoinRoot.liftHom g pb.gen h₂
    invFun := pb.lift (root g) h₁
    -- Porting note: another term-mode proof converted to tactic-mode.
    left_inv := fun x => by
      induction x using AdjoinRoot.induction_on
      rw [liftHom_mk, pb.lift_aeval, aeval_eq]
    right_inv := fun x => by
      nontriviality S
      obtain ⟨f, _hf, rfl⟩ := pb.exists_eq_aeval x
      rw [pb.lift_aeval, aeval_eq, liftHom_mk] }

-- This lemma should have the simp tag but this causes a lint issue.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f26668d47bebe55f724e5c3ccb4337778ad23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
