# AlgEquiv.restrictNormalHom_comp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2398f824-96ec-b86e-5fb5-625085803534",
  "kind": "theorem",
  "lexical_name": "AlgEquiv.restrictNormalHom_comp_apply",
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
  "slug": "algequiv-restrictnormalhom-comp-apply--8572af06b357058f5652ae70",
  "source": {
    "blob": "e7af0b1d75caaee32336ad9b11478f1106ec6732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 240,
    "path": "GRWTSK/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8572af06b357058f5652ae70fc538bc5f77b47ba3905e2a57a8d12266392450f",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2398f824-96ec-b86e-5fb5-625085803534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgEquiv.restrictNormalHom_comp_apply (K₁ K₂ : Type*) {F K₃ : Type*}
    [Field F] [Field K₁] [Field K₂] [Field K₃]
    [Algebra F K₁] [Algebra F K₂] [Algebra F K₃] [Algebra K₁ K₂] [Algebra K₁ K₃] [Algebra K₂ K₃]
    [IsScalarTower F K₁ K₃] [IsScalarTower F K₁ K₂] [IsScalarTower F K₂ K₃] [IsScalarTower K₁ K₂ K₃]
    [Normal F K₁] [Normal F K₂] (f : K₃ ≃ₐ[F] K₃) :
    AlgEquiv.restrictNormalHom K₁ f =
    (AlgEquiv.restrictNormalHom K₁) (AlgEquiv.restrictNormalHom K₂ f) := by
  rw [IsScalarTower.AlgEquiv.restrictNormalHom_comp F K₁ K₂ K₃, MonoidHom.comp_apply]

end IsScalarTower

end lift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7af0b1d75caaee32336ad9b11478f1106ec6732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
