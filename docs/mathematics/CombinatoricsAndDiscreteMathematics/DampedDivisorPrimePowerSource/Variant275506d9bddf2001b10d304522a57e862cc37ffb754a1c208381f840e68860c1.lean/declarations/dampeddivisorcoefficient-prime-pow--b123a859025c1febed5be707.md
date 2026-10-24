# dampedDivisorCoefficient_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6441ba07-abf8-c9ba-0e29-d9a538d68623",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_prime_pow",
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
  "slug": "dampeddivisorcoefficient-prime-pow--b123a859025c1febed5be707",
  "source": {
    "blob": "4731181c67c9bf56e7e13bd3011e08b9c738c9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variant275506d9bddf2001b10d304522a57e862cc37ffb754a1c208381f840e68860c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b123a859025c1febed5be70757a3a74bcd9ed06b4e6b55084d860905839b9435",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variant275506d9bddf2001b10d304522a57e862cc37ffb754a1c208381f840e68860c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6441ba07-abf8-c9ba-0e29-d9a538d68623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_prime_pow (ε : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 1 ≤ k) :
    dampedDivisorCoefficient ε (p ^ k) = 1 - Real.exp (-ε * Real.log (p : ℝ)) := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε (p ^ k)
    (one_le_pow₀ hp.one_le), Nat.primeFactors_prime_pow (by omega : k ≠ 0) hp,
    Finset.prod_singleton]

/-- Two distinct actual prime factors give the uniform quadratic remainder without divisor-count loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variant275506d9bddf2001b10d304522a57e862cc37ffb754a1c208381f840e68860c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variant275506d9bddf2001b10d304522a57e862cc37ffb754a1c208381f840e68860c1.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4731181c67c9bf56e7e13bd3011e08b9c738c9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
