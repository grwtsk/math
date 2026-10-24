# criticalMertensIncrementTerm_le_weightedSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f6573f5-3760-86df-89fc-958d0aad9979",
  "kind": "theorem",
  "lexical_name": "criticalMertensIncrementTerm_le_weightedSquare",
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
  "slug": "criticalmertensincrementterm-le-weightedsquare--46464a3b1317dd07350256c2",
  "source": {
    "blob": "ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46464a3b1317dd07350256c2889589b5c04bd3e3faccfb35b7ee690651f61b20",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6573f5-3760-86df-89fc-958d0aad9979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMertensIncrementTerm_le_weightedSquare (ε : ℝ) {n : ℕ}
    (hn : 1 ≤ n) :
    (pickupMertensPrefix n * criticalEndpointGap n) ^ 2 *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) ≤
      pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  rw [mul_pow]
  calc
    pickupMertensPrefix n ^ 2 * criticalEndpointGap n ^ 2 *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) ≤
      pickupMertensPrefix n ^ 2 *
          (1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2)) *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) := by
      gcongr
      exact criticalEndpointGap_sq_le_inv_mul_succ_sq hn
    _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by
      rw [show 1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) =
          (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) by
        rw [Real.rpow_neg hnpos.le, Real.rpow_neg hspos.le,
          Real.rpow_one]
        field_simp
        exact Real.rpow_natCast _ 2]
      calc
        pickupMertensPrefix n ^ 2 *
            ((n : ℝ) ^ (-(1 : ℝ)) *
              ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ))) *
            ((n + 1 : ℕ) : ℝ) ^ (1 - ε) =
          pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            (((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) *
              ((n + 1 : ℕ) : ℝ) ^ (1 - ε)) := by ring
        _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ ((-(2 : ℝ)) + (1 - ε)) := by
          rw [Real.rpow_add hspos]
        _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by ring_nf

/-- The explicit weighted Mertens-square premise pays the exact increment
mean square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
