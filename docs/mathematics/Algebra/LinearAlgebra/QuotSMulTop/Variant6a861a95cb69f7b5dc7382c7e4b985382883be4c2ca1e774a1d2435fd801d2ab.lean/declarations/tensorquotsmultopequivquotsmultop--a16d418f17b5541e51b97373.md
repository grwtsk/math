# tensorQuotSMulTopEquivQuotSMulTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71282f508a313781f809654714aece92bca1df4eeb246515e9953115431b083f",
  "kind": "def",
  "lexical_name": "tensorQuotSMulTopEquivQuotSMulTop",
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
  "slug": "tensorquotsmultopequivquotsmultop--a16d418f17b5541e51b97373",
  "source": {
    "blob": "40da1dc66eda3397c917ea7eceb2e50555be0506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a16d418f17b5541e51b97373d51e0cc63cba591231b1271f6413f1477600603e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71282f508a313781f809654714aece92bca1df4eeb246515e9953115431b083f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorQuotSMulTopEquivQuotSMulTop :
    M ⊗[R] QuotSMulTop r M' ≃ₗ[R] QuotSMulTop r (M ⊗[R] M') :=
  (equivTensorQuot r M').lTensor M ≪≫ₗ
    (TensorProduct.assoc R M M' (R ⧸ Ideal.span {r})).symm ≪≫ₗ
      (equivTensorQuot r (M ⊗[R] M')).symm

/-- Tensoring on the right and applying `QuotSMulTop · r` commute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40da1dc66eda3397c917ea7eceb2e50555be0506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
