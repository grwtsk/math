# Fiber.algEquivAux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cae7d7641072accb50a31eb3cc85957ed35b39489c40261957ffd7656105800d",
  "kind": "def",
  "lexical_name": "Fiber.algEquivAux₂",
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
  "slug": "fiber-algequivaux--e8f783015c7a7ffe14821d1a",
  "source": {
    "blob": "fce9211de87a29bb699ca0e6c93bbae56cbd0e74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8f783015c7a7ffe14821d1af2275aadbe3d7ff95c6692cb072c36901d4c0de0",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cae7d7641072accb50a31eb3cc85957ed35b39489c40261957ffd7656105800d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Fiber.algEquivAux₂ (q : Ideal (p.Fiber S)) [q.IsPrime] :
    letI r := q.comap includeRight
    letI Sr := Localization.AtPrime r
    letI pS := p.map (algebraMap R S)
    Localization.AtPrime q ≃ₐ[R] Sr ⧸ pS.map (algebraMap S Sr) :=
  letI : Algebra S (p.Fiber S) := rightAlgebra
  letI Sp := Localization (algebraMapSubmonoid S p.primeCompl)
  letI pS := p.map (algebraMap R S)
  letI SpS := S ⧸ pS
  letI r := q.comap includeRight
  letI Sr := Localization.AtPrime r
  letI e₁ : p.Fiber S ≃ₐ[S] Sp ⧸ pS.map (algebraMap S Sp) := algEquivAux₁ p
  letI q' : Ideal (Sp ⧸ pS.map (algebraMap S Sp)) := q.comap e₁.symm
  haveI : (q'.under SpS).LiesOver r := under_liesOver_of_liesOver SpS q' (q.under S)
  haveI : algebraMapSubmonoid SpS r.primeCompl = (q'.under SpS).primeCompl :=
    algebraMapSubmonoid_primeCompl_of_liesOver_surjective (q'.under SpS) r Quotient.mk_surjective
  haveI : IsLocalization (algebraMapSubmonoid SpS r.primeCompl) (Localization.AtPrime q') := by
    convert IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
      (algebraMapSubmonoid SpS (algebraMapSubmonoid S p.primeCompl)) (Localization.AtPrime q') q'
  haveI := IsScalarTower.to₁₃₄ R S SpS (Localization.AtPrime q')
  haveI := IsScalarTower.to₁₃₄ R S SpS (Sr ⧸ pS.map (algebraMap S Sr))
  ((Localization.localAlgEquiv q' q e₁.symm rfl).symm.restrictScalars R).trans
    ((IsLocalization.algEquiv (algebraMapSubmonoid SpS r.primeCompl) (Localization.AtPrime q')
      (Sr ⧸ pS.map (algebraMap S Sr))).restrictScalars R)

/-- The localization of the fiber `p.Fiber S` is isomorphic to a quotient of a localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce9211de87a29bb699ca0e6c93bbae56cbd0e74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
