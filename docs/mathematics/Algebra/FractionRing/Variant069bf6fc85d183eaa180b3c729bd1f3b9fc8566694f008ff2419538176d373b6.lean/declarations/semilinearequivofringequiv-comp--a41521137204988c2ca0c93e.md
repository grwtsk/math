# semilinearEquivOfRingEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd40d3dc-96f6-b5db-0103-749bb91c626b",
  "kind": "lemma",
  "lexical_name": "semilinearEquivOfRingEquiv_comp",
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
  "slug": "semilinearequivofringequiv-comp--a41521137204988c2ca0c93e",
  "source": {
    "blob": "d2c0d188183e955f15d59a427ae4405ad72efd52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 519,
    "path": "GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41521137204988c2ca0c93e9890c38c34ce062ae3389d002596dc05dc40a1cb",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd40d3dc-96f6-b5db-0103-749bb91c626b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma semilinearEquivOfRingEquiv_comp {C : Type*} (M : Type*) [CommRing C] [CommRing M]
    [Algebra C M] [IsFractionRing C M] (g : B ≃+* C) :
    let : RingHomCompTriple f (g : B →+* C) (f.trans g : A →+* C) := ⟨rfl⟩
    let : RingHomCompTriple g.symm (f.symm : B →+* A) ((f.trans g).symm : C →+* A) := ⟨rfl⟩
    (semilinearEquivOfRingEquiv K M (f.trans g)) =
      LinearEquiv.trans (σ₁₃ := (f.trans g)) (σ₃₁ := (f.trans g).symm)
      (semilinearEquivOfRingEquiv K L f)
      (semilinearEquivOfRingEquiv L M g) := by
  ext a
  simp [-RingEquiv.coe_ringHom_trans, semilinearEquivOfRingEquiv_apply,
    semilinearEquivOfRingEquiv_apply K M, ringEquivOfRingEquiv_comp K L M]

end semilinearEquivOfRingEquiv

section algEquivOfAlgEquiv

variable {R A K B L : Type*} [CommSemiring R] [CommRing A] [CommRing B] [CommRing K] [CommRing L]
  [Algebra R A] [Algebra R K] [Algebra A K] [IsFractionRing A K] [IsScalarTower R A K]
  [Algebra R B] [Algebra R L] [Algebra B L] [IsFractionRing B L] [IsScalarTower R B L]
  (h : A ≃ₐ[R] B)

/-- Given `R`-algebras `A, B` and localization maps to their fraction rings
`f : A →ₐ[R] K, g : B →ₐ[R] L`, an isomorphism `h : A ≃ₐ[R] B` induces an isomorphism of
fraction rings `K ≃ₐ[R] L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c0d188183e955f15d59a427ae4405ad72efd52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
