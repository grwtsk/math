# Fiber.localizationAlgEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfd52a41cfc84c3a8d125071d683d4842b6af04c65eac0278708b943c0f5cde5",
  "kind": "def",
  "lexical_name": "Fiber.localizationAlgEquivQuotient",
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
  "slug": "fiber-localizationalgequivquotient--d13b59e6be3fa5d8a94d3b1c",
  "source": {
    "blob": "fce9211de87a29bb699ca0e6c93bbae56cbd0e74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 131,
    "path": "GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d13b59e6be3fa5d8a94d3b1c7bbae46ef317d9c2fd448df8dc25cc3132ebf0c4",
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

Occurrence: `declaration:bfd52a41cfc84c3a8d125071d683d4842b6af04c65eac0278708b943c0f5cde5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Fiber.localizationAlgEquivQuotient (q : Ideal (p.Fiber S)) [q.IsPrime]
    [Algebra (Localization.AtPrime p) (Localization.AtPrime (q.comap includeRight))]
    [IsScalarTower R (Localization.AtPrime p) (Localization.AtPrime (q.comap includeRight))] :
    letI r := q.comap includeRight
    letI Sr := Localization.AtPrime r
    Localization.AtPrime q ≃ₐ[Localization.AtPrime p] Sr ⧸ p.map (algebraMap R Sr) :=
  ((algEquivAux₂ p q).extendScalarsOfIsLocalization (Localization.AtPrime p) p.primeCompl).trans
    (quotientEquivAlgOfEq (Localization.AtPrime p) (map_map _ _))

end Ideal

@[deprecated (since := "2026-05-11")] alias Fiber.algEquivQuotient := Ideal.Fiber.algEquivQuotient

set_option backward.isDefEq.respectTransparency false in
variable (R S) in
/-- The fiber `PrimeSpectrum S → PrimeSpectrum R` at a prime ideal
`p : PrimeSpectrum R` is in bijection with the prime spectrum of `κ(p) ⊗[R] S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce9211de87a29bb699ca0e6c93bbae56cbd0e74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
