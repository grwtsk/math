# actualUnitTiltEnergy_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9846b95-724c-9c37-f4c3-4b592f984ab0",
  "kind": "theorem",
  "lexical_name": "actualUnitTiltEnergy_tendsto_atTop",
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
  "slug": "actualunittiltenergy-tendsto-attop--749a8a75027d0fcc9bc6310a",
  "source": {
    "blob": "bce06bf882645ff9e9a3607a32814da6a5fa2624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 125,
    "path": "GRWTSK/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:749a8a75027d0fcc9bc6310a98cbfe2a59eb1c19161d51833aaded7321cc569c",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9846b95-724c-9c37-f4c3-4b592f984ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTiltEnergy_tendsto_atTop :
    Tendsto actualUnitTiltEnergy atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    simpa only [Real.rpow_natCast] using
      Real.tendsto_exp_mul_div_rpow_atTop (10 : ℝ) 2 (by norm_num)
  have hh : Tendsto (fun A : ℝ => 20736 * Real.exp (2 * A) / A ^ 10)
      atTop atTop := by
    convert ht.const_mul_atTop (by norm_num : (0 : ℝ) < 20736) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualUnitTiltEnergy_eventually_ge hh

end FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce06bf882645ff9e9a3607a32814da6a5fa2624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
