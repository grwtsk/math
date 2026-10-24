# subDPIdeal_inf_of_quot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:124221c669a8305a711f6d0e7faa4c5d89bf77628d11cc801edfa643fd04e0e4",
  "kind": "def",
  "lexical_name": "subDPIdeal_inf_of_quot",
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
  "slug": "subdpideal-inf-of-quot--154bb5f62190dd91bf73ffce",
  "source": {
    "blob": "d48853bce2d1873c7253498403051f12d1c18c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 530,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:154bb5f62190dd91bf73ffcec6726fbe411ef0caaa15ac04b30b51b275f8f8b5",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:124221c669a8305a711f6d0e7faa4c5d89bf77628d11cc801edfa643fd04e0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subDPIdeal_inf_of_quot {A : Type*} [CommRing A] {I : Ideal A} {hI : DividedPowers I}
    {J : Ideal A} {hJ : DividedPowers (I.map (Ideal.Quotient.mk J))} {φ : DPMorphism hI hJ}
    (hφ : φ.toRingHom = Ideal.Quotient.mk J) :
    SubDPIdeal hI where
  carrier    := J ⊓ I
  isSubideal := by simp only [inf_le_right]
  dpow_mem   := fun _ hn a ⟨haJ, haI⟩ ↦ by
    refine ⟨?_, hI.dpow_mem hn haI⟩
    rw [SetLike.mem_coe, ← Quotient.eq_zero_iff_mem, ← hφ, ← φ.dpow_comp a haI]
    suffices ha0 : φ.toRingHom a = 0 by
      rw [ha0, hJ.dpow_eval_zero hn]
    rw [hφ, Quotient.eq_zero_iff_mem]
    exact haJ

end Equalizer

section Quotient

/- Divided power structure on a quotient ring in two settings:
* The case of a surjective `RingHom`.
* The specific case for `Ideal.Quotient.mk`. -/
namespace Quotient

variable {A : Type*} [CommRing A] {I : Ideal A} (hI : DividedPowers I)

namespace OfSurjective

variable {B : Type*} [CommRing B] (f : A →+* B) (J : Ideal B)

/-- The definition of divided powers on the codomain `B` of a surjective ring homomorphism
  from a ring `A` with divided powers `hI`. This definition is tagged as noncomputable
  because it makes use of `Function.extend`, but under the hypothesis
  `IsSubDPIdeal hI (RingHom.ker f ⊓ I)`, `dividedPowers_unique` proves that no choices are
  involved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48853bce2d1873c7253498403051f12d1c18c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
