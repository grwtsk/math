# atoms_tsum_eq_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c73938ec-a8fe-fc5b-5853-a2692e8d17bd",
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
  "slug": "atoms-tsum-eq-actual--e7a0e5f425cab3d0361707d1",
  "source": {
    "blob": "30d6b53b3195808e30643c8a038bb87a0bdcd5d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7a0e5f425cab3d0361707d1dcb602fdd9688388f9f188fbec2356523ea7434f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c73938ec-a8fe-fc5b-5853-a2692e8d17bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–133.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d6b53b3195808e30643c8a038bb87a0bdcd5d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
