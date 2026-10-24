# RingHom.LocalizationAwayPreserves.respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:073e1590-e3c8-18c6-15a3-4700cc157daa",
  "kind": "lemma",
  "lexical_name": "RingHom.LocalizationAwayPreserves.respectsIso",
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
  "slug": "ringhom-localizationawaypreserves-respectsiso--1b2e0f555176a9603abebf06",
  "source": {
    "blob": "01a81a3f8aa475885e73f66ac42c6d972cddf3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 319,
    "path": "GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b2e0f555176a9603abebf068b416225aee714ce945e5a6ec6f1e133b3483b35",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073e1590-e3c8-18c6-15a3-4700cc157daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.LocalizationAwayPreserves.respectsIso
    (hP : LocalizationAwayPreserves P) :
    RespectsIso P where
  left {R S T} _ _ _ f e hf := by
    let := e.toRingHom.toAlgebra
    have : IsLocalization.Away (1 : R) R :=
      IsLocalization.away_of_isUnit_of_bijective _ isUnit_one (Equiv.refl _).bijective
    have : IsLocalization.Away (f 1) T :=
      IsLocalization.away_of_isUnit_of_bijective _ (by simp) e.bijective
    convert! hP f 1 R T hf
    trans (IsLocalization.Away.map R T f 1).comp (algebraMap R R)
    · rw [IsLocalization.Away.map, IsLocalization.map_comp]; rfl
    · rfl
  right {R S T} _ _ _ f e hf := by
    let := e.symm.toRingHom.toAlgebra
    have : IsLocalization.Away (1 : S) R :=
      IsLocalization.away_of_isUnit_of_bijective _ isUnit_one e.symm.bijective
    have : IsLocalization.Away (f 1) T :=
      IsLocalization.away_of_isUnit_of_bijective _ (by simp) (Equiv.refl _).bijective
    convert! hP f 1 R T hf
    have : RingHomInvPair (e : R →+* S) e.symm := RingHomInvPair.of_ringEquiv _
    have : (IsLocalization.Away.map R T f 1).comp e.symm.toRingHom = f :=
      IsLocalization.map_comp ..
    conv_lhs => rw [← this, RingHom.comp_assoc]
    simp only [RingEquiv.toRingHom_eq_coe, RingHomCompTriple.comp_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a81a3f8aa475885e73f66ac42c6d972cddf3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
