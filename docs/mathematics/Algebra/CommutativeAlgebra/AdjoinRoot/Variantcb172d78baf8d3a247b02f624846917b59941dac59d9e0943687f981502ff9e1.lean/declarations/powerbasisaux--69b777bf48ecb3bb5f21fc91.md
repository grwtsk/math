# powerBasisAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f2d78486bdbb0f929406482200e93e798c1cc6ab98472653412d3d6a88c637",
  "kind": "def",
  "lexical_name": "powerBasisAux",
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
  "slug": "powerbasisaux--69b777bf48ecb3bb5f21fc91",
  "source": {
    "blob": "30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 566,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69b777bf48ecb3bb5f21fc919c019037ae1cccc11e388d3176abfe46728522f2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f2d78486bdbb0f929406482200e93e798c1cc6ab98472653412d3d6a88c637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powerBasisAux (hf : f ≠ 0) : Basis (Fin f.natDegree) K (AdjoinRoot f) := by
  let f' := f * C f.leadingCoeff⁻¹
  have deg_f' : f'.natDegree = f.natDegree := by
    rw [natDegree_mul hf, natDegree_C, add_zero]
    · rwa [Ne.def, C_eq_zero, inv_eq_zero, leadingCoeff_eq_zero]
  have minpoly_eq : minpoly K (root f) = f' := minpoly_root hf
  apply @Basis.mk _ _ _ fun i : Fin f.natDegree => root f ^ i.val
  · rw [← deg_f', ← minpoly_eq]
    exact linearIndependent_pow (root f)
  · rintro y -
    rw [← deg_f', ← minpoly_eq]
    apply (isIntegral_root hf).mem_span_pow
    obtain ⟨g⟩ := y
    use g
    rw [aeval_eq]
    rfl
#align adjoin_root.power_basis_aux AdjoinRoot.powerBasisAux

/-- The power basis `1, root f, ..., root f ^ (d - 1)` for `AdjoinRoot f`,
where `f` is an irreducible polynomial over a field of degree `d`. -/
@[simps!]  -- porting note: was `[simps]`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
