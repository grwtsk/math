# linearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bfae07c421edf177b1404da5f1309445ceffe42dd418857dc2dada7792afa2b",
  "kind": "def",
  "lexical_name": "linearEquiv",
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
  "slug": "linearequiv--fcecd6342e6e43708b5a9746",
  "source": {
    "blob": "c488c676fde63d13c1c7c450c2a80f35bca1b2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variantf02dc6b863426644abc95dc85f7a44b480a527acd04b5f3072d9646adb471586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcecd6342e6e43708b5a97462b73b7cc9e57203999dd060d66a4dc7202c74c53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GradedModule/Variantf02dc6b863426644abc95dc85f7a44b480a527acd04b5f3072d9646adb471586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bfae07c421edf177b1404da5f1309445ceffe42dd418857dc2dada7792afa2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearEquiv [DirectSum.Decomposition 𝓜] :
    @LinearEquiv A A _ _ (RingHom.id A) (RingHom.id A) _ _ M (⨁ i, 𝓜 i) _
    _ _ (by letI := isModule 𝓐 𝓜; infer_instance) := by
  letI h := isModule 𝓐 𝓜
  refine ⟨⟨(DirectSum.decomposeAddEquiv 𝓜).toAddHom, ?_⟩,
    (DirectSum.decomposeAddEquiv 𝓜).symm.toFun, (DirectSum.decomposeAddEquiv 𝓜).left_inv,
    (DirectSum.decomposeAddEquiv 𝓜).right_inv⟩
  intro x y
  classical
  rw [AddHom.toFun_eq_coe, ← DirectSum.sum_support_decompose 𝓐 x, map_sum, Finset.sum_smul,
    AddEquiv.coe_toAddHom, map_sum, Finset.sum_smul]
  refine Finset.sum_congr rfl (fun i _hi => ?_)
  rw [RingHom.id_apply, ← DirectSum.sum_support_decompose 𝓜 y, map_sum, Finset.smul_sum, map_sum,
    Finset.smul_sum]
  refine Finset.sum_congr rfl (fun j _hj => ?_)
  rw [show (decompose 𝓐 x i : A) • (decomposeAddEquiv 𝓜 ↑(decompose 𝓜 y j) : (⨁ i, 𝓜 i)) =
    DirectSum.Gmodule.smulAddMonoidHom _ _ (decompose 𝓐 ↑(decompose 𝓐 x i))
    (decomposeAddEquiv 𝓜 ↑(decompose 𝓜 y j)) from DirectSum.Gmodule.smul_def _ _ _ _]
  simp only [decomposeAddEquiv_apply, decompose_coe, Gmodule.smulAddMonoidHom_apply_of_of]
  convert! DirectSum.decompose_coe 𝓜 _
  rfl

end GradedModule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GradedModule/Variantf02dc6b863426644abc95dc85f7a44b480a527acd04b5f3072d9646adb471586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GradedModule/Variantf02dc6b863426644abc95dc85f7a44b480a527acd04b5f3072d9646adb471586.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c488c676fde63d13c1c7c450c2a80f35bca1b2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
