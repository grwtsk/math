# mapPiEvalRingHom_algebraMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31e63f76-70fe-cd96-edac-f9531dbdfa0c",
  "kind": "theorem",
  "lexical_name": "mapPiEvalRingHom_algebraMap_apply",
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
  "slug": "mappievalringhom-algebramap-apply--7f7ad7c2d8d1ebe11c0ca2ae",
  "source": {
    "blob": "31f9a7a8cc78ab3ff24305094374c01bf85e7c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 439,
    "path": "GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f7ad7c2d8d1ebe11c0ca2aefa4185ff726ac5fbcc9425ff2bddb359fc04bbe7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31e63f76-70fe-cd96-edac-f9531dbdfa0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapPiEvalRingHom_algebraMap_apply {r : Π i, R i} :
    mapPiEvalRingHom I (algebraMap _ _ r) = algebraMap _ _ (r i) :=
  localRingHom_to_map ..

end AtPrime

section localAlg

open AtPrime

variable {S} [Algebra R P] (J : Ideal S) (K : Ideal P) [J.IsPrime] [K.IsPrime]
  [J.LiesOver I] [Algebra (Localization.AtPrime I) (Localization.AtPrime J)]
  [K.LiesOver I] [Algebra (Localization.AtPrime I) (Localization.AtPrime K)]
  [IsScalarTower R (Localization.AtPrime I) (Localization.AtPrime J)]
  [IsScalarTower R (Localization.AtPrime I) (Localization.AtPrime K)]

/-- For an `R`-algebra homomorphism `f : S →ₐ[R] P` and prime ideals `J = f⁻¹(K)` lying over `I`,
the induced algebra homomorphism from the localization of `S` at `J` to the localization of `P` at
`K` over the localization of `R` at `I`.

See `localAlgHom` for a variant where the base ring `R` is not localized. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f9a7a8cc78ab3ff24305094374c01bf85e7c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
