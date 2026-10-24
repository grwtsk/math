# withValRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7830550a056556d54adc3c811b1956a40eb3bcee82959819f81a90c82d33c80f",
  "kind": "def",
  "lexical_name": "withValRingEquiv",
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
  "slug": "withvalringequiv--eea26900235e10ce0c490327",
  "source": {
    "blob": "0cb2d9fa749a094d34941116e6a6c11fedf589ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea26900235e10ce0c49032779256371a503ce8f110f0cf5e37c9e58e45647c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7830550a056556d54adc3c811b1956a40eb3bcee82959819f81a90c82d33c80f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withValRingEquiv :
    (Rat.padicValuation p).Completion ≃+* ℚ_[p] where
  toFun := (extensionHom ((Rat.castHom ℚ_[p]).comp (WithVal.equiv (Rat.padicValuation p)).toRingHom)
    Padic.isUniformInducing_cast_withVal.uniformContinuous.continuous)
  invFun := Padic.isDenseInducing_cast_withVal.extend coe'
  left_inv y := by
    induction y using induction_on
    · generalize_proofs _ _ _ H
      refine isClosed_eq ?_ continuous_id
      exact (uniformContinuous_uniformly_extend Padic.isUniformInducing_cast_withVal
        Padic.isDenseInducing_cast_withVal.dense (uniformContinuous_coe _)).continuous.comp
        (continuous_extension)
    · rw [extensionHom_coe]
      apply IsDenseInducing.extend_eq
      exact continuous_coe _
  right_inv y := by
    induction y using isClosed_property (Padic.denseRange_ratCast p)
    · refine isClosed_eq ?_ continuous_id
      refine continuous_extension.comp ?_
      exact (uniformContinuous_uniformly_extend Padic.isUniformInducing_cast_withVal
        Padic.isDenseInducing_cast_withVal.dense (uniformContinuous_coe _)).continuous
    · have : ∀ q : ℚ, Padic.isDenseInducing_cast_withVal.extend coe' q = coe'
        ((WithVal.equiv (Rat.padicValuation p)).symm q) := by
        intro q
        apply IsDenseInducing.extend_eq
        exact continuous_coe _
      rw [this, extensionHom_coe]
      simp
  map_mul' := map_mul _
  map_add' := map_add _


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb2d9fa749a094d34941116e6a6c11fedf589ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
