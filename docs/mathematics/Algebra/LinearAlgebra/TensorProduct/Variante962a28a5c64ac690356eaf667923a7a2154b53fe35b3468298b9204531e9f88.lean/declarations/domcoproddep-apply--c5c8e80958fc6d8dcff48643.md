# domCoprodDep'_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4207049-3d0e-72f5-1ee9-b431136b1d83",
  "kind": "theorem",
  "lexical_name": "domCoprodDep'_apply",
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
  "slug": "domcoproddep-apply--c5c8e80958fc6d8dcff48643",
  "source": {
    "blob": "d6df8861b4de7ddaf14ecfe4f41beda487dd4895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c8e80958fc6d8dcff4864327b7c6c78447418ec13e573b8309b2625748e9f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4207049-3d0e-72f5-1ee9-b431136b1d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domCoprodDep'_apply (a : MultilinearMap R (fun i₁ ↦ N (.inl i₁)) N₁)
    (b : MultilinearMap R (fun i₂ ↦ N (.inr i₂)) N₂) :
    domCoprodDep' (a ⊗ₜ b) = domCoprodDep a b := by
  rfl

end

variable {N : Type*} [AddCommMonoid N] [Module R N]

/-- Given two multilinear maps `(ι₁ → N) → N₁` and `(ι₂ → N) → N₂`, this produces the map
`(ι₁ ⊕ ι₂ → N) → N₁ ⊗ N₂` by taking the coproduct of the domain and the tensor product
of the codomain.

This can be thought of as combining `Equiv.sumArrowEquivProdArrow.symm` with
`TensorProduct.map`, noting that the two operations can't be separated as the intermediate result
is not a `MultilinearMap`.

While this can be generalized to work for dependent `Π i : ι₁, N'₁ i` instead of `ι₁ → N`, doing so
introduces `Sum.elim N'₁ N'₂` types in the result which are difficult to work with and not defeq
to the simple case defined here. See [this zulip thread](
https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there.20code.20for.20X.3F/topic/Instances.20on.20.60sum.2Eelim.20A.20B.20i.60/near/218484619).
-/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6df8861b4de7ddaf14ecfe4f41beda487dd4895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
