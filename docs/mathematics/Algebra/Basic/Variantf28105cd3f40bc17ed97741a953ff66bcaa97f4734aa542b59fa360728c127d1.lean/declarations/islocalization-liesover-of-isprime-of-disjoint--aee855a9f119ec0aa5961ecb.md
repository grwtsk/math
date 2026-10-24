# IsLocalization.liesOver_of_isPrime_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebc43c1d7f01f6484aae60c4c7433c8b48c39a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14e62350-81ee-bb10-44a8-7e0e97fccf42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6db096b9-58d3-37d7-54ba-7c68ac9ad90c",
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
  "slug": "islocalization-liesover-of-isprime-of-disjoint--aee855a9f119ec0aa5961ecb",
  "source": {
    "blob": "7eebc43c1d7f01f6484aae60c4c7433c8b48c39a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 502,
    "path": "GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aee855a9f119ec0aa5961ecb501203788cd1261c4271024a3487712d326d6fbe",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db096b9-58d3-37d7-54ba-7c68ac9ad90c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–528.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebc43c1d7f01f6484aae60c4c7433c8b48c39a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
