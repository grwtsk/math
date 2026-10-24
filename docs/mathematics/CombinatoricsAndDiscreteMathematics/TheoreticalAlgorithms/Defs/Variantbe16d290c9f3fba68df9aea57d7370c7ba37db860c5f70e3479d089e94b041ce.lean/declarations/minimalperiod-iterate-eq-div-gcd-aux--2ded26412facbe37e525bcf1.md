# minimalPeriod_iterate_eq_div_gcd_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e615ac7-9135-770e-6314-3850c3349fcf",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_iterate_eq_div_gcd_aux",
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
  "slug": "minimalperiod-iterate-eq-div-gcd-aux--2ded26412facbe37e525bcf1",
  "source": {
    "blob": "1d6c062359427e1649f7f97f4dd9ad0aa0cedf4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbe16d290c9f3fba68df9aea57d7370c7ba37db860c5f70e3479d089e94b041ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ded26412facbe37e525bcf13d89676b57090181905f979c779948716ba85612",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbe16d290c9f3fba68df9aea57d7370c7ba37db860c5f70e3479d089e94b041ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e615ac7-9135-770e-6314-3850c3349fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minimalPeriod_iterate_eq_div_gcd_aux (h : 0 < gcd (minimalPeriod f x) n) :
    minimalPeriod f^[n] x = minimalPeriod f x / Nat.gcd (minimalPeriod f x) n := by
  apply Nat.dvd_antisymm
  · apply IsPeriodicPt.minimalPeriod_dvd
    rw [IsPeriodicPt, IsFixedPt, ← iterate_mul, ← Nat.mul_div_assoc _ (gcd_dvd_left _ _),
      mul_comm, Nat.mul_div_assoc _ (gcd_dvd_right _ _), mul_comm, iterate_mul]
    exact (isPeriodicPt_minimalPeriod f x).iterate _
  · apply Coprime.dvd_of_dvd_mul_right (coprime_div_gcd_div_gcd h)
    apply Nat.dvd_of_mul_dvd_mul_right h
    rw [Nat.div_mul_cancel (gcd_dvd_left _ _), mul_assoc, Nat.div_mul_cancel (gcd_dvd_right _ _),
      mul_comm]
    apply IsPeriodicPt.minimalPeriod_dvd
    rw [IsPeriodicPt, IsFixedPt, iterate_mul]
    exact isPeriodicPt_minimalPeriod _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbe16d290c9f3fba68df9aea57d7370c7ba37db860c5f70e3479d089e94b041ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbe16d290c9f3fba68df9aea57d7370c7ba37db860c5f70e3479d089e94b041ce.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6c062359427e1649f7f97f4dd9ad0aa0cedf4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
