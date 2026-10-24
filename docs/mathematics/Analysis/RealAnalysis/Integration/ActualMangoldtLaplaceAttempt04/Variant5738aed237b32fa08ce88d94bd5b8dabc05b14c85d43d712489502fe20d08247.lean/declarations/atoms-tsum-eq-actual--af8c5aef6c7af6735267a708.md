# atoms_tsum_eq_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76011957-c14e-a795-bbd3-c9e670758f23",
  "kind": "theorem",
  "lexical_name": "atoms_tsum_eq_actual",
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
  "slug": "atoms-tsum-eq-actual--af8c5aef6c7af6735267a708",
  "source": {
    "blob": "47245c9b88f638ae0cdeafc5a040645d74cefc4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8c5aef6c7af6735267a708cd3874e068f4920b6735f6e652f0adc28e163da1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76011957-c14e-a795-bbd3-c9e670758f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atoms_tsum_eq_actual (s t : ℝ) :
    (∑' n : ℕ, laplaceAtom s n t) = Real.exp (-s*t) * mangoldtLogPrefix t := by
  rw [tsum_eq_sum (s:=Finset.range (⌊Real.exp t⌋₊-1)) (atom_zero_outside s t),
    mangoldtLogPrefix_eq_sum,Finset.mul_sum]
  apply Finset.sum_bij (fun n _ => n+2)
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc]
    simp only [Finset.mem_range] at hn
    omega
  · intro n _ m _ he
    omega
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc] at hn
    refine ⟨n-2,?_,?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro n hn
    have hc : n+2 ≤ ⌊Real.exp t⌋₊ := by
      simp only [Finset.mem_range] at hn
      omega
    have ht := (onset_closed_iff n t).mpr hc
    rw [laplaceAtom,indicator_of_mem (show t ∈ Ici (Real.log ((n+2 : ℕ) : ℝ)) from ht)]
    unfold mangoldtWeight
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47245c9b88f638ae0cdeafc5a040645d74cefc4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
