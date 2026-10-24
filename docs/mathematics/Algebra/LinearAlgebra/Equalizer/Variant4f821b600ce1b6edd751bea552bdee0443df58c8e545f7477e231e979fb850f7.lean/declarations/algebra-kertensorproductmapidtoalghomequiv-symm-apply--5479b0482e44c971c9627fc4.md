# Algebra.kerTensorProductMapIdToAlgHomEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7442ac1-61e5-2f33-5176-62d766246926",
  "kind": "lemma",
  "lexical_name": "Algebra.kerTensorProductMapIdToAlgHomEquiv_symm_apply",
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
  "slug": "algebra-kertensorproductmapidtoalghomequiv-symm-apply--5479b0482e44c971c9627fc4",
  "source": {
    "blob": "e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 354,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5479b0482e44c971c9627fc483ed4feb688685b15d7528d27efb34698a003d6f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7442ac1-61e5-2f33-5176-62d766246926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.kerTensorProductMapIdToAlgHomEquiv_symm_apply [Module.Flat R T]
    (h₁ : Function.Surjective (algebraMap S T)) (x y z) :
    ((kerTensorProductMapIdToAlgHomEquiv R S T A h₁).symm ((x ⊗ₜ y) ⊗ₜ z)).1 =
      x ⊗ₜ (y * z.1) := rfl

end Algebra

namespace RingHom

/--
A property `P` of ring homomorphisms is said to have stable equalizers, if the equalizer
of algebra maps between algebras with structure morphisms satisfying `P`, is preserved by
arbitrary base change.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
