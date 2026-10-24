# primeLogSum_hinge_common_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43d2bb92-fbeb-ea47-2ae9-20bea14bcb0d",
  "kind": "theorem",
  "lexical_name": "primeLogSum_hinge_common_inventory",
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
  "slug": "primelogsum-hinge-common-inventory--2f9072e13318e9ced761f9db",
  "source": {
    "blob": "1440a11478215f9ae4916e2ed91410d4791fd531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant06c626fa9dd7aba5eabd998ea4afdd754f52ae875fe25827ad86e15192726210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9072e13318e9ced761f9dbe838899461dcc0df70876dd303e207e50cc47ade",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant06c626fa9dd7aba5eabd998ea4afdd754f52ae875fe25827ad86e15192726210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43d2bb92-fbeb-ea47-2ae9-20bea14bcb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLogSum_hinge_common_inventory {L u : ℝ} (hu : 0 ≤ u) (huL : u ≤ L) :
    primeLogSum u (fun s => u - s) = primeLogSum L (fun s => max (u - s) 0) := by
  have hL : 0 ≤ L := hu.trans huL
  unfold primeLogSum
  rw [← primeLogInventory_filter_log L u huL, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p hp
  have hs := primeLogInventory_log_bounds L p hp
  by_cases hpu : Real.log (p : ℝ) ≤ u
  · simp only [hpu, if_true, max_eq_left (sub_nonneg.mpr hpu)]
  · have hup : u - Real.log (p : ℝ) ≤ 0 := by linarith
    simp only [hpu, if_false, max_eq_right hup, mul_zero]

/-- The literal actual bridge is the continuous density tent minus all closed prime tents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant06c626fa9dd7aba5eabd998ea4afdd754f52ae875fe25827ad86e15192726210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant06c626fa9dd7aba5eabd998ea4afdd754f52ae875fe25827ad86e15192726210.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1440a11478215f9ae4916e2ed91410d4791fd531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
