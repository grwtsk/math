# quadraticCompositeSurvivor_not_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26d839f4-c482-ed0e-4bb4-322f3f8f7c8b",
  "kind": "theorem",
  "lexical_name": "quadraticCompositeSurvivor_not_prime",
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
  "slug": "quadraticcompositesurvivor-not-prime--35eb5170eb1b4a603a6bc393",
  "source": {
    "blob": "272f99f579a203c9912264b5ef5edec75c3cc3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticSieveObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35eb5170eb1b4a603a6bc393f1192c2e8ff627e7a58481394d7443daa56a34cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticSieveObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d839f4-c482-ed0e-4bb4-322f3f8f7c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticCompositeSurvivor_not_prime {M B : ℕ} (hM : 0 < M) :
    ¬ Nat.Prime ((quadraticCompositeSurvivor M B) ^ 2 + 1) := by
  have hM2 : 0 < M ^ 2 := pow_pos hM 2
  have hinner : 0 < (B + 1) * (M ^ 2 + 1) := by positivity
  have hgain : 0 < M * ((B + 1) * (M ^ 2 + 1)) := Nat.mul_pos hM hinner
  have hindex : M < quadraticCompositeSurvivor M B := by
    unfold quadraticCompositeSurvivor
    nlinarith
  have hproper : M ^ 2 + 1 < (quadraticCompositeSurvivor M B) ^ 2 + 1 := by
    nlinarith
  intro hp
  rcases (Nat.dvd_prime hp).mp (quadraticCompositeSurvivor_value_dvd M B) with h | h
  · omega
  · omega

/-- The fixed finite sieve has composite survivors beyond every cutoff.
There is no conclusion here about prime survivors or a growing sieve. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticSieveObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticSieveObstruction.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272f99f579a203c9912264b5ef5edec75c3cc3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
