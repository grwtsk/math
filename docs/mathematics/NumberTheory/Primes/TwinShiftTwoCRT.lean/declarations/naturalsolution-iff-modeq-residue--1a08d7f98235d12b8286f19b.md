# naturalSolution_iff_modEq_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:599798b8-0bd1-c01c-669c-2fbc8dcadecd",
  "kind": "theorem",
  "lexical_name": "naturalSolution_iff_modEq_residue",
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
  "slug": "naturalsolution-iff-modeq-residue--1a08d7f98235d12b8286f19b",
  "source": {
    "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 235,
    "path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a08d7f98235d12b8286f19be92c8b395134f7c7337d74be24964f2ad7e77c82",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:599798b8-0bd1-c01c-669c-2fbc8dcadecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalSolution_iff_modEq_residue
    {d e n : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    (d ∣ n ∧ e ∣ n + 2) ↔
      n ≡ twinShiftTwoResidue d e hd he hcompat
        [MOD Nat.lcm d e] := by
  let r := twinShiftTwoResidue d e hd he hcompat
  have hr : d ∣ r ∧ e ∣ r + 2 :=
    twinShiftTwoResidue_isSolution hd he hcompat
  constructor
  · intro hn
    exact naturalSolutions_modEq_lcm hn hr
  · intro hmod
    constructor
    · exact (hmod.dvd_iff (Nat.dvd_lcm_left d e)).2 hr.1
    · have hmod2 : n + 2 ≡ r + 2 [MOD Nat.lcm d e] :=
        hmod.add_right 2
      exact (hmod2.dvd_iff (Nat.dvd_lcm_right d e)).2 hr.2

/-- Number of exact shift-two divisor solutions in the inclusive interval
`0 ≤ n ≤ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
