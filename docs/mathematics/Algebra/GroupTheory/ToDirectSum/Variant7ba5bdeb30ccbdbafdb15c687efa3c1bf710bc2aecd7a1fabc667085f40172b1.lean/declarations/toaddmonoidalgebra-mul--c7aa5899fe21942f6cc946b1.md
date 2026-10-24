# toAddMonoidAlgebra_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb7cdb2c-415e-9f4a-df4b-22e1ddda4b35",
  "kind": "theorem",
  "lexical_name": "toAddMonoidAlgebra_mul",
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
  "slug": "toaddmonoidalgebra-mul--c7aa5899fe21942f6cc946b1",
  "source": {
    "blob": "b9189c17211b682e67fbb418d274a3f25587949d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 183,
    "path": "GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7aa5899fe21942f6cc946b18766bf41722d613eceb3aa7b1907e66d4ace5ec7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb7cdb2c-415e-9f4a-df4b-22e1ddda4b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAddMonoidAlgebra_mul [AddMonoid ι] [Semiring M]
  [∀ m : M, Decidable (m ≠ 0)] (f g : ⨁ _ : ι, M) :
      (f * g).toAddMonoidAlgebra = toAddMonoidAlgebra f * toAddMonoidAlgebra g := by
  apply_fun AddMonoidAlgebra.toDirectSum
  · simp
  · apply Function.LeftInverse.injective
    apply AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra
#align direct_sum.to_add_monoid_algebra_mul DirectSum.toAddMonoidAlgebra_mul

end DirectSum

end Lemmas

/-! ### Bundled `Equiv`s -/


section Equivs

/-- `AddMonoidAlgebra.toDirectSum` and `DirectSum.toAddMonoidAlgebra` together form an
equiv. -/
@[simps (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9189c17211b682e67fbb418d274a3f25587949d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
