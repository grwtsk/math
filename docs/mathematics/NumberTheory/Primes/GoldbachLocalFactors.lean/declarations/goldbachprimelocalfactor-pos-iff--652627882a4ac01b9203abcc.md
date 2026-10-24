# goldbachPrimeLocalFactor_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ded29ca-6b37-1cc0-ef00-b6b4f5a64ac0",
  "kind": "theorem",
  "lexical_name": "goldbachPrimeLocalFactor_pos_iff",
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
  "slug": "goldbachprimelocalfactor-pos-iff--652627882a4ac01b9203abcc",
  "source": {
    "blob": "4d745b1f5ccd40bc24a917de4b604ab4626481be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:652627882a4ac01b9203abccbd3c4a653666922944689b6ee1daec93f80c4251",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ded29ca-6b37-1cc0-ef00-b6b4f5a64ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachPrimeLocalFactor_pos_iff {p N : ℕ}
    (hp : Nat.Prime p) :
    0 < goldbachPrimeLocalFactor p N ↔ p ≠ 2 ∨ Even N := by
  have hpq : (0 : ℚ) < (p : ℚ) := by exact_mod_cast hp.pos
  have hsub : (0 : ℚ) < ((p - 1 : ℕ) : ℚ) := by
    exact_mod_cast Nat.sub_pos_of_lt hp.one_lt
  have hden : (0 : ℚ) < (((p - 1 : ℕ) : ℚ) ^ 2) :=
    pow_pos hsub 2
  rw [goldbachPrimeLocalFactor, div_pos_iff_of_pos_right hden,
    mul_pos_iff_of_pos_left hpq]
  exact_mod_cast (goldbachPrimeResidueCount_pos_iff hp)

/-- At odd primes, the normalized density is the universal factor times the
standard correction for primes dividing the target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d745b1f5ccd40bc24a917de4b604ab4626481be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
