# theta_sub_pos_iff_intervalCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c181f1e0-f2de-8e14-a293-b552ce01802a",
  "kind": "theorem",
  "lexical_name": "theta_sub_pos_iff_intervalCount",
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
  "slug": "theta-sub-pos-iff-intervalcount--c2e8169a99cbc55cfb42f8e9",
  "source": {
    "blob": "91d560478f09103eeb1a7ec76767c8ce407727ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e8169a99cbc55cfb42f8e995eca771827f03bc93391edd6b909bf146901a3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c181f1e0-f2de-8e14-a293-b552ce01802a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_sub_pos_iff_intervalCount (a b : ℕ) (hab : a ≤ b)
    (hb : ¬ Nat.Prime b) :
    0 < Chebyshev.theta (b : ℝ) - Chebyshev.theta (a : ℝ) ↔
      0 < intervalCount a b := by
  rw [theta_sub_nat_eq_prime_sum a b hab, prime_log_sum_pos_iff,
    intervalCount_pos_iff]
  constructor
  · rintro ⟨p, hp, hprime⟩
    obtain ⟨hap, hpb⟩ := Finset.mem_Ioc.mp hp
    refine ⟨p, hprime, hap, ?_⟩
    by_contra hnot
    have heq : p = b := by omega
    exact hb (heq ▸ hprime)
  · rintro ⟨p, hprime, hap, hpb⟩
    exact ⟨p, Finset.mem_Ioc.mpr ⟨hap, hpb.le⟩, hprime⟩

/-- This includes zero and one; no square is a natural prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d560478f09103eeb1a7ec76767c8ce407727ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
