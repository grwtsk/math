# Algebra.FormallySmooth.iff_injective_lTensor_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb603d82-b5a1-aef6-722c-bfd9e167b836",
  "kind": "theorem",
  "lexical_name": "Algebra.FormallySmooth.iff_injective_lTensor_residueField",
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
  "slug": "algebra-formallysmooth-iff-injective-ltensor-residuefield--a2294402f2c40dacdb75b85d",
  "source": {
    "blob": "99e1333f3ddc604f4c4c5f989b20e054c7631464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/Algebra/Local/Varianteb7ab42eb64fc00127667392c4f706ea45fe6e3967ad46c4a5c7f39b3d06c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2294402f2c40dacdb75b85d95411cc3833f2b5e56ff647fdcb4625e3c7d6f4a",
  "verification": {
    "reference": "docs/verification/Algebra/Local/Varianteb7ab42eb64fc00127667392c4f706ea45fe6e3967ad46c4a5c7f39b3d06c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb603d82-b5a1-aef6-722c-bfd9e167b836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.FormallySmooth.iff_injective_lTensor_residueField {R S} [CommRing R]
    [CommRing S] [IsLocalRing S] [Algebra R S] (P : Algebra.Extension R S)
    [FormallySmooth R P.Ring]
    [Module.Free P.Ring (Ω[P.Ring⁄R])] [Module.Finite P.Ring (Ω[P.Ring⁄R])]
    (h' : P.ker.FG) :
    Algebra.FormallySmooth R S ↔
      Function.Injective (P.cotangentComplex.lTensor (ResidueField S)) := by
  have : Module.Finite P.Ring P.Cotangent :=
    have : Module.Finite P.Ring P.ker := ⟨(Submodule.fg_top _).mpr h'⟩
    .of_surjective _ Extension.Cotangent.mk_surjective
  have : Module.Finite S P.Cotangent := Module.Finite.of_restrictScalars_finite P.Ring _ _
  rw [← IsLocalRing.split_injective_iff_lTensor_residueField_injective,
    P.formallySmooth_iff_split_injection]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Local/Varianteb7ab42eb64fc00127667392c4f706ea45fe6e3967ad46c4a5c7f39b3d06c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Local/Varianteb7ab42eb64fc00127667392c4f706ea45fe6e3967ad46c4a5c7f39b3d06c601.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99e1333f3ddc604f4c4c5f989b20e054c7631464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
