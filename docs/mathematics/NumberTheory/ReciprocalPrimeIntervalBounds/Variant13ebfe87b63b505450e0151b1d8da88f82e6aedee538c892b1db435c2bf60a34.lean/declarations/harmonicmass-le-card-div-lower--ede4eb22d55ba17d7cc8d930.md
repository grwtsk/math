# harmonicMass_le_card_div_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:312f074f-7f79-94f9-9a28-940a25c1e9e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4108343-4a85-a057-09cc-4c7a0cb5c080",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6242170b-7a76-0181-0d3f-f9b07b673769",
  "kind": "theorem",
  "lexical_name": "harmonicMass_le_card_div_lower",
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
  "slug": "harmonicmass-le-card-div-lower--ede4eb22d55ba17d7cc8d930",
  "source": {
    "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede4eb22d55ba17d7cc8d930499013bc3347edb72cc1800f779a81a8c59039f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6242170b-7a76-0181-0d3f-f9b07b673769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicMass_le_card_div_lower {B : Finset ℕ} {y : ℝ}
    (hy : 0 < y) (hlower : ∀ p ∈ B, y ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤ (B.card : ℝ) / y := by
  unfold PPNCP04.Obstruction.harmonicMass
  calc
    (∑ p ∈ B, 1 / (p : ℝ)) ≤ ∑ _p ∈ B, 1 / y := by
      exact Finset.sum_le_sum (fun p hp => one_div_le_one_div_of_le hy (hlower p hp))
    _ = (B.card : ℝ) / y := by simp [div_eq_mul_inv]

/-- Explicit finite interval bound from the established Chebyshev upper
bound for prime counts.  All members of B must be actual source primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e74d9863290524e76e06a096d0408230dabf56b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
