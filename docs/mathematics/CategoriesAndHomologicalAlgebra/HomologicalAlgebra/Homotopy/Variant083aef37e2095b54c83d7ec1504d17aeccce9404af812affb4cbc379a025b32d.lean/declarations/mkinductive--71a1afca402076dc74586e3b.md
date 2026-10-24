# mkInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29152f5b10b335440baa4cc8db48cd91986718f3164f93a6cc142453c09988fa",
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
  "slug": "mkinductive--71a1afca402076dc74586e3b",
  "source": {
    "blob": "ac54a9a3487e851cbe6387436f56b5a758e2ba8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 554,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant083aef37e2095b54c83d7ec1504d17aeccce9404af812affb4cbc379a025b32d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a1afca402076dc74586e3b323545f518a182306344183ad605399dc2c544e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant083aef37e2095b54c83d7ec1504d17aeccce9404af812affb4cbc379a025b32d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29152f5b10b335440baa4cc8db48cd91986718f3164f93a6cc142453c09988fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInductive : Homotopy e 0 where
  hom i j :=
    if h : i + 1 = j then
      (mkInductiveAux₂ e zero comm_zero one comm_one succ i).2.1 ≫ (Q.xPrevIso h).hom
    else 0
  zero i j w := by dsimp; rw [dif_neg]; exact w
  comm i := by
    dsimp
    simp only [add_zero]
    refine' (mkInductiveAux₂ e zero comm_zero one comm_one succ i).2.2.trans _
    congr
    · cases i
      · dsimp [fromNext, mkInductiveAux₂]
        rw [dif_neg]
        simp only
      · dsimp [fromNext]
        simp only [ChainComplex.next_nat_succ, dite_true]
        rw [mkInductiveAux₃ e zero comm_zero one comm_one succ]
        dsimp [xNextIso]
        rw [Category.id_comp]
    · dsimp [toPrev]
      erw [dif_pos, Category.comp_id]
      simp only [ChainComplex.prev]
#align homotopy.mk_inductive Homotopy.mkInductive

end

end MkInductive

/-!
`Homotopy.mkCoinductive` allows us to build a homotopy of cochain complexes inductively,
so that as we construct each component, we have available the previous two components,
and the fact that they satisfy the homotopy condition.
-/

section MkCoinductive

variable {P Q : CochainComplex V ℕ}

@[simp 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant083aef37e2095b54c83d7ec1504d17aeccce9404af812affb4cbc379a025b32d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant083aef37e2095b54c83d7ec1504d17aeccce9404af812affb4cbc379a025b32d.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac54a9a3487e851cbe6387436f56b5a758e2ba8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
