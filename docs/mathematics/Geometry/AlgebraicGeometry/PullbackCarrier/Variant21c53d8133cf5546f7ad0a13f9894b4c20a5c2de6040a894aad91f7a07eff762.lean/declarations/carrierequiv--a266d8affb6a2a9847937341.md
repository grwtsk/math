# carrierEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d59d375c54a9382781a3a554666acf2ecea14bb0ca4439699aa3814b977528b",
  "kind": "def",
  "lexical_name": "carrierEquiv",
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
  "slug": "carrierequiv--a266d8affb6a2a9847937341",
  "source": {
    "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 265,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a266d8affb6a2a98479373410132ec01715e95a277636d03b7a5e4d59026c391",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d59d375c54a9382781a3a554666acf2ecea14bb0ca4439699aa3814b977528b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def carrierEquiv : ↑(pullback f g) ≃ Σ T : Triplet f g, Spec T.tensor where
  toFun t := ⟨.ofPoint t, SpecOfPoint t⟩
  invFun T := T.1.SpecTensorTo T.2
  left_inv := SpecTensorTo_SpecOfPoint
  right_inv := by
    intro ⟨T, p⟩
    apply carrierEquiv_eq_iff.mpr
    use T.ofPoint_SpecTensorTo p
    have : Spec.map (Hom.residueFieldMap T.SpecTensorTo p) (⊥ : PrimeSpectrum _) =
        (⊥ : PrimeSpectrum _) :=
      (PrimeSpectrum.instUnique).uniq _
    simp only [SpecOfPoint, Triplet.tensorCongr_inv, ← this, ← Scheme.Hom.comp_apply,
      ← Scheme.Hom.comp_apply]
    simp [Triplet.Spec_ofPointTensor_SpecTensorTo]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
