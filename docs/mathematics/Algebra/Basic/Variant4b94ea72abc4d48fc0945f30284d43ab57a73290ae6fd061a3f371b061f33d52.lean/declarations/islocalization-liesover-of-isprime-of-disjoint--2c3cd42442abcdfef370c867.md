# IsLocalization.liesOver_of_isPrime_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1f45653-13b9-3113-4906-f5ec4f7c1e32",
  "kind": "lemma",
  "lexical_name": "IsLocalization.liesOver_of_isPrime_of_disjoint",
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
  "slug": "islocalization-liesover-of-isprime-of-disjoint--2c3cd42442abcdfef370c867",
  "source": {
    "blob": "31f9a7a8cc78ab3ff24305094374c01bf85e7c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 510,
    "path": "GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3cd42442abcdfef370c867de1ff39f5c34711f0113e161d7162af1f84e939c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f45653-13b9-3113-4906-f5ec4f7c1e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.liesOver_of_isPrime_of_disjoint {R' S' : Type*}
    (M : Submonoid R) (T : Submonoid S)
    [CommSemiring R'] [CommSemiring S'] [Algebra R R'] [Algebra S S'] [Algebra R' S']
    [Algebra R S'] [IsScalarTower R S S'] [IsScalarTower R R' S']
    [IsLocalization M R'] [IsLocalization T S']
    (p : Ideal R) {P : Ideal S} [P.IsPrime] [P.LiesOver p]
    (disj : Disjoint (T : Set S) (P : Set S)) :
    (P.map (algebraMap S S')).LiesOver (p.map (algebraMap R R')) := by
  suffices h : Ideal.map (algebraMap R R') (under R (under R' (P.map (algebraMap S S')))) =
      Ideal.map (algebraMap R R') p from ⟨by rw [← h, IsLocalization.map_under (M := M)]⟩
  rw [under_under, ← under_under (B := S), under_map_of_isPrime_disjoint _ _ ‹_› disj,
    LiesOver.over (P := P) (p := p)]

@[deprecated (since := "2026-07-04")] alias Ideal.IsMaximal.of_isLocalization_of_disjoint :=
  IsLocalization.isMaximal_of_isMaximal_under

end

namespace IsLocalization.AtPrime

open Algebra IsLocalRing Ideal IsLocalization IsLocalization.AtPrime

variable (p : Ideal R) [p.IsPrime] (Rₚ : Type*) [CommSemiring Rₚ] [Algebra R Rₚ]
  [IsLocalization.AtPrime Rₚ p] [IsLocalRing Rₚ] (Sₚ : Type*) [CommSemiring Sₚ] [Algebra S Sₚ]
  [IsLocalization (Algebra.algebraMapSubmonoid S p.primeCompl) Sₚ] [Algebra Rₚ Sₚ]
  (P : Ideal S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f9a7a8cc78ab3ff24305094374c01bf85e7c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
