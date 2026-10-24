# pepin_primality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02dcb3bf-e6ea-12a0-ba75-e520c9eec145",
  "kind": "lemma",
  "lexical_name": "pepin_primality",
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
  "slug": "pepin-primality--82d7f999a896aab84215a1d4",
  "source": {
    "blob": "0a4cc10eaec9d5557201350faaf5ce9cbc315c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d7f999a896aab84215a1d4419f9a57eb8eb115cd89c2ec418b9d579f7e67ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02dcb3bf-e6ea-12a0-ba75-e520c9eec145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pepin_primality (n : ℕ) (h : 3 ^ (2 ^ (2 ^ n - 1)) = (-1 : ZMod (fermatNumber n))) :
    (fermatNumber n).Prime := by
  have := Fact.mk (two_lt_fermatNumber n)
  have key : 2 ^ n = 2 ^ n - 1 + 1 := (Nat.sub_add_cancel Nat.one_le_two_pow).symm
  apply lucas_primality (p := 2 ^ (2 ^ n) + 1) (a := 3)
  · rw [Nat.add_sub_cancel, key, pow_succ, pow_mul, ← pow_succ, ← key, h, neg_one_sq]
  · intro p hp1 hp2
    rw [Nat.add_sub_cancel, (Nat.prime_dvd_prime_iff_eq hp1 prime_two).mp (hp1.dvd_of_dvd_pow hp2),
        key, pow_succ, Nat.mul_div_cancel _ two_pos, ← pow_succ, ← key, h]
    exact neg_one_ne_one

/-- `Fₙ = 2^(2^n)+1` is prime if `3^((Fₙ - 1)/2) = -1 mod Fₙ` (**Pépin's test**). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4cc10eaec9d5557201350faaf5ce9cbc315c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
