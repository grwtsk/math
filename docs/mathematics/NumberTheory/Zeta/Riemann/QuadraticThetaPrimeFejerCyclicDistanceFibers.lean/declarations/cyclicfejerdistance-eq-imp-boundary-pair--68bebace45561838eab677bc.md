# cyclicFejerDistance_eq_imp_boundary_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7116ba01-f6b0-43f6-d9fd-597b7abb3951",
  "kind": "theorem",
  "lexical_name": "cyclicFejerDistance_eq_imp_boundary_pair",
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
  "slug": "cyclicfejerdistance-eq-imp-boundary-pair--68bebace45561838eab677bc",
  "source": {
    "blob": "6c76e95b9a57f6e3ea900caec5a8147a54d2311c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68bebace45561838eab677bc16bec1821d6ddc896381033282990042fe2b8391",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7116ba01-f6b0-43f6-d9fd-597b7abb3951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicFejerDistance_eq_imp_boundary_pair
    {X d : ℕ}
    (hX : 0 < X)
    (r : ZMod (fejerOctavePeriod X))
    (hd : cyclicFejerDistance X r = d) :
    r = (d : ZMod (fejerOctavePeriod X)) ∨
      r = (fejerOctavePeriod X - d :
        ZMod (fejerOctavePeriod X)) := by
  have hL : 0 < fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  haveI : NeZero (fejerOctavePeriod X) := ⟨Nat.ne_of_gt hL⟩
  unfold cyclicFejerDistance at hd
  by_cases hleft :
      r.val ≤ fejerOctavePeriod X - r.val
  · have hval : r.val = d := by
      rw [Nat.min_eq_left hleft] at hd
      exact hd
    left
    rw [← ZMod.natCast_zmod_val r, hval]
  · have hright :
        fejerOctavePeriod X - r.val ≤ r.val := Nat.le_of_not_ge hleft
    have hdist :
        fejerOctavePeriod X - r.val = d := by
      rw [Nat.min_eq_right hright] at hd
      exact hd
    have hval :
        r.val = fejerOctavePeriod X - d := by
      have hvle : r.val ≤ fejerOctavePeriod X := r.val_lt.le
      omega
    right
    rw [← ZMod.natCast_zmod_val r, hval]

/-- Finite fiber of residues at cyclic distance d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c76e95b9a57f6e3ea900caec5a8147a54d2311c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
