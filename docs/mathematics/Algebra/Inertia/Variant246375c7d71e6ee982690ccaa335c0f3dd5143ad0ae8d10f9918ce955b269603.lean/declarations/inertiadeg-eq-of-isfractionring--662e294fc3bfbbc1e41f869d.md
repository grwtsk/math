# inertiaDeg_eq_of_isFractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:607bcd62-d853-e4c2-c56a-d86e2cf42552",
  "kind": "theorem",
  "lexical_name": "inertiaDeg_eq_of_isFractionRing",
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
  "slug": "inertiadeg-eq-of-isfractionring--662e294fc3bfbbc1e41f869d",
  "source": {
    "blob": "6e56e55e5856b0c4066adafa665289f739579029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 95,
    "path": "GRWTSK/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:662e294fc3bfbbc1e41f869dc8e005df3c19ddb1a70db3f50d0525934eba1ef5",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:607bcd62-d853-e4c2-c56a-d86e2cf42552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDeg_eq_of_isFractionRing [q.LiesOver p] [p.IsPrime] [q.IsPrime]
    (K L : Type*) [Field K] [Field L]
    [Algebra (R ⧸ p) K] [IsFractionRing (R ⧸ p) K]
    [Algebra (S ⧸ q) L] [IsFractionRing (S ⧸ q) L]
    [Algebra R K] [IsScalarTower R (R ⧸ p) K]
    [Algebra S L] [IsScalarTower S (S ⧸ q) L]
    [Algebra R L] [IsScalarTower R S L]
    [Algebra K L] [IsScalarTower R K L] :
    q.inertiaDeg R = Module.finrank K L := by
  let := Localization.AtPrime.algebraOfLiesOver p q
  rw [inertiaDeg_eq p q]
  apply Algebra.finrank_eq_of_equiv_equiv
    (IsFractionRing.algEquivOfAlgEquiv (R := R) (A := R ⧸ p) (K := p.ResidueField) (L := K) .refl)
    (IsFractionRing.algEquivOfAlgEquiv (R := S) (A := S ⧸ q) (K := q.ResidueField) (L := L) .refl)
  apply IsFractionRing.ringHom_ext (A := R ⧸ p)
  intro x
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  simp [← IsScalarTower.algebraMap_apply R p.ResidueField q.ResidueField,
    IsScalarTower.algebraMap_apply R S q.ResidueField,
    ← IsScalarTower.algebraMap_apply R K L, ← IsScalarTower.algebraMap_apply R S L]

@[deprecated (since := "2026-07-03")] alias inertiaDeg'_eq_of_isFractionRing :=
inertiaDeg_eq_of_isFractionRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e56e55e5856b0c4066adafa665289f739579029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
