# sourceReadout_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7559450a-e442-49c5-4497-8c3ee28c442f",
  "kind": "theorem",
  "lexical_name": "sourceReadout_window",
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
  "slug": "sourcereadout-window--a609a2b5819a0797c7f43b92",
  "source": {
    "blob": "d412f8794494be78d7155563dc84ade26664108e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a609a2b5819a0797c7f43b921082cb6aa0332640e4429a844d4a2b5827d7b8d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7559450a-e442-49c5-4497-8c3ee28c442f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceReadout_window (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = ∫ t in -(2 * A)..2 * A, density t * criticalPrimeTest A t := by
  have hp : 0 < A := by linarith
  have hs : Function.support (fun t => density t * criticalPrimeTest A t) ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro t ht
    by_contra h
    have hn : density t * criticalPrimeTest A t ≠ 0 := ht
    simp only [mem_Ioc, not_and_or, not_lt, not_le] at h
    rcases h with hlo | hhi
    · have ht0 : t ≤ onset := by linarith [onset_pos]
      rw [density_below ht0, zero_mul] at hn
      exact hn rfl
    · have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp
        ((le_of_lt hhi).trans (le_abs_self t))
      simp [criticalPrimeTest, hz] at hn
  rw [sourceReadout_density]
  exact (intervalIntegral.integral_eq_integral_of_support_subset hs).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d412f8794494be78d7155563dc84ade26664108e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
