# ramanujan_six_ten_control

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00921b6e-1ee7-96ff-7a69-09b2397e5ee7",
  "kind": "theorem",
  "lexical_name": "ramanujan_six_ten_control",
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
  "slug": "ramanujan-six-ten-control--b4934aeb09e84486ad6d4d6c",
  "source": {
    "blob": "0e0b36b8203dea86f5185b5e7f902722d91e0ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4934aeb09e84486ad6d4d6c2547de63ca8b9c912e7e2bc94f8620c05d0811b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00921b6e-1ee7-96ff-7a69-09b2397e5ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramanujan_six_ten_control :
    goldbachRamanujanInteger 6 10 = -1 := by
  calc
    goldbachRamanujanInteger 6 10 =
        goldbachRamanujanInteger 2 10 * goldbachRamanujanInteger 3 10 :=
      goldbachRamanujanInteger_mul_of_coprime
        (q := 2) (r := 3) (by norm_num) (by norm_num) (by norm_num)
    _ = -1 := by
      rw [goldbachRamanujanInteger_prime Nat.prime_two,
        goldbachRamanujanInteger_prime Nat.prime_three]
      norm_num

/-- The Ramanujan integer at modulus six and target eighteen is `φ(6)=2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0b36b8203dea86f5185b5e7f902722d91e0ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
