# Nat.Prime.dvd_add_pow_sub_pow_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "959b9e6e1da663e7b53bfa0340c8e5e6ffdcb475",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dac0555d-3429-07a5-708a-650ab1601abc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cf1c47c-0f2d-dbfc-a155-b8483f462bf4",
  "kind": "lemma",
  "lexical_name": "Nat.Prime.dvd_add_pow_sub_pow_of_dvd",
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
  "slug": "nat-prime-dvd-add-pow-sub-pow-of-dvd--70bed230007bb5bb6665a8e4",
  "source": {
    "blob": "959b9e6e1da663e7b53bfa0340c8e5e6ffdcb475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bed230007bb5bb6665a8e44c5bde98967823ba26147e80b42318d357905fb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cf1c47c-0f2d-dbfc-a155-b8483f462bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.Prime.dvd_add_pow_sub_pow_of_dvd (hpri : p.Prime) {r : R} (h₁ : r ∣ x ^ p)
    (h₂ : r ∣ p * x) : r ∣ (x + y) ^ p - y ^ p := by
  rw [add_pow_prime_eq hpri, add_right_comm, add_assoc, add_sub_assoc, add_sub_cancel_right]
  exact dvd_add h₁ (h₂.trans <| (dvd_mul_right ..).trans <| dvd_mul_right ..)

end CommRing


namespace CharP

section

variable (R) [NonAssocRing R]

/-- The characteristic of a finite ring cannot be zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959b9e6e1da663e7b53bfa0340c8e5e6ffdcb475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
