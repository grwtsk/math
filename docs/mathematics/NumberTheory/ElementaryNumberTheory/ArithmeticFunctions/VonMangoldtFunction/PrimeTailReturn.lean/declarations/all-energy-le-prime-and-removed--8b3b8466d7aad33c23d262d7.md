# all_energy_le_prime_and_removed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef600b9b-0221-af04-cbe0-a2152e7a11be",
  "kind": "theorem",
  "lexical_name": "all_energy_le_prime_and_removed",
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
  "slug": "all-energy-le-prime-and-removed--8b3b8466d7aad33c23d262d7",
  "source": {
    "blob": "bcb85000e7df8de54282661104b760a60b626e73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 173,
    "path": "GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b3b8466d7aad33c23d262d72b6160cf5c1466cc46a0eaf50c1169879134a5c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef600b9b-0221-af04-cbe0-a2152e7a11be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_energy_le_prime_and_removed {X : ℕ} (hX : 0<X) :
    augmentedEnergy X≤2*primeEnergy X+2*removedEnergy X := by
  rw [augmented_eq_tailEnergy hX]
  have hm : (mass0 X)^2≤2*(primeMass0 X)^2+2*(removedMass X)^2 := by
    rw [source_mass_partition]
    nlinarith [sq_nonneg (primeMass0 X-removedMass X)]
  have hi : (∫ t, (tailSource X t)^2 ∂unitVolume)≤
      2*(∫ t, (primeTail X t)^2 ∂unitVolume)+
      2*(∫ t, (removedTail X t)^2 ∂unitVolume) := by
    calc
      _ ≤ ∫ t, 2*(primeTail X t)^2+2*(removedTail X t)^2 ∂unitVolume := by
        apply integral_mono (tailSource_square_integrable X)
          (((primeTail_square_integrable X).const_mul 2).add
            ((removedTail_square_integrable X).const_mul 2))
        intro t
        rw [source_tail_partition]
        nlinarith [sq_nonneg (primeTail X t-removedTail X t)]
      _ = _ := by
        rw [integral_add ((primeTail_square_integrable X).const_mul 2)
          ((removedTail_square_integrable X).const_mul 2),integral_const_mul,integral_const_mul]
  unfold tailEnergy primeEnergy removedEnergy atomicEnergy
  change (mass0 X)^2+_ ≤ 2*((primeMass0 X)^2+_)+2*((removedMass X)^2+_)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb85000e7df8de54282661104b760a60b626e73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
