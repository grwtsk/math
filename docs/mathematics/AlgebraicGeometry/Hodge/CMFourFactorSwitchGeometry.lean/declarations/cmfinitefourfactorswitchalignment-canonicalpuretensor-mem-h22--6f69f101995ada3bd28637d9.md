# CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_H22

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f49ce257-5e0f-2084-4b01-aff2a3b4461b",
  "kind": "theorem",
  "lexical_name": "CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_H22",
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
  "slug": "cmfinitefourfactorswitchalignment-canonicalpuretensor-mem-h22--6f69f101995ada3bd28637d9",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1271,
    "line": 1218,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f69f101995ada3bd28637d979393742c834fcad563f52b84df1dd364b803f98",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f49ce257-5e0f-2084-4b01-aff2a3b4461b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_H22
    {E : CMGaloisIntermediateField}
    {factors : CMFiniteFourEmbeddingLineVectors E}
    {v₁ v₂ v₃ v₄ : CMNumberFieldIndex.OddSignRow E.carrier}
    {D : CMFiniteFourFactorActualTyping E factors v₁ v₂ v₃ v₄}
    (A : CMFiniteFourFactorSwitchAlignment D)
    (R : FourfoldActualHodgeTensorRule D.toActualTyping) :
    fourfoldActualPureTensor D.toActualTyping
      (D.first.realization.canonicalTensorActualH1Comparison.toActual
        D.first.vector)
      (D.second.realization.canonicalTensorActualH1Comparison.toActual
        D.second.vector)
      (D.third.realization.canonicalTensorActualH1Comparison.toActual
        D.third.vector)
      (D.fourth.realization.canonicalTensorActualH1Comparison.toActual
        D.fourth.vector) ∈ R.H22 :=
  R.canonicalPureTensor_mem_H22 A.toActualAlignment

/-!
### Fixed-field comparison obstruction

The finite assembly below stores `assemble` merely as a function from
four finite embedding-line tensor inputs to a coefficient tensor. Its
`scalar_transport_eq` concerns only one chosen tuple and its conjugates.
Neither condition establishes additivity or rational multilinearity in
the four input slots. More importantly, the actual fourfold tensor consists
of complex H1 realizations, whereas the assembly takes finite field-level
tensor vectors: the file contains no cohomological comparison commuting with
these different carriers.

Consequently `CMFiniteFourfoldAssembly` cannot by itself supply a canonical
complex-linear map `FourfoldActualTensor →ₗ[ℂ] (ℂ ⊗[ℚ] V)`.
A genuine constructor must receive (or establish) compatible rational
multilinear assembly maps, four actual-H1 comparison maps, and a commuting
pure-tensor equation. None is inferred from scalar transport alone.

In particular, a pointwise image-membership witness is a conditional
criterion, not an independent geometric construction; proving its two
fields directly from the desired generator membership would be circular.
-/

/-- The concrete rational target for the finite canonical fourfold formula.
Unlike an arbitrary target V, its four vector slots are explicit. -/

/-- The first constructed coefficient supplier: multiplication on a
rational tensor square of the finite CM field. Unlike the later fourfold
cohomological comparison, this map uses only field multiplication and
the tensor-product universal property. -/

/-- Finite-level fourfold assembly over a fixed finite Galois CM field.

The output keeps one coefficient factor in E and moves the four vector entries
into an arbitrary rational target V.  Only after this finite-level assembly is
formed should coefficients be extended to AlgebraicNumbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
