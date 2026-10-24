# aevalEquivField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5fcbc307491a9f6747d7f23a2cd98d48171cebdee226e1b537bb83cb7a2f666",
  "kind": "def",
  "lexical_name": "aevalEquivField",
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
  "slug": "aevalequivfield--4cb6da2496259a9e8e6fef89",
  "source": {
    "blob": "907bac028210e7a578f19ad381348d506f550d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cb6da2496259a9e8e6fef89157f46873f6cb47176812af6e481bba314d95650",
  "verification": {
    "reference": "docs/verification/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5fcbc307491a9f6747d7f23a2cd98d48171cebdee226e1b537bb83cb7a2f666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def aevalEquivField :
    FractionRing (MvPolynomial ι F) ≃ₐ[F] ↥(IntermediateField.adjoin F (range x)) :=
  let i := IsFractionRing.liftAlgHom (K := FractionRing (MvPolynomial ι F))
    (algebraicIndependent_iff_injective_aeval.2 hx)
  (show _ ≃ₐ[F] i.fieldRange from AlgEquiv.ofInjectiveField i).trans <|
    IntermediateField.equivOfEq <|
      IsFractionRing.algHom_fieldRange_eq_of_comp_eq_of_range_eq (g := aeval x) (f := i)
        (by ext <;> simp [i]) (Algebra.adjoin_range_eq_range_aeval F x).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907bac028210e7a578f19ad381348d506f550d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
