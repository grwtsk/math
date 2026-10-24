# mkInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a766fac400b21bca88b1fa00fde1163e5a3dd53562d726e91f8c51308930f262",
  "kind": "def",
  "lexical_name": "mkInductive",
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
  "slug": "mkinductive--f1bafbd45cd1ae54d909c567",
  "source": {
    "blob": "a16b2fd6bfc2cce1179d2573a4bd7528c73641f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 520,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variantf62d8bb46568b9fb44cc49ed6b99a0fdbce71dfbf4a1185d2ded1ed7414f5168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1bafbd45cd1ae54d909c567fde6e2e2dd1bd7099bd8d9fdd51bd0979cf62947",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variantf62d8bb46568b9fb44cc49ed6b99a0fdbce71dfbf4a1185d2ded1ed7414f5168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a766fac400b21bca88b1fa00fde1163e5a3dd53562d726e91f8c51308930f262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInductive : Homotopy e 0 where
  hom i j :=
    if h : i + 1 = j then
      (mkInductiveAux₂ e zero comm_zero one comm_one succ i).2.1 ≫ (Q.xPrevIso h).hom
    else 0
  zero i j w := by rw [dif_neg]; exact w
  comm i := by
    dsimp
    simp only [add_zero]
    refine (mkInductiveAux₂ e zero comm_zero one comm_one succ i).2.2.trans ?_
    congr
    · cases i
      · dsimp [fromNext, mkInductiveAux₂]
      · dsimp [fromNext]
        simp only [ChainComplex.next_nat_succ, dite_true]
        rw [mkInductiveAux₃ e zero comm_zero one comm_one succ]
        dsimp [xNextIso]
        rw [id_comp]
    · dsimp [toPrev]
      rw [dif_pos (by simp only [ChainComplex.prev])]
      simp [xPrevIso, comp_id]

end

end MkInductive

/-!
`Homotopy.mkCoinductive` allows us to build a homotopy of cochain complexes inductively,
so that as we construct each component, we have available the previous two components,
and the fact that they satisfy the homotopy condition.
-/

section MkCoinductive

variable {P Q : CochainComplex V ℕ}

-- This is not a simp lemma; the LHS already simplifies.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variantf62d8bb46568b9fb44cc49ed6b99a0fdbce71dfbf4a1185d2ded1ed7414f5168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variantf62d8bb46568b9fb44cc49ed6b99a0fdbce71dfbf4a1185d2ded1ed7414f5168.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a16b2fd6bfc2cce1179d2573a4bd7528c73641f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
