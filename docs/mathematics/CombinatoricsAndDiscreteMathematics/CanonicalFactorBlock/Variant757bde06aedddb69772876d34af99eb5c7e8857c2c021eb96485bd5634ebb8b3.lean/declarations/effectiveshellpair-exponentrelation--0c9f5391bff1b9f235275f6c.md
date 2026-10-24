# effectiveShellPair_exponentRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5dc520f-8497-4ac6-3513-c29af2079000",
  "kind": "theorem",
  "lexical_name": "effectiveShellPair_exponentRelation",
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
  "slug": "effectiveshellpair-exponentrelation--0c9f5391bff1b9f235275f6c",
  "source": {
    "blob": "a8568131a774a3ace406dd4653015337f5a5907d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 174,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9f5391bff1b9f235275f6c45c13350f86ee3bca2b15c23059518846d13bed3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5dc520f-8497-4ac6-3513-c29af2079000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveShellPair_exponentRelation {N q : ℕ}
    {m k : VaughanScaleIndex N}
    (hpair : IsEffectiveTypeIIShellPair N q (m, k)) :
    halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q - 1 ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q + 1 := by
  let j := halfOpenFactorExponent m.1
  let l := halfOpenFactorExponent k.1
  have hmpos : 0 < m.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.1)
  have hkpos : 0 < k.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.2.1)
  have hmLower : 2 ^ j ≤ m.1 := pow_halfOpenFactorExponent_le hmpos
  have hkLower : 2 ^ l ≤ k.1 := pow_halfOpenFactorExponent_le hkpos
  have hmUpper : m.1 < 2 ^ (j + 1) := lt_pow_halfOpenFactorExponent_succ hmpos
  have hkUpper : k.1 < 2 ^ (l + 1) := lt_pow_halfOpenFactorExponent_succ hkpos
  have hshellLower : 2 ^ q < m.1 * k.1 := hpair.2.2.1
  have hshellUpper : m.1 * k.1 ≤ 2 ^ (q + 1) := hpair.2.2.2.1
  have hsumLower : q - 1 ≤ j + l := by
    by_contra hnot
    have hsum : j + l ≤ q - 2 := by omega
    have hpow : 2 ^ ((j + 1) + (l + 1)) ≤ 2 ^ q := by
      apply Nat.pow_le_pow_right (by decide)
      omega
    have hprod : m.1 * k.1 < 2 ^ ((j + 1) + (l + 1)) := by
      rw [pow_add]
      exact mul_lt_mul hmUpper hkUpper.le hkpos (by positivity)
    omega
  have hsumUpper : j + l ≤ q + 1 := by
    by_contra hnot
    have hsum : q + 2 ≤ j + l := by omega
    have hpow : 2 ^ (q + 2) ≤ 2 ^ (j + l) := by
      exact Nat.pow_le_pow_right (by decide) hsum
    have hprod : 2 ^ (j + l) ≤ m.1 * k.1 := by
      rw [pow_add]
      exact Nat.mul_le_mul hmLower hkLower
    have hstrict : 2 ^ (q + 1) < 2 ^ (q + 2) :=
      Nat.pow_lt_pow_right Nat.one_lt_two (by omega)
    omega
  change j + l = q - 1 ∨ j + l = q ∨ j + l = q + 1
  omega

/-- The canonical shell block assigned to an effective factor pair. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8568131a774a3ace406dd4653015337f5a5907d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
