# IntermediateField.algHomEquivAlgHomOfSplits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:374a6afdc22a2b74e811ea50ee7881c7e1693cb34872aa3a3ca29bbd6d56705e",
  "kind": "def",
  "lexical_name": "IntermediateField.algHomEquivAlgHomOfSplits",
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
  "slug": "intermediatefield-alghomequivalghomofsplits--bd89934e1e44f1ee1ef4ad18",
  "source": {
    "blob": "99397430c4ea7f16acde07d261420060dc76840d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 461,
    "path": "GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd89934e1e44f1ee1ef4ad180b59eeacff864e36d00df2cda7b5ca426aeb5316",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:374a6afdc22a2b74e811ea50ee7881c7e1693cb34872aa3a3ca29bbd6d56705e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IntermediateField.algHomEquivAlgHomOfSplits (L : IntermediateField F A)
    (hL : ∀ x : K, (minpoly F x).Splits (algebraMap F L)) :
    (K →ₐ[F] L) ≃ (K →ₐ[F] A) where
  toFun := L.val.comp
  invFun f := f.codRestrict _ fun x ↦
    ((Algebra.IsIntegral.isIntegral x).map f).mem_intermediateField_of_minpoly_splits <| by
      rw [minpoly.algHom_eq f f.injective]; exact hL x
  left_inv _ := rfl
  right_inv _ := by rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99397430c4ea7f16acde07d261420060dc76840d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
