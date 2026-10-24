# exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b3ec463-27a8-083b-aa4a-3ed00964ed25",
  "kind": "theorem",
  "lexical_name": "exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₁",
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
  "slug": "exists-hasstandardetalesurjectionon-of-exists-adjoin-singleton-eq-top-au--7c7bcd96dc571ac27101f43e",
  "source": {
    "blob": "6d5cd03d1c32346025753bf9e8467e67fe5af07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c7bcd96dc571ac27101f43ee5e143d30b39b2028d1c0d34f03911bc905129d8",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3ec463-27a8-083b-aa4a-3ed00964ed25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₁
    (P : Ideal R) [P.IsPrime] (x : S) (hx : R[x] = ⊤) :
    (RingHom.ker (aeval (R := R) x).toRingHom).map (mapRingHom (algebraMap R P.ResidueField)) =
      RingHom.ker (aeval (1 ⊗ₜ x : P.Fiber S)).toRingHom := by
  have hx' : Function.Surjective (aeval (R := R) x) :=
    (AlgHom.range_eq_top _).mp ((adjoin_singleton_eq_range_aeval R x).symm.trans hx)
  let I := RingHom.ker (aeval (R := R) x).toRingHom
  let e : P.Fiber S ≃ₐ[P.ResidueField]
      P.ResidueField[X] ⧸ I.map (mapRingHom (algebraMap _ P.ResidueField)) :=
    Polynomial.fiberEquivQuotient (aeval (R := R) x) hx' _
  rw [← RingHom.ker_comp_of_injective _ (f := e.toRingHom) e.injective]
  convert! Ideal.mk_ker.symm
  ext a
  · dsimp [-TensorProduct.algebraMap_apply]
    rw [aeval_C, AlgEquiv.commutes]
    simp [← Ideal.Quotient.mk_algebraMap, I]
  · simpa [e] using! Polynomial.fiberEquivQuotient_tmul _ hx' P 1 X

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5cd03d1c32346025753bf9e8467e67fe5af07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
