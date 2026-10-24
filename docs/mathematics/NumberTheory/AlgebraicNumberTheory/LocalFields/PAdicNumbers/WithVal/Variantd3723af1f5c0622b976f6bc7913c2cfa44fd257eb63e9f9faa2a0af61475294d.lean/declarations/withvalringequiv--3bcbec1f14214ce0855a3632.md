# withValRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a6dec0e9e5796d7af231ba23cd1957b28f2f8ed06a9b9eb1cf94d5bba8224c0",
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
  "slug": "withvalringequiv--3bcbec1f14214ce0855a3632",
  "source": {
    "blob": "fcd5640ee02e45dcea57a76f9a7b40d8baf83c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bcbec1f14214ce0855a36329aa91bab2a952c328190101b14c85da3ba3eb347",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a6dec0e9e5796d7af231ba23cd1957b28f2f8ed06a9b9eb1cf94d5bba8224c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–138.

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

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd5640ee02e45dcea57a76f9a7b40d8baf83c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
