# equivPiOfIsSepClosed_self_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b00d4a81-9f0f-ce33-7e85-b3a79c1a6fab",
  "kind": "lemma",
  "lexical_name": "equivPiOfIsSepClosed_self_apply",
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
  "slug": "equivpiofissepclosed-self-apply--b57d26af1b170d163779f1d2",
  "source": {
    "blob": "d16578fab0433ec3670555d01bd1901e2fbfc04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 240,
    "path": "GRWTSK/Algebra/Field/Variant2195c4ddc9b5503fe0ae04e8c8b04da96624828265dcf5b06a5dafa072387234.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57d26af1b170d163779f1d2ad2902b1860e52986fbd5440e5983fb79599c499",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant2195c4ddc9b5503fe0ae04e8c8b04da96624828265dcf5b06a5dafa072387234.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b00d4a81-9f0f-ce33-7e85-b3a79c1a6fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivPiOfIsSepClosed_self_apply [IsSepClosed K] (x : K) (p : PrimeSpectrum K) :
    equivPiOfIsSepClosed K K x p = x := by
  let := Ideal.Quotient.field p.asIdeal
  dsimp [equivPiOfIsSepClosed]
  simp only [Equiv.piCongrLeft_symm_apply, AlgEquiv.piCongrRight_apply,
    IsArtinianRing.primeSpectrumEquivMaximalSpectrum_apply_asIdeal, IsArtinianRing.equivPi_apply]
  apply (AlgEquiv.ofBijective (ofId K (K ⧸ p.asIdeal))
    (IsSepClosed.algebraMap_bijective _ _)).injective
  simp

variable {K A} in
set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant2195c4ddc9b5503fe0ae04e8c8b04da96624828265dcf5b06a5dafa072387234.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant2195c4ddc9b5503fe0ae04e8c8b04da96624828265dcf5b06a5dafa072387234.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16578fab0433ec3670555d01bd1901e2fbfc04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
