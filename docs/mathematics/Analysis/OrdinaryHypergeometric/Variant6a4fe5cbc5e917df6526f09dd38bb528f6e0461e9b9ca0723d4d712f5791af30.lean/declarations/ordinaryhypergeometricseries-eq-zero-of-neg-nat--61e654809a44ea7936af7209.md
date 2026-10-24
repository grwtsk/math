# ordinaryHypergeometricSeries_eq_zero_of_neg_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74aaf7ad-c6e6-0166-7eba-a2e15bd28bc4",
  "kind": "lemma",
  "lexical_name": "ordinaryHypergeometricSeries_eq_zero_of_neg_nat",
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
  "slug": "ordinaryhypergeometricseries-eq-zero-of-neg-nat--61e654809a44ea7936af7209",
  "source": {
    "blob": "511d7d51e3135a689a8530c3e616d4831a58361f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e654809a44ea7936af7209c164245afbdf95ef1d3999f4d871a088ce74acb4",
  "verification": {
    "reference": "docs/verification/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74aaf7ad-c6e6-0166-7eba-a2e15bd28bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ordinaryHypergeometricSeries_eq_zero_of_neg_nat {n k : ℕ} (habc : k = -a ∨ k = -b ∨ k = -c)
    (hk : k < n) : ordinaryHypergeometricSeries 𝔸 a b c n = 0 := by
  rw [ordinaryHypergeometricSeries, ofScalars]
  rcases habc with h | h | h
  all_goals
    ext
    simp [(ascPochhammer_eval_eq_zero_iff n _).2 ⟨k, hk, h⟩]

end Field

section RCLike

open Asymptotics Filter Real Set Nat

open scoped Topology

variable {𝕂 : Type*} (𝔸 : Type*) [RCLike 𝕂] [NormedDivisionRing 𝔸] [NormedAlgebra 𝕂 𝔸]
  (a b c : 𝕂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511d7d51e3135a689a8530c3e616d4831a58361f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
