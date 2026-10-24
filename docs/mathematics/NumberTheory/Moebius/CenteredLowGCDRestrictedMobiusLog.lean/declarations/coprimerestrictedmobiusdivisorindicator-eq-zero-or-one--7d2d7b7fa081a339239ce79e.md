# coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f066c50-802b-afa6-eac2-063a4606a927",
  "kind": "theorem",
  "lexical_name": "coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one",
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
  "slug": "coprimerestrictedmobiusdivisorindicator-eq-zero-or-one--7d2d7b7fa081a339239ce79e",
  "source": {
    "blob": "63da93bf88928ffc712002a77c1db9ba8ef7bd7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2d7b7fa081a339239ce79e5deacc6ec1df7a20c3ec9183f1ad92d193cace13",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f066c50-802b-afa6-eac2-063a4606a927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one
    (r n : ℕ) :
    coprimeRestrictedMobiusDivisorIndicator r n = 0 ∨
      coprimeRestrictedMobiusDivisorIndicator r n = 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero =>
      left
      exact (coprimeRestrictedMobiusDivisorIndicator r).map_zero
  | one =>
      right
      simp [coprimeRestrictedMobiusDivisorIndicator,
        coprimeRestrictedMobius, mobiusReal]
  | prime_pow p k hp hk =>
      rw [coprimeRestrictedMobiusDivisorIndicator_prime_pow hp hk]
      split <;> simp
  | coprime a b ha hb hab hA hB =>
      rw [(isMultiplicative_coprimeRestrictedMobiusDivisorIndicator r).
        map_mul_of_coprime hab]
      rcases hA with hA | hA <;>
        rcases hB with hB | hB <;>
          simp [hA, hB]

/-- The restricted divisor indicator lies in `[0,1]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63da93bf88928ffc712002a77c1db9ba8ef7bd7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
