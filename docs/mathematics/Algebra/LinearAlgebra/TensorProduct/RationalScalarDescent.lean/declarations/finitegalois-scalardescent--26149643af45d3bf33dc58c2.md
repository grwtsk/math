# finiteGalois_scalarDescent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe1e4c17-f187-4f86-941e-84ae9f348420",
  "kind": "theorem",
  "lexical_name": "finiteGalois_scalarDescent",
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
  "slug": "finitegalois-scalardescent--26149643af45d3bf33dc58c2",
  "source": {
    "blob": "fc0034b093febfa5715b15bf84b11d6e1ef1edb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 109,
    "path": "GRWTSK/LinearAlgebra/TensorProduct/RationalScalarDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26149643af45d3bf33dc58c24d3261f73d827371b5af9fe2c2e2a973e3a429e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe1e4c17-f187-4f86-941e-84ae9f348420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteGalois_scalarDescent
    (P : Submodule K (K ⊗[k] V))
    (t : K ⊗[k] V)
    (ht : ∀ σ : K ≃ₐ[k] K, scalarConjugate σ t ∈ P) :
    t ∈ (rationalPart P).baseChange K := by
  classical
  let b := Module.Free.chooseBasis k K
  have hcoeff (i : Module.Free.ChooseBasisIndex k K) :
      TensorProduct.equivFinsuppOfBasisLeft b t i ∈ rationalPart P := by
    rw [mem_rationalPart, ← tensorTrace_traceDual_smul, one_tmul_tensorTrace]
    apply Submodule.sum_mem
    intro σ _
    rw [scalarConjugate_smul]
    exact P.smul_mem _ (ht σ)
  rw [← (TensorProduct.equivFinsuppOfBasisLeft b).symm_apply_apply t,
    TensorProduct.equivFinsuppOfBasisLeft_symm_apply]
  exact Submodule.sum_mem _ fun i _ =>
    Submodule.tmul_mem_baseChange_of_mem _ (hcoeff i)

end

end GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/TensorProduct/RationalScalarDescent.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc0034b093febfa5715b15bf84b11d6e1ef1edb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
